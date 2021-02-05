import 'dart:async';
import 'dart:io';

import 'package:fim/net/api.dart';
import 'package:fim/pb/logic.ext.pb.dart';
import 'package:fim/util/logger.dart';

void main() async {
  /*GetFriendsResp resp;
  try {
    logger.i("start");

    resp = await logicClient.getFriends(GetFriendsReq());
    logger.i("finish");
  } catch (e) {
    logger.i(e);
    return;
  }
  logger.i("$resp");*/




    Timer t = Timer(Duration(seconds: 1), () {
      print("do");
    });
    // and later, before the timer goes off...
   sleep(Duration(seconds: 10));

}
