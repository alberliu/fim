import 'package:fim/pb/business.ext.pbgrpc.dart';
import 'package:fim/pb/logic.ext.pbgrpc.dart';
import 'package:grpc/grpc.dart';

const String baseUrl = "47.242.224.6";
const String uploadUrl = "http://47.242.224.6:8085/upload";

final logicClient = LogicExtClient(ClientChannel(
  baseUrl,
  port: 50001,
  options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
));

final businessClient = BusinessExtClient(ClientChannel(
  baseUrl,
  port: 50301,
  options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
));
