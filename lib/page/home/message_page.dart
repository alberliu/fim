import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  List<_Message> messages = [
    _Message(
        "https://tse2-mm.cn.bing.net/th/id/OIP.TOuPgFhxhzTmpKleMkeaNQAAAA?w=178&h=180&c=7&o=5&dpr=2&pid=1.7",
        "Min",
        "在"),
    _Message(
        "https://tse2-mm.cn.bing.net/th/id/OIP.TOuPgFhxhzTmpKleMkeaNQAAAA?w=178&h=180&c=7&o=5&dpr=2&pid=1.7",
        "Alber",
        "我在"),
    _Message(
        "https://tse2-mm.cn.bing.net/th/id/OIP.TOuPgFhxhzTmpKleMkeaNQAAAA?w=178&h=180&c=7&o=5&dpr=2&pid=1.7",
        "Min",
        "不在"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) => Divider(
                  height: 0.1,
                  color: Colors.grey,
                ),
            itemCount: messages.length,
            itemBuilder: (BuildContext context, int index) =>
                _MessageItem(messages[index])));
  }
}

class _MessageItem extends StatelessWidget {
  _Message message;

  _MessageItem(this.message) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      height: 80.0,
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(message.icon),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  message.name,
                  style: TextStyle(
                    fontSize: 17.0,
                  ),
                ),
                Text(
                  message.message,
                  style: TextStyle(fontSize: 13.0, color: Colors.black45),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _Message {
  String icon;
  String name;
  String message;

  _Message(this.icon, this.name, this.message) {}
}
