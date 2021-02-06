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
    logger.i("request method:${method.path} request:$request response:${response}");
    return response;
  }

  onError(Object error) {
    if (error is GrpcError) {
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
      }
    }
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
