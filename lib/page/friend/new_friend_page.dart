import 'package:cached_network_image/cached_network_image.dart';
import 'package:fim/page/loading_page.dart';
import 'package:fim/service/friend_service.dart';
import 'package:fim/service/new_friend_service.dart';
import 'package:fim/service/preferences.dart';
import 'package:fim/service/recent_contact_service.dart';
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
import 'package:provider/provider.dart';

class NewFriendPage extends StatefulWidget {
  @override
  _NewFriendPageState createState() => _NewFriendPageState();
}

class _NewFriendPageState extends State<NewFriendPage> {
  Future future;

  @override
  void initState() {
    super.initState();
    read();
    future = newFriendService.initNewFriendList();
  }

  read() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      newFriendService.read();
    });
  }

  @override
  void dispose() {
    super.dispose();
    newFriendService.list = null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: appBarHeight,
        title: Text("新的朋友"),
        brightness: appBarBrightness,
      ),
      body: FutureBuilder(
        future: future,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Container(
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    color: Colors.grey,
                    height: 5,
                  );
                },
                itemCount: context.watch<NewFriendService>().list.length,
                itemBuilder: (BuildContext context, int index) {
                  Widget statusWidget;
                  var friend = context.watch<NewFriendService>().list[index];

                  if (friend.status == NewFriend.unread ||
                      friend.status == NewFriend.read) {
                    statusWidget = Row(
                      children: [
                        FlatButton(
                          minWidth: 20,
                          height: 25,
                          color: Colors.green,
                          highlightColor: Colors.blue[700],
                          child: Text("同意"),
                          onPressed: () {
                            handle(friend, NewFriend.agree);
                            friend.status = NewFriend.agree;
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
                            handle(friend, NewFriend.refuse);
                            friend.status = NewFriend.refuse;
                            setState(() {});
                          },
                        )
                      ],
                    );
                  }
                  if (friend.status == NewFriend.agree) {
                    statusWidget = Text("已经同意");
                  }
                  if (friend.status == NewFriend.refuse) {
                    statusWidget = Text("已经拒绝");
                  }

                  return ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      padding:
                          EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: CachedNetworkImage(imageUrl: friend.avatarUrl),
                      ),
                    ),
                    title: Text("${friend.nickname}"),
                    subtitle: Text("${friend.description}"),
                    trailing: Container(
                      height: 50,
                      width: 150,
                      alignment: Alignment.center,
                      child: statusWidget,
                    ),
                    onTap: () {},
                  );
                },
              ),
            );
          } else {
            return LoadingPage();
          }
        },
      ),
    );
  }

  handle(NewFriend friend, int status) async {
    if (status == NewFriend.agree) {
      var request = AgreeAddFriendReq();
      request.userId = Int64(friend.userId);
      await logicClient.agreeAddFriend(request);

      // 重新加载好友列表
      await friendService.init();

      var contact = RecentContact();
      contact.objectType = Message.objectTypeUser;
      contact.objectId = friend.userId;
      contact.name = friend.nickname;
      contact.avatarUrl = friend.avatarUrl;
      contact.lastMessage = "成功添加好友";
      contact.lastTime = Int64(DateTime.now().millisecondsSinceEpoch).toInt();
      contact.unread = 0;
      recentContactService.onMessage(contact);

      toast("已同意添加好友");
    }

    if (status == NewFriend.refuse) {
      toast("已拒绝添加好友");
    }

    newFriendService.updateStatus(friend.userId, status);
  }
}
