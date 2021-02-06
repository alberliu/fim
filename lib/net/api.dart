import 'package:fim/main.dart';
import 'package:fim/pb/business.ext.pbgrpc.dart';
import 'package:fim/pb/logic.ext.pbgrpc.dart';
import 'package:fim/service/preferences.dart';
import 'package:fim/util/logger.dart';
import 'package:fim/util/toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:grpc/grpc.dart';

const String baseUrl = "47.242.224.6";
const String uploadUrl = "http://47.242.224.6:8085/upload";

class MyInterceptor extends ClientInterceptor {
  @override
  ResponseFuture<R> interceptUnary<Q, R>(ClientMethod<Q, R> method, Q request, CallOptions options, invoker) {
    ResponseFuture<R> response;
    response = invoker(method, request, getOptions());
    response.then((value) {
      logger.i("request method:${method.path}\nrequest:$request response:$value");
    });
    return response;
  }
}

final logicClient = LogicExtClient(
    ClientChannel(
      baseUrl,
      port: 50001,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    ),
    interceptors: [MyInterceptor()]);

final businessClient = BusinessExtClient(
    ClientChannel(
      baseUrl,
      port: 50301,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    ),
    interceptors: [MyInterceptor()]);
