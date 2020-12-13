import 'dart:async';
import 'package:fim/model/message.dart';
import 'package:fim/model/new_friend.dart';
import 'package:fim/model/recent_contact.dart';

StreamController<Message> messageController = StreamController();
Stream<Message> messageStream = messageController.stream.asBroadcastStream();

StreamController<RecentContact> contactController = StreamController();
Stream<RecentContact> contactStream =
    contactController.stream.asBroadcastStream();

StreamController<RecentContact> readController = StreamController();
Stream<RecentContact> readStream = readController.stream.asBroadcastStream();

StreamController friendsChangeController = StreamController();
Stream friendsChangeStream = friendsChangeController.stream.asBroadcastStream();

StreamController<NewFriend> newFriendController = StreamController();
Stream<NewFriend> newFriendStream =
    newFriendController.stream.asBroadcastStream();
