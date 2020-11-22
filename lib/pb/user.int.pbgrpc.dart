///
//  Generated code. Do not modify.
//  source: user.int.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'user.int.pb.dart' as $4;
import 'user.ext.pb.dart' as $3;
export 'user.int.pb.dart';

class UserIntClient extends $grpc.Client {
  static final _$auth = $grpc.ClientMethod<$4.AuthReq, $4.AuthResp>(
      '/pb.UserInt/Auth',
      ($4.AuthReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.AuthResp.fromBuffer(value));
  static final _$getUser = $grpc.ClientMethod<$3.GetUserReq, $3.GetUserResp>(
      '/pb.UserInt/GetUser',
      ($3.GetUserReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetUserResp.fromBuffer(value));
  static final _$getUsers = $grpc.ClientMethod<$4.GetUsersReq, $4.GetUsersResp>(
      '/pb.UserInt/GetUsers',
      ($4.GetUsersReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetUsersResp.fromBuffer(value));

  UserIntClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.AuthResp> auth($4.AuthReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$auth, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetUserResp> getUser($3.GetUserReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetUsersResp> getUsers($4.GetUsersReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getUsers, request, options: options);
  }
}

abstract class UserIntServiceBase extends $grpc.Service {
  $core.String get $name => 'pb.UserInt';

  UserIntServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.AuthReq, $4.AuthResp>(
        'Auth',
        auth_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.AuthReq.fromBuffer(value),
        ($4.AuthResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetUserReq, $3.GetUserResp>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetUserReq.fromBuffer(value),
        ($3.GetUserResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetUsersReq, $4.GetUsersResp>(
        'GetUsers',
        getUsers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetUsersReq.fromBuffer(value),
        ($4.GetUsersResp value) => value.writeToBuffer()));
  }

  $async.Future<$4.AuthResp> auth_Pre(
      $grpc.ServiceCall call, $async.Future<$4.AuthReq> request) async {
    return auth(call, await request);
  }

  $async.Future<$3.GetUserResp> getUser_Pre(
      $grpc.ServiceCall call, $async.Future<$3.GetUserReq> request) async {
    return getUser(call, await request);
  }

  $async.Future<$4.GetUsersResp> getUsers_Pre(
      $grpc.ServiceCall call, $async.Future<$4.GetUsersReq> request) async {
    return getUsers(call, await request);
  }

  $async.Future<$4.AuthResp> auth($grpc.ServiceCall call, $4.AuthReq request);
  $async.Future<$3.GetUserResp> getUser(
      $grpc.ServiceCall call, $3.GetUserReq request);
  $async.Future<$4.GetUsersResp> getUsers(
      $grpc.ServiceCall call, $4.GetUsersReq request);
}
