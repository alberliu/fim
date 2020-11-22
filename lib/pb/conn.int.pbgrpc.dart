///
//  Generated code. Do not modify.
//  source: conn.int.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'conn.int.pb.dart' as $0;
export 'conn.int.pb.dart';

class ConnIntClient extends $grpc.Client {
  static final _$deliverMessage =
      $grpc.ClientMethod<$0.DeliverMessageReq, $0.DeliverMessageResp>(
          '/pb.ConnInt/DeliverMessage',
          ($0.DeliverMessageReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DeliverMessageResp.fromBuffer(value));

  ConnIntClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.DeliverMessageResp> deliverMessage(
      $0.DeliverMessageReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$deliverMessage, request, options: options);
  }
}

abstract class ConnIntServiceBase extends $grpc.Service {
  $core.String get $name => 'pb.ConnInt';

  ConnIntServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.DeliverMessageReq, $0.DeliverMessageResp>(
        'DeliverMessage',
        deliverMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeliverMessageReq.fromBuffer(value),
        ($0.DeliverMessageResp value) => value.writeToBuffer()));
  }

  $async.Future<$0.DeliverMessageResp> deliverMessage_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.DeliverMessageReq> request) async {
    return deliverMessage(call, await request);
  }

  $async.Future<$0.DeliverMessageResp> deliverMessage(
      $grpc.ServiceCall call, $0.DeliverMessageReq request);
}
