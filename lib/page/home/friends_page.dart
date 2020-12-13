import 'dart:async';
import 'package:fim/data/friends.dart';
import 'package:fim/data/stream.dart';
import 'package:fim/model/message.dart';
import 'package:fim/page/group/groups_page.dart';
import 'package:fim/pb/logic.ext.pb.dart';
import 'package:fim/page/chat/chat_page.dart';
import 'package:fim/page/loading_page.dart';
import 'package:fim/theme/color.dart';
import 'package:fim/widget/list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fixnum/fixnum.dart';
import '../friend/new_friend_page.dart';

class FriendsPage extends StatefulWidget {
  @override
  _FriendsPageState createState() {
    print("friend_page createState");
    return _FriendsPageState();
  }
}

class _FriendsPageState extends State<FriendsPage> {
  bool loading = true;
  List<Friend> friends = [];
  StreamSubscription friendsChangeSubscription;

  @override
  void initState() {
    super.initState();
    print("friend_page initState");
    loadData();

    friendsChangeSubscription = friendsChangeStream.listen(
      (event) {
        setState(() {});
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    friendsChangeSubscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    print("friend_page build");
    if (loading) {
      return LoadingPage();
    }
    return Container(
      child: Column(
        children: [
          ListItem(
            icon: Image.asset("assets/friend.png"),
            name: "新的朋友",
            onTab: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewFriendPage(),
                ),
              );
            },
          ),
          Divider(
            color: backgroundColor,
            indent: 65,
            height: 0,
            thickness: 2,
          ),
          ListItem(
            icon: Image.asset("assets/group.png"),
            name: "群聊",
            onTab: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GroupsPage()),
              );
            },
          ),
          Container(
            color: backgroundColor,
            height: 10,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  color: backgroundColor,
                  indent: 65,
                  height: 0,
                  thickness: 1,
                );
              },
              addAutomaticKeepAlives: true,
              itemCount: friends.length,
              itemBuilder: (BuildContext context, int index) => ListItem(
                icon: Image.network(friends[index].avatarUrl),
                name: friends[index].remarks != ""
                    ? friends[index].remarks
                    : friends[index].nickname,
                onTab: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatPage(
                        objectType: Int64(Message.objectTypeUser),
                        objectId: friends[index].userId,
                        name: friends[index].remarks != ""
                            ? friends[index].remarks
                            : friends[index].nickname,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void loadData() {
    friends = Friends.friendList;
    setState(() {
      loading = false;
    });
  }
}
