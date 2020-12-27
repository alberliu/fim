import 'package:cached_network_image/cached_network_image.dart';
import 'package:fim/service/friend_service.dart';
import 'package:fim/model/message.dart';
import 'package:fim/page/group/groups_page.dart';
import 'package:fim/page/chat/chat_page.dart';
import 'package:fim/service/new_friend_service.dart';
import 'package:fim/theme/color.dart';
import 'package:fim/widget/list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fixnum/fixnum.dart';
import '../friend/new_friend_page.dart';
import 'package:provider/provider.dart';

class FriendsPage extends StatefulWidget {
  @override
  _FriendsPageState createState() {
    print("friend_page createState");
    return _FriendsPageState();
  }
}

class _FriendsPageState extends State<FriendsPage> {
  @override
  void initState() {
    super.initState();
    print("friend_page initState");
  }

  @override
  Widget build(BuildContext context) {
    print("friend_page build");
    return Container(
      child: Column(
        children: [
          ListItem(
            icon: Image.asset("assets/friend.png"),
            name: "新的朋友",
            num: context.watch<NewFriendService>().unreadNum,
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
              itemCount: context.watch<FriendService>().friendList.length,
              itemBuilder: (BuildContext context, int index) {
                var friend = context.watch<FriendService>().friendList[index];
                return ListItem(
                  icon: CachedNetworkImage(imageUrl:friend.avatarUrl),
                  name: friend.remarks != "" ? friend.remarks : friend.nickname,
                  onTab: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatPage(
                          objectType: Int64(Message.objectTypeUser),
                          objectId: friend.userId,
                          name: friend.remarks != ""
                              ? friend.remarks
                              : friend.nickname,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
