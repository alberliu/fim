import 'dart:async';
import 'dart:ffi';
import 'package:fim/service/chat_service.dart';
import 'package:fim/service/preferences.dart';
import 'package:fim/service/recent_contact_service.dart';
import 'package:fim/model/message.dart' as model;
import 'package:fim/model/recent_contact.dart';
import 'package:fim/page/friend/friend_page.dart';
import 'package:fim/page/group/group_info_page.dart';
import 'package:fim/pb/conn.ext.pb.dart' as pb;
import 'package:fim/pb/logic.ext.pb.dart';
import 'package:fim/net/api.dart';
import 'package:fim/theme/color.dart';
import 'package:fim/theme/size.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

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
  Future future;

  @override
  void initState() {
    super.initState();
    print("chatBody initState");

    future = chatService.init(
        widget.objectType.toInt(), widget.objectId.toInt(), widget.name);

    initData();
    readMessage();
  }

  void initData() async {
    _scrollController.addListener(loadMore);
  }

  readMessage() {
    recentContactService.readMessage(
        widget.objectType.toInt(), widget.objectId.toInt());
  }

  @override
  void dispose() {
    super.dispose();
    chatService.destroy(widget.objectType.toInt(), widget.objectId.toInt());
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Scaffold(
            appBar: AppBar(
              toolbarHeight: appBarHeight,
              title: Text(context
                  .watch<ChatService>()
                  .getChatData(
                      widget.objectType.toInt(), widget.objectId.toInt())
                  .name),
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
                          builder: (context) =>
                              FriendPage(friendId: widget.objectId),
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
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: appBarHeight,
            title: Text(widget.name),
            centerTitle: true,
            brightness: appBarBrightness,
          ),
        );
      },
    );
  }

  Widget buildBody(BuildContext context) {
    print("chat_page build");
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            // 消息界面
            child: buildMessageListWidget(context),
          ),
          // 消息发送区域
          buildSendMessageWidget(),
        ],
      ),
    );
  }

  Widget buildMessageListWidget(BuildContext context) {
    var messages = context
        .watch<ChatService>()
        .getChatData(widget.objectType.toInt(), widget.objectId.toInt())
        .messages;
    return Container(
      color: Colors.grey[200],
      child: Scrollbar(
        child: ListView.builder(
          itemCount: messages.length,
          itemBuilder: (BuildContext context, int index) {
            return buildMessageWidget(messages[index]);
          },
          reverse: true,
          controller: _scrollController,
        ),
      ),
    );
  }

  Widget buildMessageWidget(model.Message message) {
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

  Widget buildSendMessageWidget() {
    return Container(
      color: Color(0xFFD6D6D6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 0),
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
    );
  }

  void loadMore() async {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      //如果不是最后一页数据，则生成新的数据添加到list里面
      print("loadMore");

      chatService.loadMore(widget.objectType.toInt(), widget.objectId.toInt());
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

    chatService.onMessage(message);

    var contact = await RecentContact.build(message);
    contact.unread = 0;
    recentContactService.onMessage(contact);

    setState(() {
      _editingController.text = "";
    });
  }
}
