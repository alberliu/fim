import 'package:fim/pb/business.ext.pbgrpc.dart';
import 'package:fim/pb/logic.ext.pbgrpc.dart';
import 'package:grpc/grpc.dart';

final logicClient = LogicExtClient(ClientChannel(
  '112.126.102.84',
  port: 50001,
  options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
));

final businessClient = BusinessExtClient(ClientChannel(
  '112.126.102.84',
  port: 50301,
  options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
));
