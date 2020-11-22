import 'package:fim/theme/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fim/data/preferences.dart';

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
            height: 120,
            padding: EdgeInsets.all(30.0),
            child: Center(
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(getAvatarUrl()),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            getNickname(),
                            style: TextStyle(
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 8),
                          child: Text(
                            "手机号：${getPhoneNumber()}",
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
                      fontSize: 20,
                      height: 1,
                      leading: 1),
                  style: TextStyle(
                    height: 2,
                    fontSize: 20.0,
                    //backgroundColor: Colors.grey
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
