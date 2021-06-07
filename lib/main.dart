import 'dart:async';
import 'dart:io';
import 'package:fim/page/sign_in_page.dart';
import 'package:fim/service/chat_service.dart';
import 'package:fim/service/friend_service.dart';
import 'package:fim/service/new_friend_service.dart';
import 'package:fim/service/recent_contact_service.dart';
import 'package:fim/page/chat/chat_page.dart';
import 'package:fim/page/init_page.dart';
import 'package:fim/theme/color.dart';
import 'package:fim/util/logger.dart';
import 'package:fim/util/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grpc/grpc.dart';
import 'package:provider/provider.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

void main() async {
  FlutterError.onError = (FlutterErrorDetails details) {
    logger.e("exception ${details.exception}");
  };

  if (Platform.isAndroid) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: backgroundColor,
    ));
  }

  runZoned<Future<Null>>(() async {
    runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => recentContactService),
          ChangeNotifierProvider(create: (_) => friendService),
          ChangeNotifierProvider(create: (_) => newFriendService),
          ChangeNotifierProvider(create: (_) => chatService),
        ],
        child: App(),
      ),
    );
  }, onError: handleError);
}

void handleError(error, stackTrace) async {
  if (error is GrpcError) {
    logger.d(error);
    switch (error.code) {
      case 10000:
        navigatorKey.currentState.pushNamedAndRemoveUntil("/signIn", (Route<dynamic> route) => false);
        return;
      case 2:
        toast("请求失败，请稍后再试");
        return;
      case 14:
        toast("请求失败，请稍后再试");
        return;
      default:
        toast(error.message);
        return;
    }
  }

  logger.e("$error $stackTrace");
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //backgroundColor: contentColor,
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: backgroundColor,
          textTheme: TextTheme(
            headline6: TextStyle(color: Colors.black, fontSize: 17),
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      home: (InitPage()),
      routes: {
        '/signIn': (context) => SignInPage(),
        '/chatPage': (context) => ChatPage(),
      },
      navigatorKey: navigatorKey,
    );
  }
}
