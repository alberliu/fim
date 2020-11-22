import 'dart:async';

import 'package:fim/dao/recent_contact_dao.dart';
import 'package:fim/data/friends.dart';
import 'package:fim/data/preferences.dart';
import 'package:fim/model/recent_contact.dart';
import 'package:fim/net/api.dart';
import 'package:fim/net/socket_manager.dart';
import 'package:fim/page/home/friend_page.dart';
import 'package:fim/pb/logic.ext.pb.dart';
import 'package:fim/util/toast.dart';
import 'package:fixnum/fixnum.dart';
import 'package:fim/dao/message_dao.dart';
import 'package:fim/model/message.dart';
import 'package:fim/pb/push.pb.dart';
import 'package:fim/pb/conn.ext.pb.dart' as pb;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'add_friend_page.dart';

class NewFriendPage extends StatefulWidget {
  @override
  _NewFriendPageState createState() => _NewFriendPageState();
}

class _NewFriendPageState extends State<NewFriendPage> {
  StreamSubscription subscription;
  List<NewFriend> newFriends = List();

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
    var messages = await MessageDao.list(Message.objectTypeSystem,
        PushCode.PC_ADD_FRIEND.value, double.maxFinite.toInt(), 50);

    for (var message in messages) {
      newFriends.add(NewFriend.formMessage(message));
    }
  }

  initListener() async {
    subscription = messageStream.listen((event) {
      if (event.objectType != Message.objectTypeAddFriend) {
        return;
      }

      var command = pb.Command.fromBuffer(event.messageContent);
      var addFriendPush = AddFriendPush.fromBuffer(command.data);

      setState(() {
        newFriends.insert(
            0,
            NewFriend(
              friendId: addFriendPush.friendId,
              nickname: addFriendPush.nickname,
              avatarUrl: addFriendPush.avatarUrl,
              description: addFriendPush.description,
              status: 0,
            ));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("新的朋友")),
      body: Container(
        child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              color: Colors.grey,
              height: 5,
            );
          },
          itemCount: newFriends.length,
          itemBuilder: (BuildContext context, int index) {
            Widget statusWidget;
            if (newFriends[index].status == 0) {
              statusWidget = Row(
                children: [
                  FlatButton(
                    minWidth: 20,
                    height: 25,
                    color: Colors.green,
                    highlightColor: Colors.blue[700],
                    child: Text("同意"),
                    onPressed: () {
                      handle(newFriends[index].friendId, 1);
                      newFriends[index].status = 1;
                      setState(() {
                      });
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
                      handle(newFriends[index].friendId, 2);
                      newFriends[index].status = 2;
                      setState(() {
                      });
                    },
                  )
                ],
              );
            }
            if (newFriends[index].status == 1) {
              statusWidget = Text("已经同意");
            }
            if (newFriends[index].status == 2) {
              statusWidget = Text("已经拒绝");
            }

            return ListTile(
              leading: Container(
                height: 50,
                width: 50,
                padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(newFriends[index].avatarUrl),
                ),
              ),
              title: Text("${newFriends[index].nickname}"),
              subtitle: Text("${newFriends[index].description}"),
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

  handle(Int64 friendId, int status) async {
    if (status == 1) {
      var request = AgreeAddFriendReq();
      request.userId = friendId;
      await logicClient.agreeAddFriend(request, options: getOptions());

      // 重新加载好友列表
      await Friends.init();

      var contact = RecentContact();
      contact.objectType = Message.objectTypeUser;
      contact.objectId = friendId.toInt();
      contact.lastMessage = "成功添加好友";
      contact.lastTime = Int64(DateTime.now().millisecondsSinceEpoch).toInt();
      contact.unread = 0;
      RecentContactDao.add(contact);
      contactController.add(contact);

      toast("已同意添加好友");
    }

    if (status == 2) {
      toast("已拒绝添加好友");
    }

    MessageDao.updateStatus(
        Message.objectTypeAddFriend, friendId.toInt(), status);
  }
}

class NewFriend {
  Int64 friendId;
  String nickname;
  String avatarUrl;
  String description;
  int status;

  NewFriend(
      {this.friendId,
      this.nickname,
      this.avatarUrl,
      this.description,
      this.status});

  NewFriend.formMessage(Message message) {
    var command = pb.Command.fromBuffer(message.messageContent);
    var addFriendPush = AddFriendPush.fromBuffer(command.data);

    friendId = addFriendPush.friendId;
    nickname = addFriendPush.nickname;
    avatarUrl = addFriendPush.avatarUrl;
    description = addFriendPush.description;
    status = message.status;
  }
}
