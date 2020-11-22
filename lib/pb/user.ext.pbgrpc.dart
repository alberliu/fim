///
//  Generated code. Do not modify.
//  source: user.ext.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'user.ext.pb.dart' as $3;
export 'user.ext.pb.dart';

class UserExtClient extends $grpc.Client {
  static final _$signIn = $grpc.ClientMethod<$3.SignInReq, $3.SignInResp>(
      '/pb.UserExt/SignIn',
      ($3.SignInReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.SignInResp.fromBuffer(value));
  static final _$getUser = $grpc.ClientMethod<$3.GetUserReq, $3.GetUserResp>(
      '/pb.UserExt/GetUser',
      ($3.GetUserReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetUserResp.fromBuffer(value));
  static final _$updateUser =
      $grpc.ClientMethod<$3.UpdateUserReq, $3.UpdateUserResp>(
          '/pb.UserExt/UpdateUser',
          ($3.UpdateUserReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.UpdateUserResp.fromBuffer(value));
  static final _$searchUser =
      $grpc.ClientMethod<$3.SearchUserReq, $3.SearchUserResp>(
          '/pb.UserExt/SearchUser',
          ($3.SearchUserReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.SearchUserResp.fromBuffer(value));

  UserExtClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$3.SignInResp> signIn($3.SignInReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$signIn, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetUserResp> getUser($3.GetUserReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdateUserResp> updateUser($3.UpdateUserReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$3.SearchUserResp> searchUser($3.SearchUserReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$searchUser, request, options: options);
  }
}

abstract class UserExtServiceBase extends $grpc.Service {
  $core.String get $name => 'pb.UserExt';

  UserExtServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.SignInReq, $3.SignInResp>(
        'SignIn',
        signIn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.SignInReq.fromBuffer(value),
        ($3.SignInResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetUserReq, $3.GetUserResp>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetUserReq.fromBuffer(value),
        ($3.GetUserResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdateUserReq, $3.UpdateUserResp>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdateUserReq.fromBuffer(value),
        ($3.UpdateUserResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.SearchUserReq, $3.SearchUserResp>(
        'SearchUser',
        searchUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.SearchUserReq.fromBuffer(value),
        ($3.SearchUserResp value) => value.writeToBuffer()));
  }

  $async.Future<$3.SignInResp> signIn_Pre(
      $grpc.ServiceCall call, $async.Future<$3.SignInReq> request) async {
    return signIn(call, await request);
  }

  $async.Future<$3.GetUserResp> getUser_Pre(
      $grpc.ServiceCall call, $async.Future<$3.GetUserReq> request) async {
    return getUser(call, await request);
  }

  $async.Future<$3.UpdateUserResp> updateUser_Pre(
      $grpc.ServiceCall call, $async.Future<$3.UpdateUserReq> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$3.SearchUserResp> searchUser_Pre(
      $grpc.ServiceCall call, $async.Future<$3.SearchUserReq> request) async {
    return searchUser(call, await request);
  }

  $async.Future<$3.SignInResp> signIn(
      $grpc.ServiceCall call, $3.SignInReq request);
  $async.Future<$3.GetUserResp> getUser(
      $grpc.ServiceCall call, $3.GetUserReq request);
  $async.Future<$3.UpdateUserResp> updateUser(
      $grpc.ServiceCall call, $3.UpdateUserReq request);
  $async.Future<$3.SearchUserResp> searchUser(
      $grpc.ServiceCall call, $3.SearchUserReq request);
}
