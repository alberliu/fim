import 'dart:async';
import 'package:fim/dao/recent_contact_dao.dart';
import 'package:fim/data/friends.dart';
import 'package:fim/model/recent_contact.dart';
import 'package:fim/net/socket_manager.dart';
import 'package:fim/page/chat/chat_page.dart';
import 'package:fim/pb/conn.ext.pb.dart' as pb;
import 'package:fim/theme/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fixnum/fixnum.dart';

class RecentContactPage extends StatefulWidget {
  @override
  _RecentContactPageState createState() => _RecentContactPageState();
}

class _RecentContactPageState extends State<RecentContactPage> {
  List<RecentContact> contacts = List();
  StreamSubscription contactSubscription;
  StreamSubscription readSubscription;

  @override
  void initState() {
    super.initState();
    initData();
  }

  initData() async {
    // 从本地数据库读取
    var list = await RecentContactDao.list();
    contacts.addAll(list);
    setState(() {});

    // 监听网络事件
    contactSubscription = contactStream.listen(
      (event) {
        bool has = false;
        for (var contact in contacts) {
          if (contact.objectType == event.objectType &&
              contact.objectId == event.objectId) {
            contact.lastTime = event.lastTime;
            contact.lastUserId = event.lastUserId;
            contact.lastMessage = event.lastMessage;
            contact.unread = contact.unread + event.unread;
            contacts.sort((left, right) => right.lastTime - left.lastTime);
            has = true;
            break;
          }
        }
        if (!has) {
          contacts.insert(0, event);
        }
        setState(() {});
      },
    );

    // 监听网络事件
    readSubscription = readStream.listen(
      (event) {
        print("read_event$event");
        bool has = false;
        for (var contact in contacts) {
          if (contact.objectType == event.objectType &&
              contact.objectId == event.objectId) {
            setState(() {
              contact.unread = 0;
            });
            break;
          }
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    contactSubscription.cancel();
    readSubscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    print("RecentContactPage build");
    return Container(
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: backgroundColor,
            indent: 75,
            height: 0,
            thickness: 1,
          );
        },
        itemCount: contacts.length,
        itemBuilder: (BuildContext context, int index) {
          var contact = contacts[index];
          var friend = Friends.get(Int64(contact.objectId));
          print(friend);
          return _ListItem(
            icon: friend.avatarUrl,
            name: friend.nickname,
            message: contact.lastMessage,
            time: RecentContact.formatTime(contact.lastTime),
            unread: contact.unread,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatPage(
                    objectType: Int64(contact.objectType),
                    objectId: Int64(contact.objectId),
                    friendNickname: friend.nickname,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class _ListItem extends StatefulWidget {
  String icon;
  String name;
  String message;
  String time;
  int unread;

  void Function() onTap;

  _ListItem(
      {Key key,
      this.icon,
      this.name,
      this.time,
      this.message,
      this.unread,
      this.onTap})
      : super(key: key);

  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<_ListItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: EdgeInsets.only(left: 5),
        height: 70.0,
        child: Row(
          children: <Widget>[
            Container(
              width: 70,
              height: 70,
              child: Stack(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    padding: EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(widget.icon),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 5,
                    child: widget.unread == 0
                        ? Container()
                        : ConstrainedBox(
                            constraints:
                                BoxConstraints(minWidth: 20, minHeight: 20),
                            child: Container(
                              padding: EdgeInsets.only(left: 5, right: 5),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                widget.unread.toString(),
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(right: 15, top: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        children: <Widget>[
                          Text(
                            widget.name,
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                          Container(
                            height: 5,
                          ),
                          Text(
                            widget.message,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 15.0, color: Colors.black45),
                          )
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      width: 80,
                      child: Text(
                        widget.time,
                        style: TextStyle(fontSize: 15.0, color: Colors.black45),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: widget.onTap,
    );
  }
}
