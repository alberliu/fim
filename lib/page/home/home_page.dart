import 'package:fim/page/home/friend_page.dart';
import 'package:fim/page/home/my_page.dart';
import 'package:fim/page/home/recent_contact_page.dart';
import 'package:fim/page/search_user_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;
  PageController _pageController = PageController(initialPage: 0);
  var views = [
    RecentContactPage(),
    FriendPage(),
    MyPage(),
  ];

  @override
  void initState() {
    super.initState();
    print("home_page initState");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FIM"),
        actions: <Widget>[
          // 非隐藏的菜单
          IconButton(
            icon: new Icon(Icons.search),
            tooltip: 'Add Alarm',
            onPressed: () {},
          ),

          _popMenu()
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        children: views,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.green,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.message), label: '消息'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: '好友'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: '我的'),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
            _pageController.jumpToPage(index);
          });
        },
      ),
    );
  }

  PopupMenuButton _popMenu() {
    return PopupMenuButton<String>(
      itemBuilder: (context) {
        return <PopupMenuEntry<String>>[
          PopupMenuItem<String>(
            value: 'addFriend',
            child: Text(
              '添加好友',
              style: TextStyle(color: Colors.white),
            ),
          ),
          PopupMenuItem<String>(
            value: '数学',
            child: Text(
              '发起群聊',
              style: TextStyle(color: Colors.white),
            ),
          ),
          PopupMenuItem<String>(
            value: '英语',
            child: Text(
              '帮助反馈',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ];
      },
      onCanceled: () {
        print('onCanceled');
      },
      icon: Icon(Icons.more_horiz),
      color: Colors.black45,
      offset: Offset(0, 100),
      onSelected: (String key) {
        if (key == "addFriend") {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SearchUserPage()));
        }
      },
    );
  }
}
