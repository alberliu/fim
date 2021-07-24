import 'package:fim/main.dart';
import 'package:fim/pb/business.ext.pbgrpc.dart';
import 'package:fim/pb/logic.ext.pbgrpc.dart';
import 'package:fim/service/preferences.dart';
import 'package:fim/util/logger.dart';
import 'package:fim/util/toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:grpc/grpc.dart';

const String baseUrl = "111.229.238.28";
const String uploadUrl = "http://111.229.238.28:8085/upload";

Map<String, String> getMetadata() {
  Map<String, String> metadata = {};
  var deviceId = sharedPreferences.getInt(deviceIdKey);
  if (deviceId != null) {
    metadata["device_id"] = deviceId.toString();
  }
  var userId = sharedPreferences.getInt(userIdKey);
  if (userId != null) {
    metadata["user_id"] = userId.toString();
  }
  var token = sharedPreferences.getString(tokenKey);
  if (token != null) {
    metadata["token"] = token;
  }

  return metadata;
}

class MyInterceptor extends ClientInterceptor {
  @override
  ResponseFuture<R> interceptUnary<Q, R>(ClientMethod<Q, R> method, Q request, CallOptions options, invoker) {
    var metadata = getMetadata();
    metadata.forEach((key, value) {
      if (value == null) {
        metadata.remove(key);
      }
    });

    metadata.addAll(options.metadata);
    var newOptions =
        CallOptions(metadata: metadata, providers: options.metadataProviders, timeout: Duration(seconds: 2));

    logger.i("request method:${method.path}\nrequest:$request options:$newOptions");
    ResponseFuture<R> response;
    response = invoker.call(method, request, newOptions);
    response.then((value) {
      logger.i("request method:${method.path}\n response:$value");
    });
    return response;
  }
}

final logicClient = LogicExtClient(
    ClientChannel(
      baseUrl,
      port: 50100,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    ),
    interceptors: [MyInterceptor()]);

final businessClient = BusinessExtClient(
    ClientChannel(
      baseUrl,
      port: 50200,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    ),
    interceptors: [MyInterceptor()]);
