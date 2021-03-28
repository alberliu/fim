///
//  Generated code. Do not modify.
//  source: logic.ext.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'logic.ext.pb.dart' as $1;
export 'logic.ext.pb.dart';

class LogicExtClient extends $grpc.Client {
  static final _$registerDevice =
      $grpc.ClientMethod<$1.RegisterDeviceReq, $1.RegisterDeviceResp>(
          '/pb.LogicExt/RegisterDevice',
          ($1.RegisterDeviceReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.RegisterDeviceResp.fromBuffer(value));
  static final _$sendMessage =
      $grpc.ClientMethod<$1.SendMessageReq, $1.SendMessageResp>(
          '/pb.LogicExt/SendMessage',
          ($1.SendMessageReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.SendMessageResp.fromBuffer(value));
  static final _$addFriend =
      $grpc.ClientMethod<$1.AddFriendReq, $1.AddFriendResp>(
          '/pb.LogicExt/AddFriend',
          ($1.AddFriendReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.AddFriendResp.fromBuffer(value));
  static final _$agreeAddFriend =
      $grpc.ClientMethod<$1.AgreeAddFriendReq, $1.AgreeAddFriendResp>(
          '/pb.LogicExt/AgreeAddFriend',
          ($1.AgreeAddFriendReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.AgreeAddFriendResp.fromBuffer(value));
  static final _$setFriend =
      $grpc.ClientMethod<$1.SetFriendReq, $1.SetFriendResp>(
          '/pb.LogicExt/SetFriend',
          ($1.SetFriendReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.SetFriendResp.fromBuffer(value));
  static final _$getFriends =
      $grpc.ClientMethod<$1.GetFriendsReq, $1.GetFriendsResp>(
          '/pb.LogicExt/GetFriends',
          ($1.GetFriendsReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.GetFriendsResp.fromBuffer(value));
  static final _$createGroup =
      $grpc.ClientMethod<$1.CreateGroupReq, $1.CreateGroupResp>(
          '/pb.LogicExt/CreateGroup',
          ($1.CreateGroupReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.CreateGroupResp.fromBuffer(value));
  static final _$updateGroup =
      $grpc.ClientMethod<$1.UpdateGroupReq, $1.UpdateGroupResp>(
          '/pb.LogicExt/UpdateGroup',
          ($1.UpdateGroupReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.UpdateGroupResp.fromBuffer(value));
  static final _$getGroup = $grpc.ClientMethod<$1.GetGroupReq, $1.GetGroupResp>(
      '/pb.LogicExt/GetGroup',
      ($1.GetGroupReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetGroupResp.fromBuffer(value));
  static final _$getGroups =
      $grpc.ClientMethod<$1.GetGroupsReq, $1.GetGroupsResp>(
          '/pb.LogicExt/GetGroups',
          ($1.GetGroupsReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.GetGroupsResp.fromBuffer(value));
  static final _$addGroupMembers =
      $grpc.ClientMethod<$1.AddGroupMembersReq, $1.AddGroupMembersResp>(
          '/pb.LogicExt/AddGroupMembers',
          ($1.AddGroupMembersReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.AddGroupMembersResp.fromBuffer(value));
  static final _$updateGroupMember =
      $grpc.ClientMethod<$1.UpdateGroupMemberReq, $1.UpdateGroupMemberResp>(
          '/pb.LogicExt/UpdateGroupMember',
          ($1.UpdateGroupMemberReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.UpdateGroupMemberResp.fromBuffer(value));
  static final _$deleteGroupMember =
      $grpc.ClientMethod<$1.DeleteGroupMemberReq, $1.DeleteGroupMemberResp>(
          '/pb.LogicExt/DeleteGroupMember',
          ($1.DeleteGroupMemberReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.DeleteGroupMemberResp.fromBuffer(value));
  static final _$getGroupMembers =
      $grpc.ClientMethod<$1.GetGroupMembersReq, $1.GetGroupMembersResp>(
          '/pb.LogicExt/GetGroupMembers',
          ($1.GetGroupMembersReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetGroupMembersResp.fromBuffer(value));

  LogicExtClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.RegisterDeviceResp> registerDevice(
      $1.RegisterDeviceReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerDevice, request, options: options);
  }

  $grpc.ResponseFuture<$1.SendMessageResp> sendMessage(
      $1.SendMessageReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendMessage, request, options: options);
  }

  $grpc.ResponseFuture<$1.AddFriendResp> addFriend($1.AddFriendReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addFriend, request, options: options);
  }

  $grpc.ResponseFuture<$1.AgreeAddFriendResp> agreeAddFriend(
      $1.AgreeAddFriendReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$agreeAddFriend, request, options: options);
  }

  $grpc.ResponseFuture<$1.SetFriendResp> setFriend($1.SetFriendReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setFriend, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetFriendsResp> getFriends($1.GetFriendsReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFriends, request, options: options);
  }

  $grpc.ResponseFuture<$1.CreateGroupResp> createGroup(
      $1.CreateGroupReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createGroup, request, options: options);
  }

  $grpc.ResponseFuture<$1.UpdateGroupResp> updateGroup(
      $1.UpdateGroupReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateGroup, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetGroupResp> getGroup($1.GetGroupReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getGroup, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetGroupsResp> getGroups($1.GetGroupsReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getGroups, request, options: options);
  }

  $grpc.ResponseFuture<$1.AddGroupMembersResp> addGroupMembers(
      $1.AddGroupMembersReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addGroupMembers, request, options: options);
  }

  $grpc.ResponseFuture<$1.UpdateGroupMemberResp> updateGroupMember(
      $1.UpdateGroupMemberReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateGroupMember, request, options: options);
  }

  $grpc.ResponseFuture<$1.DeleteGroupMemberResp> deleteGroupMember(
      $1.DeleteGroupMemberReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteGroupMember, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetGroupMembersResp> getGroupMembers(
      $1.GetGroupMembersReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getGroupMembers, request, options: options);
  }
}

abstract class LogicExtServiceBase extends $grpc.Service {
  $core.String get $name => 'pb.LogicExt';

  LogicExtServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.RegisterDeviceReq, $1.RegisterDeviceResp>(
        'RegisterDevice',
        registerDevice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.RegisterDeviceReq.fromBuffer(value),
        ($1.RegisterDeviceResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SendMessageReq, $1.SendMessageResp>(
        'SendMessage',
        sendMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SendMessageReq.fromBuffer(value),
        ($1.SendMessageResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AddFriendReq, $1.AddFriendResp>(
        'AddFriend',
        addFriend_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.AddFriendReq.fromBuffer(value),
        ($1.AddFriendResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AgreeAddFriendReq, $1.AgreeAddFriendResp>(
        'AgreeAddFriend',
        agreeAddFriend_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.AgreeAddFriendReq.fromBuffer(value),
        ($1.AgreeAddFriendResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SetFriendReq, $1.SetFriendResp>(
        'SetFriend',
        setFriend_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SetFriendReq.fromBuffer(value),
        ($1.SetFriendResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetFriendsReq, $1.GetFriendsResp>(
        'GetFriends',
        getFriends_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetFriendsReq.fromBuffer(value),
        ($1.GetFriendsResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CreateGroupReq, $1.CreateGroupResp>(
        'CreateGroup',
        createGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CreateGroupReq.fromBuffer(value),
        ($1.CreateGroupResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdateGroupReq, $1.UpdateGroupResp>(
        'UpdateGroup',
        updateGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UpdateGroupReq.fromBuffer(value),
        ($1.UpdateGroupResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetGroupReq, $1.GetGroupResp>(
        'GetGroup',
        getGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetGroupReq.fromBuffer(value),
        ($1.GetGroupResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetGroupsReq, $1.GetGroupsResp>(
        'GetGroups',
        getGroups_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetGroupsReq.fromBuffer(value),
        ($1.GetGroupsResp value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.AddGroupMembersReq, $1.AddGroupMembersResp>(
            'AddGroupMembers',
            addGroupMembers_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.AddGroupMembersReq.fromBuffer(value),
            ($1.AddGroupMembersResp value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.UpdateGroupMemberReq, $1.UpdateGroupMemberResp>(
            'UpdateGroupMember',
            updateGroupMember_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.UpdateGroupMemberReq.fromBuffer(value),
            ($1.UpdateGroupMemberResp value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.DeleteGroupMemberReq, $1.DeleteGroupMemberResp>(
            'DeleteGroupMember',
            deleteGroupMember_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.DeleteGroupMemberReq.fromBuffer(value),
            ($1.DeleteGroupMemberResp value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.GetGroupMembersReq, $1.GetGroupMembersResp>(
            'GetGroupMembers',
            getGroupMembers_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.GetGroupMembersReq.fromBuffer(value),
            ($1.GetGroupMembersResp value) => value.writeToBuffer()));
  }

  $async.Future<$1.RegisterDeviceResp> registerDevice_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.RegisterDeviceReq> request) async {
    return registerDevice(call, await request);
  }

  $async.Future<$1.SendMessageResp> sendMessage_Pre(
      $grpc.ServiceCall call, $async.Future<$1.SendMessageReq> request) async {
    return sendMessage(call, await request);
  }

  $async.Future<$1.AddFriendResp> addFriend_Pre(
      $grpc.ServiceCall call, $async.Future<$1.AddFriendReq> request) async {
    return addFriend(call, await request);
  }

  $async.Future<$1.AgreeAddFriendResp> agreeAddFriend_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.AgreeAddFriendReq> request) async {
    return agreeAddFriend(call, await request);
  }

  $async.Future<$1.SetFriendResp> setFriend_Pre(
      $grpc.ServiceCall call, $async.Future<$1.SetFriendReq> request) async {
    return setFriend(call, await request);
  }

  $async.Future<$1.GetFriendsResp> getFriends_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetFriendsReq> request) async {
    return getFriends(call, await request);
  }

  $async.Future<$1.CreateGroupResp> createGroup_Pre(
      $grpc.ServiceCall call, $async.Future<$1.CreateGroupReq> request) async {
    return createGroup(call, await request);
  }

  $async.Future<$1.UpdateGroupResp> updateGroup_Pre(
      $grpc.ServiceCall call, $async.Future<$1.UpdateGroupReq> request) async {
    return updateGroup(call, await request);
  }

  $async.Future<$1.GetGroupResp> getGroup_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetGroupReq> request) async {
    return getGroup(call, await request);
  }

  $async.Future<$1.GetGroupsResp> getGroups_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetGroupsReq> request) async {
    return getGroups(call, await request);
  }

  $async.Future<$1.AddGroupMembersResp> addGroupMembers_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.AddGroupMembersReq> request) async {
    return addGroupMembers(call, await request);
  }

  $async.Future<$1.UpdateGroupMemberResp> updateGroupMember_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.UpdateGroupMemberReq> request) async {
    return updateGroupMember(call, await request);
  }

  $async.Future<$1.DeleteGroupMemberResp> deleteGroupMember_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.DeleteGroupMemberReq> request) async {
    return deleteGroupMember(call, await request);
  }

  $async.Future<$1.GetGroupMembersResp> getGroupMembers_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.GetGroupMembersReq> request) async {
    return getGroupMembers(call, await request);
  }

  $async.Future<$1.RegisterDeviceResp> registerDevice(
      $grpc.ServiceCall call, $1.RegisterDeviceReq request);
  $async.Future<$1.SendMessageResp> sendMessage(
      $grpc.ServiceCall call, $1.SendMessageReq request);
  $async.Future<$1.AddFriendResp> addFriend(
      $grpc.ServiceCall call, $1.AddFriendReq request);
  $async.Future<$1.AgreeAddFriendResp> agreeAddFriend(
      $grpc.ServiceCall call, $1.AgreeAddFriendReq request);
  $async.Future<$1.SetFriendResp> setFriend(
      $grpc.ServiceCall call, $1.SetFriendReq request);
  $async.Future<$1.GetFriendsResp> getFriends(
      $grpc.ServiceCall call, $1.GetFriendsReq request);
  $async.Future<$1.CreateGroupResp> createGroup(
      $grpc.ServiceCall call, $1.CreateGroupReq request);
  $async.Future<$1.UpdateGroupResp> updateGroup(
      $grpc.ServiceCall call, $1.UpdateGroupReq request);
  $async.Future<$1.GetGroupResp> getGroup(
      $grpc.ServiceCall call, $1.GetGroupReq request);
  $async.Future<$1.GetGroupsResp> getGroups(
      $grpc.ServiceCall call, $1.GetGroupsReq request);
  $async.Future<$1.AddGroupMembersResp> addGroupMembers(
      $grpc.ServiceCall call, $1.AddGroupMembersReq request);
  $async.Future<$1.UpdateGroupMemberResp> updateGroupMember(
      $grpc.ServiceCall call, $1.UpdateGroupMemberReq request);
  $async.Future<$1.DeleteGroupMemberResp> deleteGroupMember(
      $grpc.ServiceCall call, $1.DeleteGroupMemberReq request);
  $async.Future<$1.GetGroupMembersResp> getGroupMembers(
      $grpc.ServiceCall call, $1.GetGroupMembersReq request);
}
