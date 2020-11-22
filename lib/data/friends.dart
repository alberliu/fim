import 'package:fim/data/preferences.dart';
import 'package:fim/net/api.dart';
import 'package:fim/pb/logic.ext.pb.dart';
import 'package:fixnum/fixnum.dart';

class Friends {
  static List<Friend> friendList;
  static Map<Int64, Friend> friendMap;

  static init() async {
    var response =
        await logicClient.getFriends(GetFriendsReq(), options: getOptions());

    friendList = response.friends;

    friendMap = Map();
    for (var friend in friendList) {
      friendMap[friend.userId] = friend;
    }
  }

  static Friend get(Int64 friendId) {
    return friendMap[friendId];
  }
}
