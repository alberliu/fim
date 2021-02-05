import 'package:cached_network_image/cached_network_image.dart';
import 'package:fim/pb/business.ext.pb.dart';
import 'package:fim/service/preferences.dart';
import 'package:fim/net/api.dart';
import 'package:fim/pb/logic.ext.pb.dart';
import 'package:fim/theme/color.dart';
import 'package:fim/theme/size.dart';
import 'package:fim/util/toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddFriendPage extends StatefulWidget {
  User user;

  AddFriendPage({Key key, this.user}) : super(key: key);

  @override
  _AddFriendPageState createState() => _AddFriendPageState();
}

class _AddFriendPageState extends State<AddFriendPage> {
  TextEditingController remarksController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: appBarHeight,
        title: Text("添加好友"),
        brightness: appBarBrightness,
      ),
      body: Container(
        color: backgroundColor,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              height: 120,
              padding: EdgeInsets.all(30.0),
              child: Center(
                child: Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                          imageUrl: this.widget.user.avatarUrl),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                              this.widget.user.nickname,
                              style: TextStyle(
                                fontSize: 25.0,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            child: Text(
                              "个性签名：交个朋友吧",
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 10),
              height: 50,
              color: Colors.white,
              child: TextField(
                //maxLength: 50,
                autofocus: true,
                decoration: InputDecoration(
                  hintText: "设置备注和标签",
                  prefixIcon: Icon(Icons.contacts),
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none,
                ),
                controller: remarksController,
              ),
            ),
            Container(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 10),
              height: 50,
              color: Colors.white,
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                  hintText: "描述",
                  prefixIcon: Icon(Icons.contacts),
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none,
                ),
                controller: descriptionController,
              ),
            ),
            Container(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                minWidth: 10000,
                color: Colors.green,
                child: Text("添加到通讯录"),
                onPressed: onPressed,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onPressed() async {
    var request = AddFriendReq();
    request.friendId = this.widget.user.userId;
    request.remarks = remarksController.text;
    request.description = descriptionController.text;
    await logicClient.addFriend(request);

    toast("请求已成功发送");
    Navigator.pop(context);
  }
}
