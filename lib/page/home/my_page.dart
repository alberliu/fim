import 'package:fim/page/set_user_page.dart';
import 'package:fim/page/sign_in_page.dart';
import 'package:fim/theme/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fim/service/preferences.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() {
    print("my_page createState");
    return _MyPageState();
  }
}

class _MyPageState extends State<MyPage> {
  @override
  void initState() {
    super.initState();
    print("my_page initState");
  }

  @override
  Widget build(BuildContext context) {
    print("my_page build");
    return Container(
      color: backgroundColor,
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            height: 90,
            padding: EdgeInsets.only(left: 45),
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    getAvatarUrl(),
                    width: 50,
                    height: 50,
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(left: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          getNickname(),
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        child: Text(
                          "手机号：${getPhoneNumber()}",
                          style: TextStyle(
                            fontSize: 13.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 5,
          ),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 10),
              height: 40,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Icon(Icons.settings),
                  Container(
                    width: 15,
                  ),
                  Text(
                    "设置",
                    strutStyle: StrutStyle(
                        forceStrutHeight: true,
                        fontSize: 17,
                        height: 1,
                        leading: 1),
                    style: TextStyle(
                      height: 2,
                      fontSize: 17.0,
                      //backgroundColor: Colors.grey
                    ),
                  ),
                ],
              ),
            ),
            onTap: () async {
              bool result = await Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SetUserPage(false)));
              if (result == true) {
                setState(() {});
              }
            },
          ),
          Container(
            height: 5,
          ),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 10),
              height: 40,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Icon(Icons.assignment_ind),
                  Container(
                    width: 15,
                  ),
                  Text(
                    "切换账户",
                    strutStyle: StrutStyle(
                        forceStrutHeight: true,
                        fontSize: 17,
                        height: 1,
                        leading: 1),
                    style: TextStyle(
                      height: 2,
                      fontSize: 17.0,
                      //backgroundColor: Colors.grey
                    ),
                  ),
                ],
              ),
            ),
            onTap: () async {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignInPage()));
            },
          ),
        ],
      ),
    );
  }
}
