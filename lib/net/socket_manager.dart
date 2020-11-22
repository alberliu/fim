import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';
import 'package:fim/dao/message_dao.dart';
import 'package:fim/dao/recent_contact_dao.dart';
import 'package:fim/data/friends.dart';
import 'package:fim/data/preferences.dart';
import 'package:fim/model/recent_contact.dart';
import 'package:fim/notification/notification.dart';
import 'package:fim/pb/conn.ext.pb.dart' as pb;
import 'package:fim/model/message.dart' as model;
import 'package:fim/pb/push.pb.dart';
import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart';
import 'package:shared_preferences/shared_preferences.dart';

SocketManager socketManager;

StreamController<model.Message> messageController = StreamController();
Stream<model.Message> messageStream =
    messageController.stream.asBroadcastStream();

StreamController<RecentContact> contactController = StreamController();
Stream<RecentContact> contactStream =
    contactController.stream.asBroadcastStream();

StreamController<RecentContact> readController = StreamController();
Stream<RecentContact> readStream = readController.stream.asBroadcastStream();

class SocketManager {
  static const headerLen = 2;
  Socket socket;
  List<int> readBuffer = List<int>();

  void connect(String host, int port) async {
    try {
      await Socket.connect(host, port, timeout: Duration(seconds: 2)).then((s) {
        print("连接成功");

        socket = s;
        socket.listen(onData,
            onError: onError, onDone: doneHandler, cancelOnError: false);
      });
    } catch (e) {
      print("连接socket出现异常，e=${e.toString()}");
      throw e;
    }

    // 长连接登录
    var prefs = await SharedPreferences.getInstance();

    var input = pb.SignInInput();
    input.deviceId = Int64(prefs.getInt(deviceIdKey));
    input.userId = Int64(prefs.getInt(userIdKey));
    input.token = prefs.getString(tokenKey);

    var buffer = encode(pb.PackageType.PT_SIGN_IN, input);
    socket.add(buffer);
    await socket.flush();
    print("长连接登录");
  }

  void onData(Uint8List list) {
    print("onData");
    readBuffer.addAll(list);

    if (readBuffer.length < headerLen) {
      return;
    }

    int header1 = readBuffer[0];
    int header2 = readBuffer[1];
    readBuffer.removeRange(0, headerLen);
    int bodyLength = header1 * 256 + header2;

    var body = readBuffer.getRange(0, bodyLength).toList();
    readBuffer.removeRange(0, bodyLength);
    var output = pb.Output.fromBuffer(body);
    print(output);

    switch (output.type) {
      case pb.PackageType.PT_SIGN_IN:
        if (output.code != 0) {
          print("signIn error code:${output.code};message:${output.message}");
          return;
        }
        print("登录成功");
        // 触发消息同步
        var input = pb.SyncInput();
        input.seq = getMaxSYN();
        print("触发消息同步，seq:${input.seq}");
        socket.add(encode(pb.PackageType.PT_SYNC, input));
        socket.flush();

        // 触发定时心跳
        Timer.periodic(Duration(minutes: 4, seconds: 50), (timer) {
          print("heartbeat input");
          socket.add(encode(pb.PackageType.PT_HEARTBEAT, null));
          socket.flush();
        });
        break;
      case pb.PackageType.PT_SYNC:
        print("sync");
        var syncOutput = pb.SyncOutput.fromBuffer(output.data);
        if (syncOutput.messages.length <= 0) {
          return;
        }
        var maxSYN = syncOutput.messages.last.seq;
        messageACK(output.requestId, maxSYN);

        for (var message in syncOutput.messages) {
          handleMessage(message);
        }
        if (syncOutput.hasMore == true) {
          var input = pb.SyncInput();
          input.seq = syncOutput.messages.last.seq;
          socket.add(encode(pb.PackageType.PT_SYNC, input));
          socket.flush();
        }
        break;
      case pb.PackageType.PT_HEARTBEAT:
        print("heartbeat output");
        break;
      case pb.PackageType.PT_MESSAGE:
        print("message");
        var messageSend = pb.MessageSend.fromBuffer(output.data);
        messageACK(output.requestId, messageSend.message.seq);

        handleMessage(messageSend.message);
        break;
    }
  }

  void onError(error, StackTrace trace) {
    socket.close();
    print("捕获socket异常信息：error=$error，trace=${trace.toString()}");
  }

  void doneHandler() {
    socket.destroy();
    print("socket关闭处理");
  }

  handleMessage(pb.Message message) async {
    print("handleMessage");
    var messageModel = model.Message.fromPB(message, getUserId());
    print(messageModel.toMap());

    // 好友消息
    if (messageModel.objectType == model.Message.objectTypeUser) {
      // 保存到消息库
      MessageDao.add(messageModel);
      // 广播消息
      messageController.add(messageModel);
      // 保存到最近联系人
      var contact = RecentContact.fromMessage(messageModel);
      RecentContactDao.add(contact);
      contactController.add(contact);
      var friend = Friends.get(Int64(contact.objectId));
      showNotifications(friend.nickname, contact.lastMessage);
      return;
    }

    if (messageModel.objectType == model.Message.objectTypeAddFriend) {
      // 保存到消息库
      MessageDao.add(messageModel);
      // 广播消息
      messageController.add(messageModel);
      return;
    }

    if (messageModel.objectType == model.Message.objectTypeAgreeAddFriend) {
      // 重新加载好友列表
      await Friends.init();
      var contact = RecentContact();
      contact.objectType = model.Message.objectTypeUser;
      var command = pb.Command.fromBuffer(messageModel.messageContent);
      var agreeAddFriendPush = AgreeAddFriendPush.fromBuffer(command.data);

      contact.objectId = agreeAddFriendPush.friendId.toInt();
      contact.lastMessage = "成功添加好友";
      contact.lastTime = Int64(DateTime.now().millisecondsSinceEpoch).toInt();
      contact.unread = 0;
      RecentContactDao.add(contact);
      contactController.add(contact);
      return;
    }
  }

  Uint8List encode(pb.PackageType type, GeneratedMessage message,
      [Int64 requestId]) {
    // 构建输入流
    var input = pb.Input();
    input.type = type;
    if (requestId == null) {
      input.requestId = Int64(DateTime.now().microsecondsSinceEpoch);
    }
    if (message != null) {
      input.data = message.writeToBuffer();
    }

    var buffer = input.writeToBuffer();
    var length = buffer.length;

    var writeBuffer = List<int>();

    writeBuffer.add(length ~/ 256);
    writeBuffer.add(length % 256);
    writeBuffer.addAll(buffer);

    return Uint8List.fromList(writeBuffer);
  }

  void messageACK(Int64 requestId, Int64 seq) {
    var ack = pb.MessageACK();
    ack.deviceAck = seq;
    ack.receiveTime = Int64(DateTime.now().millisecondsSinceEpoch);
    socket.add(encode(pb.PackageType.PT_MESSAGE, ack, requestId));
  }
}
