import 'package:fim/data/friends.dart';
import 'package:fim/model/message.dart';
import 'package:fim/page/add_friend_page.dart';
import 'package:fim/pb/logic.ext.pb.dart';
import 'package:fim/page/chat/chat_page.dart';
import 'package:fim/page/loading_page.dart';
import 'package:fim/theme/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fixnum/fixnum.dart';
import '../new_friend_page.dart';

const url =
    "https://tse3-mm.cn.bing.net/th/id/OIP.Gn3Tgr-TyASU8Zg0qMGj_QAAAA?w=136&h=150&c=7&o=5&dpr=2&pid=1.7";

class FriendPage extends StatefulWidget {
  @override
  _FriendPageState createState() {
    print("friend_page createState");
    return _FriendPageState();
  }
}

class _FriendPageState extends State<FriendPage> {
  bool loading = true;
  List<Friend> friends = [];

  @override
  void initState() {
    super.initState();
    print("friend_page initState");
    loadData();
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
          _ListItem(
            icon: url,
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
            indent: 75,
            height: 0,
            thickness: 1,
          ),
          _ListItem(
            icon: url,
            name: "群聊",
            onTab: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddFriendPage()),
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
                  indent: 75,
                  height: 0,
                  thickness: 1,
                );
              },
              addAutomaticKeepAlives: true,
              itemCount: friends.length,
              itemBuilder: (BuildContext context, int index) => _ListItem(
                icon: friends[index].avatarUrl,
                name: friends[index].nickname,
                onTab: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatPage(
                        objectType: Int64(Message.objectTypeUser),
                        objectId: friends[index].userId,
                        friendNickname: friends[index].nickname,
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

class _ListItem extends StatefulWidget {
  String icon;
  String name;
  void Function() onTab;

  _ListItem({Key key, this.icon, this.name, this.onTab}) : super(key: key);

  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<_ListItem> {
  Color color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(left: 15),
        color: color,
        height: 50.0,
        child: Row(
          children: <Widget>[
            Container(
              height: 50,
              width: 50,
              padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
              margin: EdgeInsets.only(right: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(widget.icon),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.name,
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: widget.onTab,
      onTapDown: onTapDown,
      onTapUp: onTapUp,
    );
  }

  onTapDown(TapDownDetails details) {
    setState(() {
      color = Colors.grey;
    });
    print("onTapDown");
  }

  onTapUp(TapUpDetails details) {
    setState(() {
      color = Colors.white;
    });
    print("onTapCancel");
  }
}
