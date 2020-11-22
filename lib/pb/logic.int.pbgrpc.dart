///
//  Generated code. Do not modify.
//  source: logic.int.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'logic.int.pb.dart' as $2;
import 'logic.ext.pb.dart' as $1;
export 'logic.int.pb.dart';

class LogicIntClient extends $grpc.Client {
  static final _$connSignIn =
      $grpc.ClientMethod<$2.ConnSignInReq, $2.ConnSignInResp>(
          '/pb.LogicInt/ConnSignIn',
          ($2.ConnSignInReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.ConnSignInResp.fromBuffer(value));
  static final _$sync = $grpc.ClientMethod<$2.SyncReq, $2.SyncResp>(
      '/pb.LogicInt/Sync',
      ($2.SyncReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.SyncResp.fromBuffer(value));
  static final _$messageACK =
      $grpc.ClientMethod<$2.MessageACKReq, $2.MessageACKResp>(
          '/pb.LogicInt/MessageACK',
          ($2.MessageACKReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.MessageACKResp.fromBuffer(value));
  static final _$offline = $grpc.ClientMethod<$2.OfflineReq, $2.OfflineResp>(
      '/pb.LogicInt/Offline',
      ($2.OfflineReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.OfflineResp.fromBuffer(value));
  static final _$sendMessage =
      $grpc.ClientMethod<$1.SendMessageReq, $1.SendMessageResp>(
          '/pb.LogicInt/SendMessage',
          ($1.SendMessageReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.SendMessageResp.fromBuffer(value));
  static final _$getDevice =
      $grpc.ClientMethod<$2.GetDeviceReq, $2.GetDeviceResp>(
          '/pb.LogicInt/GetDevice',
          ($2.GetDeviceReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.GetDeviceResp.fromBuffer(value));
  static final _$serverStop =
      $grpc.ClientMethod<$2.ServerStopReq, $2.ServerStopResp>(
          '/pb.LogicInt/ServerStop',
          ($2.ServerStopReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.ServerStopResp.fromBuffer(value));

  LogicIntClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.ConnSignInResp> connSignIn($2.ConnSignInReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$connSignIn, request, options: options);
  }

  $grpc.ResponseFuture<$2.SyncResp> sync($2.SyncReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$sync, request, options: options);
  }

  $grpc.ResponseFuture<$2.MessageACKResp> messageACK($2.MessageACKReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$messageACK, request, options: options);
  }

  $grpc.ResponseFuture<$2.OfflineResp> offline($2.OfflineReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$offline, request, options: options);
  }

  $grpc.ResponseFuture<$1.SendMessageResp> sendMessage(
      $1.SendMessageReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$sendMessage, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetDeviceResp> getDevice($2.GetDeviceReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getDevice, request, options: options);
  }

  $grpc.ResponseFuture<$2.ServerStopResp> serverStop($2.ServerStopReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$serverStop, request, options: options);
  }
}

abstract class LogicIntServiceBase extends $grpc.Service {
  $core.String get $name => 'pb.LogicInt';

  LogicIntServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.ConnSignInReq, $2.ConnSignInResp>(
        'ConnSignIn',
        connSignIn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ConnSignInReq.fromBuffer(value),
        ($2.ConnSignInResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.SyncReq, $2.SyncResp>(
        'Sync',
        sync_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.SyncReq.fromBuffer(value),
        ($2.SyncResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.MessageACKReq, $2.MessageACKResp>(
        'MessageACK',
        messageACK_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.MessageACKReq.fromBuffer(value),
        ($2.MessageACKResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.OfflineReq, $2.OfflineResp>(
        'Offline',
        offline_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.OfflineReq.fromBuffer(value),
        ($2.OfflineResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SendMessageReq, $1.SendMessageResp>(
        'SendMessage',
        sendMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SendMessageReq.fromBuffer(value),
        ($1.SendMessageResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetDeviceReq, $2.GetDeviceResp>(
        'GetDevice',
        getDevice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetDeviceReq.fromBuffer(value),
        ($2.GetDeviceResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ServerStopReq, $2.ServerStopResp>(
        'ServerStop',
        serverStop_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ServerStopReq.fromBuffer(value),
        ($2.ServerStopResp value) => value.writeToBuffer()));
  }

  $async.Future<$2.ConnSignInResp> connSignIn_Pre(
      $grpc.ServiceCall call, $async.Future<$2.ConnSignInReq> request) async {
    return connSignIn(call, await request);
  }

  $async.Future<$2.SyncResp> sync_Pre(
      $grpc.ServiceCall call, $async.Future<$2.SyncReq> request) async {
    return sync(call, await request);
  }

  $async.Future<$2.MessageACKResp> messageACK_Pre(
      $grpc.ServiceCall call, $async.Future<$2.MessageACKReq> request) async {
    return messageACK(call, await request);
  }

  $async.Future<$2.OfflineResp> offline_Pre(
      $grpc.ServiceCall call, $async.Future<$2.OfflineReq> request) async {
    return offline(call, await request);
  }

  $async.Future<$1.SendMessageResp> sendMessage_Pre(
      $grpc.ServiceCall call, $async.Future<$1.SendMessageReq> request) async {
    return sendMessage(call, await request);
  }

  $async.Future<$2.GetDeviceResp> getDevice_Pre(
      $grpc.ServiceCall call, $async.Future<$2.GetDeviceReq> request) async {
    return getDevice(call, await request);
  }

  $async.Future<$2.ServerStopResp> serverStop_Pre(
      $grpc.ServiceCall call, $async.Future<$2.ServerStopReq> request) async {
    return serverStop(call, await request);
  }

  $async.Future<$2.ConnSignInResp> connSignIn(
      $grpc.ServiceCall call, $2.ConnSignInReq request);
  $async.Future<$2.SyncResp> sync($grpc.ServiceCall call, $2.SyncReq request);
  $async.Future<$2.MessageACKResp> messageACK(
      $grpc.ServiceCall call, $2.MessageACKReq request);
  $async.Future<$2.OfflineResp> offline(
      $grpc.ServiceCall call, $2.OfflineReq request);
  $async.Future<$1.SendMessageResp> sendMessage(
      $grpc.ServiceCall call, $1.SendMessageReq request);
  $async.Future<$2.GetDeviceResp> getDevice(
      $grpc.ServiceCall call, $2.GetDeviceReq request);
  $async.Future<$2.ServerStopResp> serverStop(
      $grpc.ServiceCall call, $2.ServerStopReq request);
}
