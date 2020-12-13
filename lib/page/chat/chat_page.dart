import 'dart:async';
import 'dart:ffi';
import 'package:fim/dao/message_dao.dart';
import 'package:fim/dao/recent_contact_dao.dart';
import 'package:fim/data/open_object.dart';
import 'package:fim/data/preferences.dart';
import 'package:fim/data/stream.dart';
import 'package:fim/model/message.dart' as model;
import 'package:fim/model/recent_contact.dart';
import 'package:fim/page/friend/friend_page.dart';
import 'package:fim/page/group/group_info_page.dart';
import 'package:fim/pb/conn.ext.pb.dart' as pb;
import 'package:fim/pb/logic.ext.pb.dart';
import 'package:fim/net/api.dart';
import 'package:fim/pb/push.ext.pb.dart';
import 'package:fim/theme/color.dart';
import 'package:fim/theme/size.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatPage extends StatefulWidget {
  Int64 objectType;
  Int64 objectId;
  String name;

  ChatPage({Key key, this.objectType, this.objectId, this.name})
      : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  ScrollController _scrollController = ScrollController();
  TextEditingController _editingController = TextEditingController();
  List<model.Message> messages = List();

  StreamSubscription subscription;

  @override
  void initState() {
    super.initState();
    print("chatBody initState");

    OpenedObject.open(widget.objectType, widget.objectId);

    initData();
    readMessage();
  }

  void initData() async {
    print("object,type:${widget.objectType},id:${widget.objectId}");
    // 初始化消息列表
    var list = await MessageDao.list(widget.objectType.toInt(),
        widget.objectId.toInt(), Int64.MAX_VALUE.toInt(), 20);
    setState(() {
      messages.addAll(list);
    });

    subscription = messageStream.listen((event) {
      if (event.objectType != widget.objectType.toInt()) return;
      if (event.objectId != widget.objectId.toInt()) return;

      if (event.messageType == pb.MessageType.MT_TEXT.value) {
        setState(() {
          messages.insert(0, event);
        });
      }

      // 指令消息
      if (event.messageType == pb.MessageType.MT_COMMAND.value) {
        var command = pb.Command.fromBuffer(event.messageContent);
        print("指令消息：${command.code}");
        // 群组信息更新
        if (command.code == PushCode.PC_UPDATE_GROUP.value) {
          var updateGroupPush = UpdateGroupPush.fromBuffer(command.data);
          widget.name = updateGroupPush.name;
          messages.insert(0, event);
          setState(() {});
        }
        if (command.code == PushCode.PC_ADD_GROUP_MEMBERS.value) {
          messages.insert(0, event);
          setState(() {});
        }
      }
    });

    _scrollController.addListener(loadMore);
  }

  readMessage() {
    RecentContactDao.updateRead(
        widget.objectType.toInt(), widget.objectId.toInt());
    var contact = RecentContact();
    contact.objectType = widget.objectType.toInt();
    contact.objectId = widget.objectId.toInt();
    readController.add(contact);
  }

  @override
  void dispose() {
    super.dispose();

    OpenedObject.close();

    if (subscription != null) {
      subscription.cancel();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: appBarHeight,
        title: Text(widget.name),
        centerTitle: true,
        actions: <Widget>[
          // 非隐藏的菜单
          new IconButton(
            icon: new Icon(Icons.more_horiz),
            tooltip: 'Add Alarm',
            onPressed: () async {
              String changeName;
              if (widget.objectType == model.Message.objectTypeUser) {
                changeName = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FriendPage(friendId: widget.objectId),
                  ),
                );
              }

              if (widget.objectType == model.Message.objectTypeGroup) {
                changeName = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GroupInfoPage(
                        groupId: widget.objectId, name: widget.name),
                  ),
                );
              }
              if (changeName != null) {
                widget.name = changeName;
                setState(() {});
              }
            },
          ),
        ],
        brightness: appBarBrightness,
      ),
      body: buildBody(context),
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    print("chat_page build");
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            // 消息界面
            child: Container(
              color: Colors.grey[200],
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
          // 消息发送区域
          Container(
            color: Color(0xFFD6D6D6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 10, bottom: 10, left: 10, right: 0),
                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular((10.0)), // 圆角度
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: TextField(
                        cursorWidth: 1,
                        maxLines: 4,
                        minLines: 1,
                        style: TextStyle(
                          fontSize: 16,
                          height: 1,
                        ),
                        strutStyle: StrutStyle(
                          forceStrutHeight: true,
                          fontSize: 16,
                          height: 1,
                          leading: 0.5,
                        ),
                        decoration: InputDecoration(
                          hintMaxLines: 1,
                          helperMaxLines: 1,
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: InputBorder.none,
                          isDense: true,
                        ),
                        controller: _editingController,
                      ),
                    ),
                  ),
                ),
                Container(
                  //width: 70,
                  height: 60,
                  //color: Colors.red,
                  alignment: Alignment.center,
                  child: IconButton(
                    //alignment: Alignment.bottomCenter,
                    color: Colors.green,
                    icon: Icon(Icons.send),
                    onPressed: sendMessage,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget messageWidget(int index) {
    var message = messages[index];
    if (message.messageType == pb.MessageType.MT_COMMAND.value) {
      String text = message.getCommandText();
      if (text != "") {
        return Container(
          padding: EdgeInsets.only(top: 15, bottom: 15),
          alignment: Alignment.center,
          child: Text(text),
        );
      }
      return Container();
    }

    var isMyMessage = message.senderId == getUserId().toInt();
    var text = pb.Text.fromBuffer(message.messageContent).text;
    Widget nameWidget;
    if (!isMyMessage && widget.objectType != model.Message.objectTypeUser) {
      nameWidget = Container(
        margin: EdgeInsets.only(bottom: 5),
        height: 20,
        alignment: Alignment.centerLeft,
        child: Text(message.senderNickname),
      );
    } else {
      nameWidget = Container();
    }

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
                    child: Image.network(message.senderAvatarUrl,
                        fit: BoxFit.cover),
                  ),
                ),
          Expanded(
            child: Column(
              children: [
                nameWidget,
                Container(
                  alignment: isMyMessage
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
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
              ],
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

      var moreMessage = await MessageDao.list(widget.objectType.toInt(),
          widget.objectId.toInt(), messages.last.seq, 20);

      messages.addAll(moreMessage);
      setState(() {});
    }
  }

  void sendMessage() async {
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
    request.receiverType = pb.ReceiverType.valueOf(widget.objectType.toInt());
    request.receiverId = widget.objectId;
    request.messageType = pb.MessageType.MT_TEXT;
    request.messageContent = buffer;
    request.sendTime = now;
    request.isPersist = true;
    var response =
        await logicClient.sendMessage(request, options: await getOptions());

    var message = model.Message();
    message.objectType = widget.objectType.toInt();
    message.objectId = widget.objectId.toInt();
    message.senderId = getUserId().toInt();
    message.senderNickname = getNickname();
    message.senderAvatarUrl = getAvatarUrl();
    message.toUserIds = ""; // todo
    message.messageType = pb.MessageType.MT_TEXT.value;
    message.messageContent = buffer;
    message.seq = response.seq.toInt();
    message.sendTime = now.toInt();

    MessageDao.add(message);

    var contact = await RecentContact.build(message);
    contact.unread = 0;
    RecentContactDao.add(contact);
    contactController.add(contact);

    messages.insert(0, message);
    setState(() {
      _editingController.text = "";
    });
  }
}
