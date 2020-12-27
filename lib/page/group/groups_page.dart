import 'package:cached_network_image/cached_network_image.dart';
import 'package:fim/service/preferences.dart';
import 'package:fim/model/message.dart';
import 'package:fim/net/api.dart';
import 'package:fim/page/chat/chat_page.dart';
import 'package:fim/page/loading_page.dart';
import 'package:fim/pb/logic.ext.pb.dart';
import 'package:fim/theme/color.dart';
import 'package:fim/theme/size.dart';
import 'package:fim/widget/list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fixnum/fixnum.dart';

class GroupsPage extends StatefulWidget {
  @override
  _GroupsPageState createState() => _GroupsPageState();
}

class _GroupsPageState extends State<GroupsPage> {
  bool loading = true;
  List<Group> groups;

  @override
  void initState() {
    super.initState();
    initData();
  }

  initData() async {
    var getGroupsResp =
        await logicClient.getGroups(GetGroupsReq(), options: getOptions());
    groups = getGroupsResp.groups;
    loading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: appBarHeight,
        title: Text("我的群组"),
        brightness: appBarBrightness,
      ),
      body: Container(
        child: loading
            ? LoadingPage()
            : ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return ListItem(
                    icon: CachedNetworkImage(imageUrl:groups[index].avatarUrl),
                    name: groups[index].name,
                    onTab: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatPage(
                            objectType: Int64(Message.objectTypeGroup),
                            objectId: groups[index].groupId,
                            name: groups[index].name,
                          ),
                        ),
                      );
                    },
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    indent: 60,
                    color: Colors.grey,
                    height: 3,
                  );
                },
                itemCount: groups.length,
              ),
      ),
    );
  }
}
