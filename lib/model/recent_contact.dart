import 'package:fim/service/chat_service.dart';
import 'package:fim/service/friend_service.dart';
import 'package:fim/service/groups.dart';
import 'package:fim/model/message.dart' as model;
import 'package:fim/pb/conn.ext.pb.dart';
import 'package:intl/intl.dart';
import 'package:fixnum/fixnum.dart';

class RecentContact {
  int objectType;
  int objectId;
  String name;
  String avatarUrl;
  int lastTime;
  String lastMessage;
  int unread;

  RecentContact();

  RecentContact.copy(RecentContact contact) {
    objectType = contact.objectType;
    objectId = contact.objectId;
    name = contact.name;
    avatarUrl = contact.avatarUrl;
    lastTime = contact.lastTime;
    lastMessage = contact.lastMessage;
    unread = contact.unread;
  }

  static Future<RecentContact> build(model.Message message) async {
    var contact = RecentContact();

    contact.objectType = message.objectType;
    contact.objectId = message.objectId;
    contact.lastTime = message.sendTime;
    contact.lastMessage = getLastMessage(message);

    // 判断聊天窗口是否打开
    if (chatService.isOpen(contact.objectType, contact.objectId)) {
      contact.unread = 0;
    } else {
      contact.unread = 1;
    }

    // 判断是否是用户消息
    if (message.objectType == model.Message.objectTypeUser) {
      var friend = friendService.get(Int64(message.objectId));
      contact.name = friend.remarks != "" ? friend.remarks : friend.nickname;
      contact.avatarUrl = friend.avatarUrl;
    }
    // 判断是否是群组消息
    if (message.objectType == model.Message.objectTypeGroup) {
      var group = await Groups.get(Int64(message.objectId));
      contact.name = group.name;
      contact.avatarUrl = group.avatarUrl;
    }
    return contact;
  }

  static String getLastMessage(model.Message message) {
    if (message.messageType == MessageType.MT_TEXT.value) {
      var text = Text.fromBuffer(message.messageContent);
      if (message.objectType == model.Message.objectTypeUser) {
        return text.text;
      }
      if (message.objectType == model.Message.objectTypeGroup) {
        return "${message.senderNickname}：${text.text}";
      }
    }
    if (message.messageType == MessageType.MT_IMAGE.value) {
      if (message.objectType == model.Message.objectTypeUser) {
        return "[图片]";
      }
      if (message.objectType == model.Message.objectTypeGroup) {
        return "${message.senderNickname}：[图片]";
      }
    }
    if (message.messageType == MessageType.MT_COMMAND.value) {
      return message.getCommandText();
    }
    return "";
  }

  static String formatTime(int timestamp) {
    var now = DateTime.now();
    var dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp);

    if (now.day == dateTime.day) {
      return DateFormat("HH:mm:ss").format(dateTime);
    }
    if (now.day == dateTime.day + 1) {
      return "昨天";
    }
    return DateFormat("yyyy-MM-dd").format(dateTime);
  }

  RecentContact.fromMap(Map<String, dynamic> map) {
    objectType = map["object_type"];
    objectId = map["object_id"];
    name = map["name"];
    avatarUrl = map["avatar_url"];
    lastTime = map["last_time"];
    lastMessage = map["last_message"];
    unread = map["unread"];
  }

  Map<String, dynamic> toMap() {
    return {
      "object_type": objectType,
      "object_id": objectId,
      "name": name,
      "avatar_url": avatarUrl,
      "last_time": lastTime,
      "last_message": lastMessage,
      "unread": unread,
    };
  }
}
