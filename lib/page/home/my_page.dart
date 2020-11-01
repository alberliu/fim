import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
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
                    child: Image.network(
                        "https://tse2-mm.cn.bing.net/th/id/OIP.TOuPgFhxhzTmpKleMkeaNQAAAA?w=178&h=180&c=7&o=5&dpr=2&pid=1.7"),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Alber",
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
