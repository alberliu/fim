///
//  Generated code. Do not modify.
//  source: user.ext.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'user.ext.pb.dart' as $1;
export 'user.ext.pb.dart';

class UserExtClient extends $grpc.Client {
  static final _$signIn = $grpc.ClientMethod<$1.SignInReq, $1.SignInResp>(
      '/pb.UserExt/SignIn',
      ($1.SignInReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.SignInResp.fromBuffer(value));
  static final _$getUser = $grpc.ClientMethod<$1.GetUserReq, $1.GetUserResp>(
      '/pb.UserExt/GetUser',
      ($1.GetUserReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetUserResp.fromBuffer(value));
  static final _$updateUser =
      $grpc.ClientMethod<$1.UpdateUserReq, $1.UpdateUserResp>(
          '/pb.UserExt/UpdateUser',
          ($1.UpdateUserReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.UpdateUserResp.fromBuffer(value));
  static final _$searchUser =
      $grpc.ClientMethod<$1.SearchUserReq, $1.SearchUserResp>(
          '/pb.UserExt/SearchUser',
          ($1.SearchUserReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.SearchUserResp.fromBuffer(value));

  UserExtClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.SignInResp> signIn($1.SignInReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$signIn, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetUserResp> getUser($1.GetUserReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$1.UpdateUserResp> updateUser($1.UpdateUserReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$1.SearchUserResp> searchUser($1.SearchUserReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$searchUser, request, options: options);
  }
}

abstract class UserExtServiceBase extends $grpc.Service {
  $core.String get $name => 'pb.UserExt';

  UserExtServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.SignInReq, $1.SignInResp>(
        'SignIn',
        signIn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SignInReq.fromBuffer(value),
        ($1.SignInResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetUserReq, $1.GetUserResp>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetUserReq.fromBuffer(value),
        ($1.GetUserResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdateUserReq, $1.UpdateUserResp>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UpdateUserReq.fromBuffer(value),
        ($1.UpdateUserResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SearchUserReq, $1.SearchUserResp>(
        'SearchUser',
        searchUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SearchUserReq.fromBuffer(value),
        ($1.SearchUserResp value) => value.writeToBuffer()));
  }

  $async.Future<$1.SignInResp> signIn_Pre(
      $grpc.ServiceCall call, $async.Future<$1.SignInReq> request) async {
    return signIn(call, await request);
  }

  $async.Future<$1.GetUserResp> getUser_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetUserReq> request) async {
    return getUser(call, await request);
  }

  $async.Future<$1.UpdateUserResp> updateUser_Pre(
      $grpc.ServiceCall call, $async.Future<$1.UpdateUserReq> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$1.SearchUserResp> searchUser_Pre(
      $grpc.ServiceCall call, $async.Future<$1.SearchUserReq> request) async {
    return searchUser(call, await request);
  }

  $async.Future<$1.SignInResp> signIn(
      $grpc.ServiceCall call, $1.SignInReq request);
  $async.Future<$1.GetUserResp> getUser(
      $grpc.ServiceCall call, $1.GetUserReq request);
  $async.Future<$1.UpdateUserResp> updateUser(
      $grpc.ServiceCall call, $1.UpdateUserReq request);
  $async.Future<$1.SearchUserResp> searchUser(
      $grpc.ServiceCall call, $1.SearchUserReq request);
}
