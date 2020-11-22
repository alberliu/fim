import 'dart:typed_data';
import 'package:fim/data/friends.dart';
import 'package:fim/pb/conn.ext.pb.dart' as pb;
import 'package:fim/pb/push.pb.dart';
import 'package:fixnum/fixnum.dart';

class Message {
  static const int objectTypeUser = 1; // 用户
  static const int objectTypeGroup = 2; // 群组
  static const int objectTypeSystem = 3; // 系统
  static const int objectTypeAddFriend = 4; // 添加好友
  static const int objectTypeAgreeAddFriend = 5; // 同意添加好友

  int objectType;
  int objectId;
  int senderId;
  String toUserIds;
  int messageType;
  Uint8List messageContent;
  int seq;
  int sendTime;
  int status;

  Message();

  Message.fromPB(pb.Message message, Int64 userId) {
    var sender = message.sender;

    // 表示是好友发送给自己的消息
    if (sender.senderType == pb.SenderType.ST_USER &&
        sender.senderId != userId &&
        message.receiverType == pb.ReceiverType.RT_USER) {
      objectType = Message.objectTypeUser;
      objectId = sender.senderId.toInt();
      senderId = sender.senderId.toInt();

      //toUserIds = message.toUserIds;  todo 初始化@
      messageType = message.messageType.value;
      messageContent = message.messageContent;
      seq = message.seq.toInt();
      sendTime = message.sendTime.toInt();
      status = message.status.value;
      return;
    }
    // 表示是自己发送给好友的消息
    if (sender.senderType == pb.SenderType.ST_USER &&
        sender.senderId == userId &&
        message.receiverType == pb.ReceiverType.RT_USER) {
      objectType = Message.objectTypeUser;
      objectId = message.receiverId.toInt();
      senderId = userId.toInt();

      //toUserIds = message.toUserIds;  todo 初始化@
      messageType = message.messageType.value;
      messageContent = message.messageContent;
      seq = message.seq.toInt();
      sendTime = message.sendTime.toInt();
      status = message.status.value;
      return;
    }

    // 表示是群组发送过来的消息
    if (sender.senderType == pb.SenderType.ST_USER &&
        sender.senderId != userId &&
        (message.receiverType == pb.ReceiverType.RT_NORMAL_GROUP)) {
      objectType = Message.objectTypeUser;
      objectId = message.receiverId.toInt();
      senderId = sender.senderId.toInt();

      //toUserIds = message.toUserIds;  todo 初始化@
      messageType = message.messageType.value;
      messageContent = message.messageContent;
      seq = message.seq.toInt();
      sendTime = message.sendTime.toInt();
      status = message.status.value;
      return;
    }
    // 表示是自己发送给群组的消息
    if (sender.senderType == pb.SenderType.ST_USER &&
        sender.senderId == userId &&
        message.receiverType == pb.ReceiverType.RT_USER) {
      objectType = Message.objectTypeUser;
      objectId = message.receiverId.toInt();
      senderId = userId.toInt();

      //toUserIds = message.toUserIds;  todo 初始化@
      messageType = message.messageType.value;
      messageContent = message.messageContent;
      seq = message.seq.toInt();
      sendTime = message.sendTime.toInt();
      status = message.status.value;
      return;
    }

    // 处理系统消息
    if (sender.senderType == pb.SenderType.ST_SYSTEM) {
      var command = pb.Command.fromBuffer(message.messageContent);
      print(command);
      if (command.code == PushCode.PC_ADD_FRIEND.value) {
        objectType = objectTypeAddFriend;

        var addFriendPush = AddFriendPush.fromBuffer(command.data);
        objectId = addFriendPush.friendId.toInt();

        messageType = message.messageType.value;
        messageContent = message.messageContent;
        seq = message.seq.toInt();
        sendTime = message.sendTime.toInt();
        status = message.status.value;
        return;
      }
      if (command.code == PushCode.PC_AGREE_ADD_FRIEND.value) {
        objectType = objectTypeAgreeAddFriend;
        messageType = message.messageType.value;
        messageContent = message.messageContent;
        seq = message.seq.toInt();
        sendTime = message.sendTime.toInt();
        status = message.status.value;
        return;
      }
    }
  }

  Message.fromMap(Map<String, dynamic> map) {
    objectType = map["object_type"];
    objectId = map["object_id"];
    senderId = map["sender_id"];
    toUserIds = map["to_user_ids"];
    messageType = map["message_type"];
    messageContent = map["message_content"];
    seq = map["seq"];
    sendTime = map["send_time"];
    status = map["status"];
  }

  Map<String, dynamic> toMap() {
    return {
      "object_type": objectType,
      "object_id": objectId,
      "sender_id": senderId,
      "to_user_ids": toUserIds,
      "message_type": messageType,
      "message_content": messageContent,
      "seq": seq,
      "send_time": sendTime,
      "status": status,
    };
  }
}
