import 'package:fim/data/preferences.dart';
import 'package:fim/pb/logic.ext.pbgrpc.dart';
import 'package:fim/pb/user.ext.pbgrpc.dart';
import 'package:grpc/grpc.dart';
import 'package:shared_preferences/shared_preferences.dart';


final logicClient = LogicExtClient(ClientChannel(
  '112.126.102.84',
  port: 50001,
  options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
));

final userClient = UserExtClient(ClientChannel(
  '112.126.102.84',
  port: 50301,
  options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
));
