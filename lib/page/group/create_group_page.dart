import 'package:fim/dao/recent_contact_dao.dart';
import 'package:fim/data/friends.dart';
import 'package:fim/data/groups.dart';
import 'package:fim/data/preferences.dart';
import 'package:fim/data/stream.dart';
import 'package:fim/model/message.dart';
import 'package:fim/model/recent_contact.dart';
import 'package:fim/net/api.dart';
import 'package:fim/pb/logic.ext.pb.dart';
import 'package:fim/theme/color.dart';
import 'package:fim/theme/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fixnum/fixnum.dart';
import '../chat/chat_page.dart';

class CreateGroupPage extends StatefulWidget {
  @override
  _CreateGroupPageState createState() => _CreateGroupPageState();
}

class _CreateGroupPageState extends State<CreateGroupPage> {
  List<CheckUser> users = List();

  @override
  void initState() {
    super.initState();

    for (var user in Friends.friendList) {
      users.add(CheckUser(user, false));
    }
    print("users:${users.length}");
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
        title: Text("发起群聊"),
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
                  "发起群聊",
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
    var createGroupRequest = CreateGroupReq();
    String groupName = getNickname();
    for (var user in users) {
      if (user.checked) {
        createGroupRequest.memberIds.add(user.user.userId);
        groupName = groupName + "," + user.user.nickname;
      }
    }
    createGroupRequest.name = groupName;
    createGroupRequest.avatarUrl = getAvatarUrl();
    createGroupRequest.type = GroupType.GT_SMALL;

    var createGroupResponse = await logicClient.createGroup(createGroupRequest,
        options: getOptions());

    var groupId = createGroupResponse.groupId;
    var group = await Groups.get(groupId);

    var contact = RecentContact();
    contact.objectType = Message.objectTypeGroup;
    contact.objectId = createGroupResponse.groupId.toInt();
    contact.name = group.name;
    contact.avatarUrl = group.avatarUrl;
    contact.objectId = createGroupResponse.groupId.toInt();
    contact.lastMessage = groupName;
    contact.lastTime = Int64(DateTime.now().millisecondsSinceEpoch).toInt();
    contact.unread = 0;
    RecentContactDao.add(contact);
    contactController.add(contact);

    // 进入到聊天页面
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => ChatPage(
          objectType: Int64(Message.objectTypeGroup),
          objectId: createGroupResponse.groupId,
          name: group.name,
        ),
      ),
    );
  }
}

class CheckUser {
  Friend user;
  bool checked;

  CheckUser(this.user, this.checked);
}
