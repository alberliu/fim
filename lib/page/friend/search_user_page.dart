import 'package:fim/data/preferences.dart';
import 'package:fim/net/api.dart';
import 'package:fim/page/friend/add_friend_page.dart';
import 'package:fim/pb/user.ext.pb.dart';
import 'package:fim/theme/color.dart';
import 'package:fim/theme/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchUserPage extends StatefulWidget {
  @override
  _SearchUserPageState createState() => _SearchUserPageState();
}

class _SearchUserPageState extends State<SearchUserPage> {
  List<User> users = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: appBarHeight,
        title: Text("添加好友"),
        brightness: appBarBrightness,
      ),
      body: Column(
        children: [
          Container(
            color: backgroundColor,
            height: 60,
            padding: EdgeInsets.only(left: 10, right: 10),
            alignment: Alignment.center,
            child: TextField(
              //maxLength: 50,
              autofocus: true,
              decoration: InputDecoration(
                hintText: "请输入手机号或用户昵称",
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: InputBorder.none,
              ),
              //内容提交(按回车)的回调
              onSubmitted: (text) async {
                var request = SearchUserReq();
                request.key = text;
                var response =
                    await userClient.searchUser(request, options: getOptions());
                setState(() {
                  users = response.users;
                });
              },
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    padding:
                        EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(users[index].avatarUrl),
                    ),
                  ),
                  title: Text("${users[index].nickname}"),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddFriendPage(
                                  user: users[index],
                                )));
                  },
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  color: Colors.grey,
                  height: 3,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
