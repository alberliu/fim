import 'dart:io';
import 'package:dio/dio.dart';
import 'package:fim/pb/business.ext.pb.dart';
import 'package:fim/service/preferences.dart';
import 'package:fim/net/api.dart';
import 'package:fim/page/init_page.dart';
import 'package:fim/theme/color.dart';
import 'package:fim/theme/size.dart';
import 'package:fim/util/loading_dialog.dart';
import 'package:fim/util/toast.dart';
import 'package:fim/widget/commit_button.dart';
import 'package:fim/widget/edit_image.dart';
import 'package:fim/widget/edit_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SetUserPage extends StatefulWidget {
  bool isNew;

  SetUserPage(this.isNew);

  @override
  _SetUserPageState createState() => _SetUserPageState();
}

class _SetUserPageState extends State<SetUserPage> {
  File file;
  TextEditingController editingController =
      TextEditingController(text: getNickname());

  bool hasChanged = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: appBarHeight,
          title: Text("个人信息设置"),
          brightness: appBarBrightness,
        ),
        body: Container(
          color: backgroundColor,
          child: Column(
            children: [
              EditImage(
                title: "头像",
                url: getAvatarUrl(),
                onPicked: (pickedFile) => file = pickedFile,
              ),
              Container(height: 10),
              EditItem(
                title: "昵称",
                hintText: "请输入昵称",
                controller: editingController,
              ),
              Container(height: 20),
              CommitButton(
                text: "完成",
                onPressed: onCommit,
              ),
            ],
          ),
        ),
      ),
      onWillPop: () async {
        Navigator.pop(context, hasChanged);
        return false;
      },
    );
  }

  void onCommit() async {
    var avatarUrl = "";
    if (getAvatarUrl() != null && getAvatarUrl() != "") {
      avatarUrl = getAvatarUrl();
    }
    if (avatarUrl == "" && file == null) {
      toast("请选择头像");
      return;
    }

    var nickname = "";
    if (getNickname() != null && getAvatarUrl() != "") {
      nickname = getNickname();
    }
    if (editingController.text != "") {
      nickname = editingController.text;
    }
    if (nickname == "") {
      toast("请填写昵称");
      return;
    }

    showLoadingDialog(context, "正在提交，请稍后");

    if (file != null) {
      var formData = FormData.fromMap({
        "file": await MultipartFile.fromFile(file.path, filename: "avatar.png"),
      });
      var response =
          await Dio().post(uploadUrl, data: formData);
      avatarUrl = response.data["data"]["url"];
    }

    var req = UpdateUserReq();
    req.nickname = nickname;
    req.avatarUrl = avatarUrl;
    await businessClient.updateUser(req, options: getOptions());

    await sharedPreferences.setString(nicknameKey, nickname);
    await sharedPreferences.setString(avatarUrlKey, avatarUrl);
    Navigator.of(context).pop();
    hasChanged = true;
    toast("修改成功");

    if (widget.isNew) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => InitPage()));
    }
  }
}
