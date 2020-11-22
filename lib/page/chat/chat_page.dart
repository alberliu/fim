import 'dart:async';
import 'dart:ffi';
import 'package:fim/dao/message_dao.dart';
import 'package:fim/dao/recent_contact_dao.dart';
import 'package:fim/data/friends.dart';
import 'package:fim/data/preferences.dart';
import 'package:fim/model/message.dart' as model;
import 'package:fim/model/recent_contact.dart';
import 'package:fim/pb/conn.ext.pb.dart' as pb;
import 'package:fim/pb/logic.ext.pb.dart';
import 'package:fim/net/api.dart';
import 'package:fim/net/socket_manager.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatPage extends StatelessWidget {
  Int64 objectType;
  Int64 objectId;
  String friendNickname;

  ChatPage({Key key, this.objectType, this.objectId, this.friendNickname})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(friendNickname),
        centerTitle: true,
        actions: <Widget>[
          // 非隐藏的菜单
          new IconButton(
              icon: new Icon(Icons.more_horiz),
              tooltip: 'Add Alarm',
              onPressed: () {}),
        ],
      ),
      body: ChatBody(objectType: objectType, objectId: objectId),
    );
  }
}

class ChatBody extends StatefulWidget {
  Int64 objectType;
  Int64 objectId;

  ChatBody({Key key, this.objectType, this.objectId}) : super(key: key);

  @override
  _ChatBodyState createState() => _ChatBodyState(objectType, objectId);
}

class _ChatBodyState extends State<ChatBody> {
  Int64 objectType;
  Int64 objectId;
  String avatarUrl =
      "https://tse1-mm.cn.bing.net/th/id/OIP.wPFjG9_jdid8NDqacCscPgAAAA?w=135&h=150&c=7&o=5&dpr=2&pid=1.7";

  ScrollController _scrollController = ScrollController();
  TextEditingController _editingController = TextEditingController();
  List<model.Message> messages = List();

  _ChatBodyState(this.objectType, this.objectId);

  StreamSubscription subscription;

  @override
  void initState() {
    super.initState();
    print("chatBody initState");
    initData();
    readMessage();
  }

  void initData() async {
    print("object,type:$objectType,id:$objectId");
    // 初始化好友信息
    avatarUrl = Friends.get(objectId).avatarUrl;

    // 初始化消息列表
    var list = await MessageDao.list(
        objectType.toInt(), objectId.toInt(), Int64.MAX_VALUE.toInt(), 30);
    setState(() {
      messages.addAll(list);
    });

    subscription = messageStream.listen((event) {
      if (!(event.objectType == objectType.toInt() &&
          event.objectId == objectId.toInt())) {
        return;
      }

      if (event.messageType == pb.MessageType.MT_TEXT.value) {
        setState(() {
          messages.insert(0, event);
        });
      }
    });

    _scrollController.addListener(loadMore);
  }

  readMessage(){
    RecentContactDao.updateRead(objectType.toInt(), objectId.toInt());
    var contact=RecentContact();
    contact.objectType = objectType.toInt();
    contact.objectId = objectId.toInt();
    readController.add(contact);
  }

  @override
  void dispose() {
    super.dispose();
    if (subscription != null) {
      subscription.cancel();
    }
  }

  @override
  Widget build(BuildContext context) {
    print("chat_page build");
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            // 消息界面
            child: Container(
              //padding: EdgeInsets.only(left: 10, right: 10),
              color: Color(0xFFE0E0E0),
              child: Scrollbar(
                child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return messageWidget(index);
                  },
                  reverse: true,
                  controller: _scrollController,
                ),
              ),
            ),
          ),
          Container(
            // 消息发送界面
            color: Color(0xFFD6D6D6),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(
                        top: 10, bottom: 10, left: 20, right: 20),
                    child: TextField(
                      maxLines: 2,
                      minLines: 1,
                      style: TextStyle(
                        fontSize: 13,
                        height: 0.8,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      controller: _editingController,
                    ),
                  ),
                ),
                FlatButton(
                  child: Container(
                    width: 50,
                    height: 30,
                    color: Colors.green,
                    child: Center(
                      child: Text("发送"),
                    ),
                  ),
                  onPressed: onSendMessage,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget messageWidget(int index) {
    var isMyMessage = messages[index].senderId == getUserId().toInt();

    var text = pb.Text.fromBuffer(messages[index].messageContent).text;

    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          isMyMessage
              ? Container(
                  width: 50,
                )
              : Container(
                  // color: Colors.grey,
                  alignment: Alignment.topRight,
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.only(right: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(avatarUrl, fit: BoxFit.cover),
                  ),
                ),
          Expanded(
            child: Container(
              alignment:
                  isMyMessage ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: isMyMessage ? Colors.green : Colors.white,
                ),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 16.0,
                    height: 1,
                  ),
                  strutStyle: StrutStyle(
                    forceStrutHeight: true,
                    fontSize: 16,
                    height: 1,
                    leading: 0.5,
                  ),
                ),
              ),
            ),
          ),
          isMyMessage
              ? Container(
                  //color: Colors.grey,
                  alignment: Alignment.topRight,
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.only(left: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(getAvatarUrl(), fit: BoxFit.fill),
                  ),
                )
              : Container(
                  width: 50,
                ),
        ],
      ),
    );
  }

  void loadMore() async {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      //如果不是最后一页数据，则生成新的数据添加到list里面
      print("loadMore");
      //page++;
      //messages.addAll(getMessage(page));
      //setState(() {});
    }
  }

  void onSendMessage() async {
    print("send message");
    var text = _editingController.text.trim();
    if (text.length == 0) {
      return;
    }

    print("send message:$text");

    var textContent = pb.Text();
    textContent.text = text;
    var buffer = textContent.writeToBuffer();
    var now = Int64(DateTime.now().millisecondsSinceEpoch);

    // 发送消息到服务器
    var request = SendMessageReq();
    request.receiverType = pb.ReceiverType.valueOf(objectType.toInt());
    request.receiverId = objectId;
    request.messageType = pb.MessageType.MT_TEXT;
    request.messageContent = buffer;
    request.sendTime = now;
    request.isPersist = true;
    var response =
        await logicClient.sendMessage(request, options: await getOptions());

    var message = model.Message();
    message.objectType = objectType.toInt();
    message.objectId = objectId.toInt();
    message.senderId = getUserId().toInt();
    message.toUserIds = ""; // todo
    message.messageType = pb.MessageType.MT_TEXT.value;
    message.messageContent = buffer;
    message.seq = response.seq.toInt();
    message.sendTime = now.toInt();

    MessageDao.add(message);

    var contact = RecentContact.fromMessage(message);
    contact.unread = 0;
    RecentContactDao.add(contact);
    contactController.add(contact);

    messages.insert(0, message);
    setState(() {
      _editingController.text = "";
    });
  }
}
