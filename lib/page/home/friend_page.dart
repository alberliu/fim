import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FriendPage extends StatefulWidget {
  @override
  _FriendPageState createState() => _FriendPageState();
}

class _FriendPageState extends State<FriendPage> {
  List<_Friend> userMessages = [
    _Friend(
        "https://tse2-mm.cn.bing.net/th/id/OIP.TOuPgFhxhzTmpKleMkeaNQAAAA?w=178&h=180&c=7&o=5&dpr=2&pid=1.7",
        "Alber"),
    _Friend(
        "https://tse2-mm.cn.bing.net/th/id/OIP.TOuPgFhxhzTmpKleMkeaNQAAAA?w=178&h=180&c=7&o=5&dpr=2&pid=1.7",
        "Min"),
    _Friend(
        "https://tse2-mm.cn.bing.net/th/id/OIP.TOuPgFhxhzTmpKleMkeaNQAAAA?w=178&h=180&c=7&o=5&dpr=2&pid=1.7",
        "Min"),
    _Friend(
        "https://tse2-mm.cn.bing.net/th/id/OIP.TOuPgFhxhzTmpKleMkeaNQAAAA?w=178&h=180&c=7&o=5&dpr=2&pid=1.7",
        "Min"),
    _Friend(
        "https://tse2-mm.cn.bing.net/th/id/OIP.TOuPgFhxhzTmpKleMkeaNQAAAA?w=178&h=180&c=7&o=5&dpr=2&pid=1.7",
        "Min"),
    _Friend(
        "https://tse2-mm.cn.bing.net/th/id/OIP.TOuPgFhxhzTmpKleMkeaNQAAAA?w=178&h=180&c=7&o=5&dpr=2&pid=1.7",
        "Min"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) => Divider(
                  height: 1,
                  color: Colors.grey,
                ),
            itemCount: userMessages.length,
            itemBuilder: (BuildContext context, int index) =>
                _FiendItem(userMessages[index])));
  }
}

class _FiendItem extends StatelessWidget {
  _Friend friend;

  _FiendItem(this.friend) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
      height: 60.0,
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(friend.icon),
          ),
          Container(
            padding: EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
            child: Text(
              friend.name,
              style: TextStyle(
                fontSize: 17.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Friend {
  String icon;
  String name;

  _Friend(this.icon, this.name) {}
}
