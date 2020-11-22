import 'dart:typed_data';

import 'package:fim/model/message.dart' as model;
import 'package:fim/pb/conn.ext.pb.dart';
import 'package:fixnum/fixnum.dart';
import 'package:intl/intl.dart';

class RecentContact {
  int objectType;
  int objectId;
  int lastTime;
  int lastUserId;
  String lastMessage;
  int unread;

  RecentContact();

  RecentContact.fromMessage(model.Message message) {
    objectType = message.objectType;
    objectId = message.objectId;
    lastTime = message.sendTime;
    lastUserId = message.senderId;
    lastMessage = formatMessage(message.messageType, message.messageContent);
    unread = 1;
  }

  static String formatMessage(int messageType, Uint8List messageContent) {
    if (messageType == MessageType.MT_TEXT.value) {
      var text = Text.fromBuffer(messageContent);
      return text.text;
    }
    if (messageType == MessageType.MT_IMAGE.value) {
      return "[图片]";
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
    lastTime = map["last_time"];
    lastUserId = map["last_user_id"];
    lastMessage = map["last_message"];
    unread = map["unread"];
  }

  Map<String, dynamic> toMap() {
    return {
      "object_type": objectType,
      "object_id": objectId,
      "last_time": lastTime,
      "last_user_id": lastUserId,
      "last_message": lastMessage,
      "unread": unread,
    };
  }
}
