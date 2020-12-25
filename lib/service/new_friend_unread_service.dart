import 'package:fim/dao/new_friend_dao.dart';
import 'package:flutter/cupertino.dart';

var newFriendUnreadService = NewFriendUnreadService();

class NewFriendUnreadService with ChangeNotifier {
  int unreadNum = 0;

  init() async {
    unreadNum = await NewFriendDao.getUnreadNum();
  }

  void set(int unread) async {
    unreadNum = unread;
    notifyListeners();
  }

  void add() {
    unreadNum++;
    notifyListeners();
  }
}
