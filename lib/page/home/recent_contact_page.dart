import 'package:fim/service/recent_contact_service.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:fim/model/recent_contact.dart';
import 'package:fim/page/chat/chat_page.dart';
import 'package:fim/theme/color.dart';
import 'package:fim/widget/red_dot.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fixnum/fixnum.dart';

class RecentContactPage extends StatefulWidget {
  @override
  _RecentContactPageState createState() => _RecentContactPageState();
}

class _RecentContactPageState extends State<RecentContactPage> {
  @override
  Widget build(BuildContext context) {
    print("RecentContactPage build");
    return Container(
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: backgroundColor,
            indent: 65,
            height: 0,
            thickness: 2,
          );
        },
        itemCount: context.watch<RecentContactService>().contacts.length,
        itemBuilder: (BuildContext context, int index) {
          var contact = context.watch<RecentContactService>().contacts[index];
          return _ListItem(
            icon: contact.avatarUrl,
            name: contact.name,
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
                    name: contact.name,
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
        height: 60.0,
        child: Row(
          children: <Widget>[
            Container(
              width: 60,
              height: 60,
              padding: EdgeInsets.all(5),
              child: RedDot(
                num: widget.unread,
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Image.network(widget.icon),
                  ),
                ),
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
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 15.0,
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
                                fontSize: 12.0, color: Colors.black45),
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
