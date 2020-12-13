import 'package:fim/page/group/create_group_page.dart';
import 'package:fim/page/home/friends_page.dart';
import 'package:fim/page/home/my_page.dart';
import 'package:fim/page/home/recent_contact_page.dart';
import 'package:fim/page/friend/search_user_page.dart';
import 'package:fim/theme/color.dart';
import 'package:fim/theme/size.dart';
import 'package:fim/widget/my_bottom_navigation_bar.dart';
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
    FriendsPage(),
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
        toolbarHeight: appBarHeight,
        title: Text("FIM"),
        actions: <Widget>[_popMenu()],
        brightness: appBarBrightness,
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
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: currentIndex,
        items: [
          MyBottomNavigationBarItem(
            Navigation(Icons.message, "消息", Colors.green),
            Navigation(Icons.message, "消息", Colors.black54),
          ),
          MyBottomNavigationBarItem(
            Navigation(Icons.people, "好友", Colors.green),
            Navigation(Icons.people, "好友", Colors.black54),
          ),
          MyBottomNavigationBarItem(
            Navigation(Icons.person_outline, "我的", Colors.green),
            Navigation(Icons.person_outline, "我的", Colors.black54),
          ),
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
            value: 'createGroup',
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
        if (key == "createGroup") {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CreateGroupPage()));
        }
      },
    );
  }
}
