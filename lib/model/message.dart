import 'dart:typed_data';
import 'package:fim/pb/conn.ext.pb.dart' as pb;
import 'package:fim/pb/push.ext.pb.dart';
import 'package:fixnum/fixnum.dart';

class Message {
  static const int objectTypeUser = 1; // 用户
  static const int objectTypeGroup = 2; // 群组
  static const int objectTypeSystem = 3; // 系统

  int objectType;
  int objectId;
  int senderId;
  String senderNickname;
  String senderAvatarUrl;
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
      senderNickname = sender.nickname;
      senderAvatarUrl = sender.avatarUrl;

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
      senderNickname = sender.nickname;
      senderAvatarUrl = sender.avatarUrl;

      //toUserIds = message.toUserIds;  todo 初始化@
      messageType = message.messageType.value;
      messageContent = message.messageContent;
      seq = message.seq.toInt();
      sendTime = message.sendTime.toInt();
      status = message.status.value;
      return;
    }

    // 表示是群组发送过来的消息
    if (message.receiverType == pb.ReceiverType.RT_SMALL_GROUP) {
      objectType = Message.objectTypeGroup;
      objectId = message.receiverId.toInt();
      senderId = sender.senderId.toInt();
      senderNickname = sender.nickname;
      senderAvatarUrl = sender.avatarUrl;

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
      objectType = objectTypeSystem;
      objectId = command.code;
      messageType = message.messageType.value;
      messageContent = message.messageContent;
      seq = message.seq.toInt();
      sendTime = message.sendTime.toInt();
      status = message.status.value;
    }
  }

  String getCommandText() {
    String text = "";
    var command = pb.Command.fromBuffer(messageContent);
    if (command.code == PushCode.PC_UPDATE_GROUP.value) {
      var push = UpdateGroupPush.fromBuffer(command.data);
      text = "${push.optName} 修改了群组信息";
    }
    if (command.code == PushCode.PC_ADD_GROUP_MEMBERS.value) {
      var push = AddGroupMembersPush.fromBuffer(command.data);
      String names = "";
      for (var i = 0; i < push.members.length; i++) {
        if (i != push.members.length - 1) {
          names = names + push.members[i].nickname + "、";
        } else {
          names = names + push.members[i].nickname;
        }
      }
      text = "${push.optName} 邀请 $names 加入了群聊";
    }
    return text;
  }

  Message.fromMap(Map<String, dynamic> map) {
    objectType = map["object_type"];
    objectId = map["object_id"];
    senderId = map["sender_id"];
    senderNickname = map["sender_nickname"];
    senderAvatarUrl = map["sender_avatar_url"];
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
      "sender_nickname": senderNickname,
      "sender_avatar_url": senderAvatarUrl,
      "to_user_ids": toUserIds,
      "message_type": messageType,
      "message_content": messageContent,
      "seq": seq,
      "send_time": sendTime,
      "status": status,
    };
  }
}
