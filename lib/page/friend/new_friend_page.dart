import 'dart:async';
import 'package:fim/dao/new_friend_dao.dart';
import 'package:fim/dao/recent_contact_dao.dart';
import 'package:fim/data/friends.dart';
import 'package:fim/data/preferences.dart';
import 'package:fim/data/stream.dart';
import 'package:fim/model/new_friend.dart';
import 'package:fim/model/recent_contact.dart';
import 'package:fim/net/api.dart';
import 'package:fim/pb/logic.ext.pb.dart';
import 'package:fim/theme/color.dart';
import 'package:fim/theme/size.dart';
import 'package:fim/util/toast.dart';
import 'package:fixnum/fixnum.dart';
import 'package:fim/model/message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'add_friend_page.dart';

class NewFriendPage extends StatefulWidget {
  @override
  _NewFriendPageState createState() => _NewFriendPageState();
}

class _NewFriendPageState extends State<NewFriendPage> {
  StreamSubscription subscription;
  List<NewFriend> friends = List();

  @override
  void initState() {
    super.initState();

    initData();
    initListener();
  }

  @override
  void dispose() {
    super.dispose();
    subscription.cancel();
  }

  initData() async {
    friends = await NewFriendDao.list();
    print(friends);
    setState(() {});
  }

  initListener() async {
    subscription = newFriendStream.listen((event) {
      friends.insert(0, event);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: appBarHeight,
        title: Text("新的朋友"),
        brightness: appBarBrightness,
      ),
      body: Container(
        child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              color: Colors.grey,
              height: 5,
            );
          },
          itemCount: friends.length,
          itemBuilder: (BuildContext context, int index) {
            Widget statusWidget;
            if (friends[index].status == NewFriend.unread ||
                friends[index].status == NewFriend.read) {
              statusWidget = Row(
                children: [
                  FlatButton(
                    minWidth: 20,
                    height: 25,
                    color: Colors.green,
                    highlightColor: Colors.blue[700],
                    child: Text("同意"),
                    onPressed: () {
                      handle(friends[index], NewFriend.agree);
                      friends[index].status = NewFriend.agree;
                      setState(() {});
                    },
                  ),
                  Container(
                    width: 20,
                  ),
                  FlatButton(
                    minWidth: 30,
                    height: 25,
                    color: Colors.green,
                    child: Text("拒绝"),
                    onPressed: () {
                      handle(friends[index], NewFriend.refuse);
                      friends[index].status = NewFriend.refuse;
                      setState(() {});
                    },
                  )
                ],
              );
            }
            if (friends[index].status == NewFriend.agree) {
              statusWidget = Text("已经同意");
            }
            if (friends[index].status == NewFriend.refuse) {
              statusWidget = Text("已经拒绝");
            }

            return ListTile(
              leading: Container(
                height: 50,
                width: 50,
                padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(friends[index].avatarUrl),
                ),
              ),
              title: Text("${friends[index].nickname}"),
              subtitle: Text("${friends[index].description}"),
              trailing: Container(
                height: 50,
                width: 150,
                alignment: Alignment.center,
                child: statusWidget,
              ),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => AddFriendPage()));
              },
            );
          },
        ),
      ),
    );
  }

  handle(NewFriend friend, int status) async {
    if (status == NewFriend.agree) {
      var request = AgreeAddFriendReq();
      request.userId = Int64(friend.userId);
      await logicClient.agreeAddFriend(request, options: getOptions());

      // 重新加载好友列表
      await Friends.init();

      var contact = RecentContact();
      contact.objectType = Message.objectTypeUser;
      contact.objectId = friend.userId;
      contact.name = friend.nickname;
      contact.avatarUrl = friend.avatarUrl;
      contact.lastMessage = "成功添加好友";
      contact.lastTime = Int64(DateTime.now().millisecondsSinceEpoch).toInt();
      contact.unread = 0;
      RecentContactDao.add(contact);
      contactController.add(contact);

      toast("已同意添加好友");
    }

    if (status == NewFriend.refuse) {
      toast("已拒绝添加好友");
    }

    NewFriendDao.updateStatus(friend.userId, status);
  }
}
