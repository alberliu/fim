import 'dart:async';
import 'dart:ffi';
import 'package:cached_network_image/cached_network_image.dart';
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
import 'package:protobuf/protobuf.dart';
import 'package:provider/provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart';

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
  final _picker = ImagePicker();
  String preInputText = "";

  @override
  void initState() {
    super.initState();
    print("chatBody initState");

    // 初始化聊天数据
    future = chatService.init(
        widget.objectType.toInt(), widget.objectId.toInt(), widget.name);

    // 添加下拉加载更多聊天数据
    _scrollController.addListener(loadMore);

    // 标记用户信息已读
    WidgetsBinding.instance.addPostFrameCallback((_) {
      recentContactService.readMessage(
          widget.objectType.toInt(), widget.objectId.toInt());
    });
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
            appBar: buildAppBar(context),
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

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      toolbarHeight: appBarHeight,
      title: Text(context
          .watch<ChatService>()
          .getChatData(widget.objectType.toInt(), widget.objectId.toInt())
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
          buildSendMessageWidget(context),
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

    // 消息的用户信息的昵称区域，如果是群组信息，需要显示有用户昵称
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

    // 消息内容区域
    Widget contentWidget;
    var messageType = pb.MessageType.valueOf(message.messageType);
    switch (messageType) {
      case pb.MessageType.MT_TEXT:
        var text = pb.Text.fromBuffer(message.messageContent);

        contentWidget = Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: isMyMessage ? Colors.green : Colors.white,
          ),
          child: SelectableText(
            text.text,
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
        );
        break;
      case pb.MessageType.MT_IMAGE:
        var image = pb.Image.fromBuffer(message.messageContent);
        contentWidget = ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 100,
            maxHeight: 100,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: CachedNetworkImage(
              imageUrl: image.url,
              progressIndicatorBuilder: (context, url, downloadProgress) {
                return Container(
                  margin: EdgeInsets.all(5),
                  child: CircularProgressIndicator(
                      value: downloadProgress.progress),
                );
              },
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
        );

        break;
      default:
    }

    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
      child: Row(
        crossAxisAlignment:
            isMyMessage ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          // 对方头像区域
          isMyMessage
              ? Container(
                  width: 50,
                )
              : Container(
                  alignment: Alignment.topRight,
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.only(right: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: CachedNetworkImage(
                        imageUrl: message.senderAvatarUrl, fit: BoxFit.cover),
                  ),
                ),
          // 消息区域
          Expanded(
            child: Column(
              children: [
                nameWidget,
                Container(
                  alignment: isMyMessage
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: contentWidget,
                ),
              ],
            ),
          ),
          // 己方头像区域
          isMyMessage
              ? Container(
                  alignment: Alignment.topRight,
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.only(left: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: CachedNetworkImage(
                        imageUrl: getAvatarUrl(), fit: BoxFit.fill),
                  ),
                )
              : Container(
                  width: 50,
                ),
        ],
      ),
    );
  }

  Widget buildSendMessageWidget(BuildContext context) {
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
                  autofocus: false,
                  onChanged: (value) {
                    print(value);
                    if (preInputText != "" && _editingController.text == "") {
                      setState(() {});
                    }
                    if (preInputText == "" && _editingController.text != "") {
                      setState(() {});
                    }
                    preInputText = _editingController.text;
                  },
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
            height: 60,
            alignment: Alignment.center,
            child: _editingController.text != ""
                ? IconButton(
                    color: Colors.green,
                    icon: Icon(Icons.send),
                    onPressed: sendTextMessage,
                  )
                : IconButton(
                    color: Colors.green,
                    icon: Icon(Icons.add_circle_outline),
                    onPressed: () {
                      showSheet(context);
                    },
                  ),
          ),
        ],
      ),
    );
  }

  void showSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return new Container(
          height: 100,
          width: 100,
          color: backgroundColor,
          child: Column(
            children: [
              FlatButton(
                child: Text("从相册选取"),
                onPressed: () {
                  Navigator.pop(context);
                  pickImage(context, ImageSource.gallery);
                },
              ),
              FlatButton(
                child: Text("拍照"),
                onPressed: () {
                  Navigator.pop(context);
                  pickImage(context, ImageSource.camera);
                },
              ),
            ],
          ),
        );
      },
    ).then((value) {});
  }

  void loadMore() async {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      //如果不是最后一页数据，则生成新的数据添加到list里面
      print("loadMore");

      chatService.loadMore(widget.objectType.toInt(), widget.objectId.toInt());
    }
  }

  void pickImage(BuildContext context, ImageSource source) async {
    final pickedFile = await _picker.getImage(source: source);
    if (pickedFile == null) return;

    var formData = FormData.fromMap({
      "file":
          await MultipartFile.fromFile(pickedFile.path, filename: "avatar.png"),
    });
    var response = await Dio().post(uploadUrl, data: formData);
    var imageUrl = response.data["data"]["url"];

    var content = pb.Image();
    content.url = imageUrl;
    sendMessage(pb.MessageType.MT_IMAGE, content);
  }

  void sendTextMessage() {
    var text = _editingController.text.trim();
    if (text.length == 0) {
      return;
    }

    var textContent = pb.Text();
    textContent.text = text;
    sendMessage(pb.MessageType.MT_TEXT, textContent);
    setState(() {
      _editingController.text = "";
      preInputText = "";
    });
  }

  void sendMessage(pb.MessageType messageType, GeneratedMessage content) async {
    var buffer = content.writeToBuffer();
    var now = Int64(DateTime.now().millisecondsSinceEpoch);

    // 发送消息到服务器
    var request = SendMessageReq();
    request.receiverType = pb.ReceiverType.valueOf(widget.objectType.toInt());
    request.receiverId = widget.objectId;
    request.messageType = messageType;
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
    message.messageType = messageType.value;
    message.messageContent = buffer;
    message.seq = response.seq.toInt();
    message.sendTime = now.toInt();

    chatService.onMessage(message);

    var contact = await RecentContact.build(message);
    contact.unread = 0;
    recentContactService.onMessage(contact);
  }
}
