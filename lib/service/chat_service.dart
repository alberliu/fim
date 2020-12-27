import 'package:fim/dao/message_dao.dart';
import 'package:fim/pb/conn.ext.pb.dart' as pb;
import 'package:fim/pb/conn.ext.pbenum.dart';
import 'package:fim/pb/push.ext.pb.dart';
import 'package:fim/pb/push.ext.pbenum.dart';
import 'package:fixnum/fixnum.dart';
import 'package:fim/model/message.dart';
import 'package:flutter/cupertino.dart';

class ChatData {
  String name;
  List<Message> messages;

  ChatData(this.name, this.messages);
}

var chatService = ChatService();

class ChatService with ChangeNotifier {
  Map<String, ChatData> map = Map();

  String key(int objectType, int objectId) {
    return "$objectType-$objectId";
  }

  init(int objectType, int objectId, String name) async {
    var messages = await MessageDao.list(
        objectType, objectId, Int64.MAX_VALUE.toInt(), 20);
    map[key(objectType, objectId)] = ChatData(name, messages);
  }

  destroy(int objectType, int objectId) {
    map.remove(key(objectType, objectId));
  }

  bool isOpen(int objectType, int objectId) {
    var chatData = map[key(objectType, objectId)];
    if (chatData == null) {
      return false;
    }
    return true;
  }

  ChatData getChatData(int objectType, int objectId) {
    return map[key(objectType, objectId)];
  }

  void onMessage(Message event) async {
    await MessageDao.add(event);

    var chatData = map[key(event.objectType, event.objectId)];
    if (chatData == null) return;

    if (event.messageType == MessageType.MT_TEXT.value ||
        event.messageType == MessageType.MT_IMAGE.value) {
      chatData.messages.insert(0, event);
      notifyListeners();
    }

    // 指令消息
    if (event.messageType == MessageType.MT_COMMAND.value) {
      var command = pb.Command.fromBuffer(event.messageContent);
      print("指令消息：${command.code}");
      // 群组信息更新
      if (command.code == PushCode.PC_UPDATE_GROUP.value) {
        var updateGroupPush = UpdateGroupPush.fromBuffer(command.data);
        chatData.name = updateGroupPush.name;
        chatData.messages.insert(0, event);
        notifyListeners();
      }
      if (command.code == PushCode.PC_ADD_GROUP_MEMBERS.value) {
        chatData.messages.insert(0, event);
        notifyListeners();
      }
    }
  }

  void loadMore(int objectType, int objectId) async {
    var chatData = map[key(objectType, objectId)];
    var messages = chatData.messages;
    var moreMessage =
        await MessageDao.list(objectType, objectId, messages.last.seq, 20);
    messages.addAll(moreMessage);
    notifyListeners();
  }

  void onChangeName(int objectType, int objectId, String name) {
    var chatData = map[key(objectType, objectId)];
    if (chatData == null) return;

    chatData.name = name;
    notifyListeners();
  }
}
