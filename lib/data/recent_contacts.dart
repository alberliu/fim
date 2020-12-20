import 'package:fim/model/recent_contact.dart';
import 'package:flutter/cupertino.dart';

class RecentContacts with ChangeNotifier {
  List<RecentContact> contacts;
  int unReadNum;
}
