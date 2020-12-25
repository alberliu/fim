import 'package:fim/service/preferences.dart';
import 'package:fim/net/api.dart';
import 'package:fim/pb/logic.ext.pb.dart';
import 'package:fixnum/fixnum.dart';

class Groups {
  static Map<Int64, Group> _groupMap =Map();

  static Future<Group> get(Int64 groupId) async {
    var group = _groupMap[groupId];
    if (group == null) {
      var request = GetGroupReq();
      request.groupId = groupId;
      var response = await logicClient.getGroup(request, options: getOptions());
      group = response.group;
      _groupMap[groupId] = group;
    }
    return group;
  }
}
