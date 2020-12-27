import 'package:fim/dao/new_friend_dao.dart';
import 'package:fim/model/new_friend.dart';
import 'package:flutter/cupertino.dart';

var newFriendService = NewFriendService();

class NewFriendService with ChangeNotifier {
  int unreadNum = 0;
  List<NewFriend> list;

  initUnread() async {
    print("initUnread");
    unreadNum = await NewFriendDao.getUnreadNum();
  }

  initNewFriendList() async {
    list = await NewFriendDao.list();
  }

  void add(NewFriend friend) {
    NewFriendDao.add(friend);
    unreadNum++;
    if (list != null) {
      list.insert(0, friend);
    }
    notifyListeners();
  }

  void read() async {
    NewFriendDao.read();
    unreadNum = 0;
    notifyListeners();
  }

  void updateStatus(int userId, int status) {
    NewFriendDao.updateStatus(userId, status);
    for (var item in list) {
      if (item.userId == userId) {
        item.status = status;
      }
    }
    notifyListeners();
  }
}
