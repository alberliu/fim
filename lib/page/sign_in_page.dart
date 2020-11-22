import 'dart:ffi';
import 'package:fim/data/preferences.dart';
import 'package:fim/page/init_page.dart';
import 'package:fim/pb/user.ext.pb.dart';
import 'package:fim/net/api.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:grpc/grpc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home/home_page.dart';

class SignInPage extends StatelessWidget {
  TextEditingController _numberController = TextEditingController();
  TextEditingController _codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("登录")),
      body: Container(
        padding: EdgeInsets.only(top: 50),
        color: Color(0xFFD6D6D6),
        alignment: Alignment.topCenter,
        child: Container(
          padding: EdgeInsets.only(top: 20, bottom: 10, left: 20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          width: 350,
          height: 250,
          child: Column(
            children: <Widget>[
              TextField(
                autofocus: true,
                maxLines: 1,
                keyboardType: TextInputType.phone,
                maxLength: 11,
                decoration: InputDecoration(
                  hintText: "手机号",
                ),
                controller: _numberController,
              ),
              TextField(
                maxLines: 1,
                maxLength: 6,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "验证码"),
                controller: _codeController,
              ),
              Container(
                height: 30,
              ),
              SizedBox(
                height: 40,
                width: 300,
                child: FlatButton(
                  color: Colors.green,
                  child: Text("登录"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  onPressed: () async {
                    var number = _numberController.text;
                    var code = _codeController.text;
                    if (number.length != 11) {
                      Fluttertoast.showToast(
                          msg: "请输入11位的手机号",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIos: 1,
                          backgroundColor: Colors.black45,
                          textColor: Colors.white,
                          fontSize: 16.0);
                      return;
                    }
                    if (code.length != 6) {
                      Fluttertoast.showToast(
                          msg: "请输入6位的验证码",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIos: 1,
                          backgroundColor: Colors.black45,
                          textColor: Colors.white,
                          fontSize: 16.0);
                      return;
                    }

                    var request = SignInReq();
                    request.phoneNumber = number;
                    request.code = code;
                    var prefs = await SharedPreferences.getInstance();
                    var deviceId = prefs.getInt(deviceIdKey);
                    print("sign_in_page device_id:$deviceId");
                    request.deviceId = Int64(deviceId);

                    try {
                      var signInResponse =
                      await userClient.signIn(request);
                      await prefs.setInt(
                          userIdKey, signInResponse.userId.toInt());
                      await prefs.setString(tokenKey, signInResponse.token);
                      await sharedPreferences.setString(phoneNumberKey, number);

                      var getUserResponse =
                      await userClient.getUser(
                          GetUserReq(), options: await getOptions());
                      await sharedPreferences.setString(
                          nicknameKey, getUserResponse.user.nickname);
                      await sharedPreferences.setString(
                          avatarUrlKey, getUserResponse.user.avatarUrl);
                    } catch (e,s) {
                      print("signIn exception:$e  $s");
                    }

                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => InitPage()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
