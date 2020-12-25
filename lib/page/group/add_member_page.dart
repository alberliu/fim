import 'package:fim/service/friend_service.dart';
import 'package:fim/service/preferences.dart';
import 'package:fim/net/api.dart';
import 'package:fim/pb/logic.ext.pb.dart';
import 'package:fim/theme/color.dart';
import 'package:fim/theme/size.dart';
import 'package:fim/util/toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fixnum/fixnum.dart';

class AddMemberPage extends StatefulWidget {
  Int64 groupId;
  List<GroupMember> members;

  AddMemberPage({Key key, this.groupId, this.members});

  @override
  _AddMemberState createState() => _AddMemberState();
}

class _AddMemberState extends State<AddMemberPage> {
  List<CheckUser> users = List();

  @override
  void initState() {
    super.initState();

    for (var user in friendService.friendList) {
      if (!isInGroup(user.userId)) {
        users.add(CheckUser(user, false));
      }
    }
    print("users:${users.length}");
  }

  bool isInGroup(Int64 userId) {
    for (var member in widget.members) {
      if (member.userId == userId) {
        return true;
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = List();
    for (var user in users) {
      if (user.checked) {
        widgets.add(
          Container(
            height: 50,
            width: 50,
            padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(user.user.avatarUrl),
            ),
          ),
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: appBarHeight,
        title: Text("添加成员"),
        brightness: appBarBrightness,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 50,
              color: backgroundColor,
              child: SingleChildScrollView(
                child: Row(
                  children: widgets,
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(
                      color: Colors.grey,
                      height: 3,
                    );
                  },
                  itemCount: users.length,
                  itemBuilder: (BuildContext context, int index) {
                    var user = users[index];
                    return CheckboxListTile(
                      value: user.checked,
                      secondary: Container(
                        height: 50,
                        width: 50,
                        padding: EdgeInsets.only(
                            left: 5, right: 5, top: 5, bottom: 5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(user.user.avatarUrl),
                        ),
                      ),
                      title: Text(user.user.nickname),
                      onChanged: (value) {
                        setState(() {
                          user.checked = value;
                        });
                      },
                    );
                  },
                ),
              ),
            ),
            Container(
              child: FlatButton(
                color: Colors.green,
                child: Text(
                  "添加成员",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: onPressed,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onPressed() async {
    var req = AddGroupMembersReq();
    req.groupId = widget.groupId;
    for (var user in users) {
      if (user.checked) {
        req.userIds.add(user.user.userId);
        var member = GroupMember();
        member.userId = user.user.userId;
        member.nickname = user.user.nickname;
        member.avatarUrl = user.user.avatarUrl;
        widget.members.add(member);
      }
    }
    await logicClient.addGroupMembers(req, options: getOptions());

    toast("添加成功");
    // 进入到聊天页面
    Navigator.pop(context);
  }
}

class CheckUser {
  Friend user;
  bool checked;

  CheckUser(this.user, this.checked);
}
