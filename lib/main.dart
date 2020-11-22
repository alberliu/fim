import 'package:fim/page/chat/chat_page.dart';
import 'package:fim/page/init_page.dart';
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
      home: (InitPage()),
      routes: {
        '/chatPage': (context) => ChatPage(),
      },
    );
  }
}
