import 'package:fim/dao/new_friend_dao.dart';
import 'package:fim/model/new_friend.dart';
import 'package:fim/service/new_friend_unread_service.dart';
import 'package:flutter/cupertino.dart';

var newFriendService = NewFriendService();

class NewFriendService with ChangeNotifier {
  List<NewFriend> list;

  initNewFriendList() async {
    list = await NewFriendDao.list();
  }

  void add(NewFriend friend) {
    NewFriendDao.add(friend);
    if (list != null) {
      list.insert(0, friend);
      notifyListeners();
    }
    newFriendUnreadService.add();
  }

  void read() async {
    NewFriendDao.read();

    newFriendUnreadService.set(0);
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
