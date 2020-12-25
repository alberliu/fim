import 'dart:io';
import 'package:dio/dio.dart';
import 'package:fim/service/groups.dart';
import 'package:fim/service/preferences.dart';
import 'package:fim/net/api.dart';
import 'package:fim/page/group/add_member_page.dart';
import 'package:fim/page/loading_page.dart';
import 'package:fim/pb/logic.ext.pb.dart';
import 'package:fim/pb/logic.ext.pbgrpc.dart';
import 'package:fim/theme/color.dart';
import 'package:fim/theme/size.dart';
import 'package:fim/util/loading_dialog.dart';
import 'package:fim/util/toast.dart';
import 'package:fim/widget/commit_button.dart';
import 'package:fim/widget/edit_image.dart';
import 'package:fim/widget/edit_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fixnum/fixnum.dart';

class GroupInfoPage extends StatefulWidget {
  Int64 groupId;
  String name;

  GroupInfoPage({Key key, this.groupId, this.name}) : super(key: key);

  @override
  _GroupInfoPageState createState() => _GroupInfoPageState();
}

class _GroupInfoPageState extends State<GroupInfoPage> {
  bool loading = true;
  List<GroupMember> members = List();
  Group group;
  File file;

  String changeName;

  TextEditingController nameController = TextEditingController();
  TextEditingController introductionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    initData();
  }

  initData() async {
    print("group info init_data ${widget.groupId}");
    var membersReq = GetGroupMembersReq();
    membersReq.groupId = widget.groupId;
    var membersResp =
        await logicClient.getGroupMembers(membersReq, options: getOptions());
    members = membersResp.members;

    group = await Groups.get(widget.groupId);

    nameController.text = group.name;
    introductionController.text = group.introduction;

    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: appBarHeight,
          title: Text(widget.name),
          brightness: appBarBrightness,
        ),
        body: loading
            ? LoadingPage()
            : Container(
                child: SingleChildScrollView(
                  primary: true,
                  child: Column(
                    children: [
                      buildMembersWidget(),
                      Container(height: 10, color: backgroundColor),
                      EditImage(
                        title: "头像",
                        url: group.avatarUrl,
                        onPicked: (pickedFile) => file = pickedFile,
                      ),
                      Container(height: 10, color: backgroundColor),
                      EditItem(
                        title: "名称",
                        hintText: "请填写群组名称",
                        controller: nameController,
                      ),
                      Container(height: 5, color: backgroundColor),
                      EditItem(
                        title: "简介",
                        hintText: "简介",
                        controller: introductionController,
                      ),
                      Container(height: 20, color: backgroundColor),
                      CommitButton(
                        text: "保存",
                        onPressed: () => onCommit(context),
                      )
                    ],
                  ),
                ),
              ),
      ),
      onWillPop: () async {
        Navigator.pop(context, changeName);
        return false;
      },
    );
  }

  Widget buildMembersWidget() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5, //每行三列
            childAspectRatio: 1.0 //显示区域宽高相等
            ),
        itemCount: members.length + 1,
        itemBuilder: (context, index) {
          Image image;
          String name;
          if (index != members.length) {
            var member = members[index];
            image = Image.network(member.avatarUrl);
            name = member.nickname;
          } else {
            image = Image.asset("assets/add.png");
            name = "";
          }
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            child: Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              //color: Colors.green,
              height: 5,
              width: 5,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: image,
                  ),
                  Container(height: 5),
                  Text(
                    name,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            onTap: () async {
              if (index == members.length) {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddMemberPage(
                      groupId: widget.groupId,
                      members: members,
                    ),
                  ),
                );
                setState(() {});
              }
            },
          );
        },
      ),
    );
  }

  void onCommit(BuildContext context) async {
    showLoadingDialog(context, "正在提交，请稍后");
    String avatarUrl = group.avatarUrl;
    if (file != null) {
      print("upload file");
      var formData = FormData.fromMap({
        "file": await MultipartFile.fromFile(file.path, filename: "avatar.png"),
      });
      var response =
          await Dio().post("http://112.126.102.84:8085/upload", data: formData);
      avatarUrl = response.data["data"]["url"];
    }

    var req = UpdateGroupReq();
    req.groupId = group.groupId;
    req.avatarUrl = avatarUrl;
    req.name = nameController.text;
    req.introduction = introductionController.text;
    await logicClient.updateGroup(req, options: getOptions());

    group.name = req.name;
    group.avatarUrl = req.avatarUrl;

    changeName = req.name;
    setState(() {
      widget.name = req.name;
    });
    Navigator.of(context).pop();
    toast("修改成功");
  }
}
