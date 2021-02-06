import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:fim/dao/message_dao.dart';
import 'package:fim/dao/new_friend_dao.dart';
import 'package:fim/dao/recent_contact_dao.dart';
import 'package:fim/service/friend_service.dart';
import 'package:fim/service/new_friend_service.dart';
import 'package:fim/service/preferences.dart';
import 'package:fim/service/recent_contact_service.dart';
import 'package:fim/notification/notification.dart';
import 'package:fim/pb/logic.ext.pb.dart';
import 'package:fim/net/api.dart';
import 'package:fim/net/socket_manager.dart';
import 'package:fim/page/sign_in_page.dart';
import 'package:fim/util/logger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home/home_page.dart';
import 'package:provider/provider.dart';

class InitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    initData(context);
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "FIM",
            style: TextStyle(fontSize: 30, color: Colors.green),
          ),
        ),
      ),
    );
  }

  void initData(BuildContext context) async {
    // 初始化通知栏
    initNotification();

    sharedPreferences = await SharedPreferences.getInstance();

    // 检查设备id
    var deviceId = sharedPreferences.getInt(deviceIdKey);
    logger.i("init_page_device_id:$deviceId");
    if (deviceId == null) {
      var deviceInfo = DeviceInfoPlugin();
      var androidInfo = await deviceInfo.androidInfo;

      var request = RegisterDeviceReq();
      request.type = 1; // 这里1表示Android
      request.brand = androidInfo.brand; //
      request.model = androidInfo.product;
      request.systemVersion = androidInfo.version.release;
      request.sdkVersion = "1.0.0";

      var response = await logicClient.registerDevice(request);
      var newDeviceId = response.deviceId.toInt();
      await sharedPreferences.setInt(deviceIdKey, newDeviceId);
      logger.i("init_page set devoce_id = $newDeviceId");
    }

    // 检查是否登录
    var userId = sharedPreferences.getInt(userIdKey);
    var token = sharedPreferences.getString(tokenKey);
    if (userId == null || token == null) {
      logger.i("用户尚未登录,跳转至登录页面");
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignInPage()));
      return;
    }

    // 初始化数据库连接
    // 初始化最近联系人
    await RecentContactDao.init();
    // 初始化消息
    await MessageDao.init();
    // 初始化新好友
    await NewFriendDao.init();

    // 初始化最近联系人
    context.read<RecentContactService>().init();

    // 初始化好友信息
    await friendService.init();

    // 初始化新好友好友
    await newFriendService.initUnread();

    // 长连接登录
    SocketManager.serverUrl = baseUrl;
    SocketManager.serverPort = 8080;
    SocketManager.connect();

    logger.i("跳转至主页");
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
  }
}
