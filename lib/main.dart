import 'package:fim/page/home/friend_page.dart';
import 'package:fim/page/home/message_page.dart';
import 'package:fim/page/home/my_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;
  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Alber IM")),
        body: renderBody(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.green,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.message), title: Text('消息')),
            BottomNavigationBarItem(
                icon: Icon(Icons.people), title: Text('好友')),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), title: Text('我的')),
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
              _pageController.jumpToPage(index);
            });
          },
        ));
  }

  Widget renderBody() {
    var arr = [
      MessagePage(),
      FriendPage(),
      MyPage(),
    ];

    return PageView(
      controller: _pageController,
      onPageChanged: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      children: arr,
    );
  }
}
