///
//  Generated code. Do not modify.
//  source: business.ext.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'business.ext.pb.dart' as $0;
import 'common.ext.pb.dart' as $1;
export 'business.ext.pb.dart';

class BusinessExtClient extends $grpc.Client {
  static final _$signIn = $grpc.ClientMethod<$0.SignInReq, $0.SignInResp>(
      '/pb.BusinessExt/SignIn',
      ($0.SignInReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SignInResp.fromBuffer(value));
  static final _$getUser = $grpc.ClientMethod<$0.GetUserReq, $0.GetUserResp>(
      '/pb.BusinessExt/GetUser',
      ($0.GetUserReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetUserResp.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$0.UpdateUserReq, $1.Empty>(
      '/pb.BusinessExt/UpdateUser',
      ($0.UpdateUserReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$searchUser =
      $grpc.ClientMethod<$0.SearchUserReq, $0.SearchUserResp>(
          '/pb.BusinessExt/SearchUser',
          ($0.SearchUserReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SearchUserResp.fromBuffer(value));

  BusinessExtClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.SignInResp> signIn($0.SignInReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signIn, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetUserResp> getUser($0.GetUserReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> updateUser($0.UpdateUserReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.SearchUserResp> searchUser($0.SearchUserReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchUser, request, options: options);
  }
}

abstract class BusinessExtServiceBase extends $grpc.Service {
  $core.String get $name => 'pb.BusinessExt';

  BusinessExtServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SignInReq, $0.SignInResp>(
        'SignIn',
        signIn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SignInReq.fromBuffer(value),
        ($0.SignInResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetUserReq, $0.GetUserResp>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetUserReq.fromBuffer(value),
        ($0.GetUserResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateUserReq, $1.Empty>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateUserReq.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SearchUserReq, $0.SearchUserResp>(
        'SearchUser',
        searchUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SearchUserReq.fromBuffer(value),
        ($0.SearchUserResp value) => value.writeToBuffer()));
  }

  $async.Future<$0.SignInResp> signIn_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SignInReq> request) async {
    return signIn(call, await request);
  }

  $async.Future<$0.GetUserResp> getUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetUserReq> request) async {
    return getUser(call, await request);
  }

  $async.Future<$1.Empty> updateUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UpdateUserReq> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$0.SearchUserResp> searchUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SearchUserReq> request) async {
    return searchUser(call, await request);
  }

  $async.Future<$0.SignInResp> signIn(
      $grpc.ServiceCall call, $0.SignInReq request);
  $async.Future<$0.GetUserResp> getUser(
      $grpc.ServiceCall call, $0.GetUserReq request);
  $async.Future<$1.Empty> updateUser(
      $grpc.ServiceCall call, $0.UpdateUserReq request);
  $async.Future<$0.SearchUserResp> searchUser(
      $grpc.ServiceCall call, $0.SearchUserReq request);
}
