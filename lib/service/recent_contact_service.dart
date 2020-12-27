import 'package:fim/dao/recent_contact_dao.dart';
import 'package:fim/model/recent_contact.dart';
import 'package:flutter/cupertino.dart';

var recentContactService = RecentContactService();

class RecentContactService with ChangeNotifier {
  List<RecentContact> contacts;
  int unReadNum;

  init() async {
    print("recentContactService init");
    contacts = await RecentContactDao.list();
    unReadNum = getUnreadNum();
  }

  int getUnreadNum() {
    var num = 0;
    for (var contact in contacts) {
      num += contact.unread;
    }
    return num;
  }

  void onMessage(RecentContact event) async {
    await RecentContactDao.add(event);
    bool has = false;
    for (var contact in contacts) {
      if (contact.objectType == event.objectType &&
          contact.objectId == event.objectId) {
        print("contact_event_update ${event.unread}");
        contact.name = event.name;
        contact.avatarUrl = event.avatarUrl;
        contact.lastTime = event.lastTime;
        contact.lastMessage = event.lastMessage;
        contact.unread = contact.unread + event.unread;
        contacts.sort((left, right) => right.lastTime - left.lastTime);
        has = true;
        break;
      }
    }
    if (!has) {
      print("contact_event_insert");
      contacts.insert(0, event);
    }
    unReadNum = getUnreadNum();
    notifyListeners();
  }

  void readMessage(int objectType, int objectId) async {
    await RecentContactDao.updateRead(objectType, objectId);
    for (var contact in contacts) {
      if (contact.objectType == objectType && contact.objectId == objectId) {
        contact.unread = 0;
        break;
      }
    }
    unReadNum = getUnreadNum();
    notifyListeners();
  }

  void updateInfo(
      int objectType, int objectId, String name, String avatarUrl) async {
    await RecentContactDao.updateInfo(objectType, objectId, name, avatarUrl);

    for (var contact in contacts) {
      if (contact.objectType == objectType && contact.objectId == objectId) {
        contact.name = name;
        contact.avatarUrl = avatarUrl;
        break;
      }
    }
    notifyListeners();
  }
}
