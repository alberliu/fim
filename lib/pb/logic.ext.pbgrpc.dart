///
//  Generated code. Do not modify.
//  source: logic.ext.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'logic.ext.pb.dart' as $0;
export 'logic.ext.pb.dart';

class LogicExtClient extends $grpc.Client {
  static final _$registerDevice =
      $grpc.ClientMethod<$0.RegisterDeviceReq, $0.RegisterDeviceResp>(
          '/pb.LogicExt/RegisterDevice',
          ($0.RegisterDeviceReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RegisterDeviceResp.fromBuffer(value));
  static final _$sendMessage =
      $grpc.ClientMethod<$0.SendMessageReq, $0.SendMessageResp>(
          '/pb.LogicExt/SendMessage',
          ($0.SendMessageReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SendMessageResp.fromBuffer(value));
  static final _$addFriend =
      $grpc.ClientMethod<$0.AddFriendReq, $0.AddFriendResp>(
          '/pb.LogicExt/AddFriend',
          ($0.AddFriendReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.AddFriendResp.fromBuffer(value));
  static final _$agreeAddFriend =
      $grpc.ClientMethod<$0.AgreeAddFriendReq, $0.AgreeAddFriendResp>(
          '/pb.LogicExt/AgreeAddFriend',
          ($0.AgreeAddFriendReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AgreeAddFriendResp.fromBuffer(value));
  static final _$setFriend =
      $grpc.ClientMethod<$0.SetFriendReq, $0.SetFriendResp>(
          '/pb.LogicExt/SetFriend',
          ($0.SetFriendReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SetFriendResp.fromBuffer(value));
  static final _$getFriends =
      $grpc.ClientMethod<$0.GetFriendsReq, $0.GetFriendsResp>(
          '/pb.LogicExt/GetFriends',
          ($0.GetFriendsReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.GetFriendsResp.fromBuffer(value));
  static final _$createGroup =
      $grpc.ClientMethod<$0.CreateGroupReq, $0.CreateGroupResp>(
          '/pb.LogicExt/CreateGroup',
          ($0.CreateGroupReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CreateGroupResp.fromBuffer(value));
  static final _$updateGroup =
      $grpc.ClientMethod<$0.UpdateGroupReq, $0.UpdateGroupResp>(
          '/pb.LogicExt/UpdateGroup',
          ($0.UpdateGroupReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UpdateGroupResp.fromBuffer(value));
  static final _$getGroup = $grpc.ClientMethod<$0.GetGroupReq, $0.GetGroupResp>(
      '/pb.LogicExt/GetGroup',
      ($0.GetGroupReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetGroupResp.fromBuffer(value));
  static final _$getGroups =
      $grpc.ClientMethod<$0.GetGroupsReq, $0.GetGroupsResp>(
          '/pb.LogicExt/GetGroups',
          ($0.GetGroupsReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.GetGroupsResp.fromBuffer(value));
  static final _$addGroupMembers =
      $grpc.ClientMethod<$0.AddGroupMembersReq, $0.AddGroupMembersResp>(
          '/pb.LogicExt/AddGroupMembers',
          ($0.AddGroupMembersReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AddGroupMembersResp.fromBuffer(value));
  static final _$updateGroupMember =
      $grpc.ClientMethod<$0.UpdateGroupMemberReq, $0.UpdateGroupMemberResp>(
          '/pb.LogicExt/UpdateGroupMember',
          ($0.UpdateGroupMemberReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UpdateGroupMemberResp.fromBuffer(value));
  static final _$deleteGroupMember =
      $grpc.ClientMethod<$0.DeleteGroupMemberReq, $0.DeleteGroupMemberResp>(
          '/pb.LogicExt/DeleteGroupMember',
          ($0.DeleteGroupMemberReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DeleteGroupMemberResp.fromBuffer(value));
  static final _$getGroupMembers =
      $grpc.ClientMethod<$0.GetGroupMembersReq, $0.GetGroupMembersResp>(
          '/pb.LogicExt/GetGroupMembers',
          ($0.GetGroupMembersReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetGroupMembersResp.fromBuffer(value));

  LogicExtClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.RegisterDeviceResp> registerDevice(
      $0.RegisterDeviceReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$registerDevice, request, options: options);
  }

  $grpc.ResponseFuture<$0.SendMessageResp> sendMessage(
      $0.SendMessageReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$sendMessage, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddFriendResp> addFriend($0.AddFriendReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$addFriend, request, options: options);
  }

  $grpc.ResponseFuture<$0.AgreeAddFriendResp> agreeAddFriend(
      $0.AgreeAddFriendReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$agreeAddFriend, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetFriendResp> setFriend($0.SetFriendReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$setFriend, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetFriendsResp> getFriends($0.GetFriendsReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getFriends, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateGroupResp> createGroup(
      $0.CreateGroupReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$createGroup, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateGroupResp> updateGroup(
      $0.UpdateGroupReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$updateGroup, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetGroupResp> getGroup($0.GetGroupReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getGroup, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetGroupsResp> getGroups($0.GetGroupsReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getGroups, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddGroupMembersResp> addGroupMembers(
      $0.AddGroupMembersReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$addGroupMembers, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateGroupMemberResp> updateGroupMember(
      $0.UpdateGroupMemberReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$updateGroupMember, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteGroupMemberResp> deleteGroupMember(
      $0.DeleteGroupMemberReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$deleteGroupMember, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetGroupMembersResp> getGroupMembers(
      $0.GetGroupMembersReq request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getGroupMembers, request, options: options);
  }
}

abstract class LogicExtServiceBase extends $grpc.Service {
  $core.String get $name => 'pb.LogicExt';

  LogicExtServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.RegisterDeviceReq, $0.RegisterDeviceResp>(
        'RegisterDevice',
        registerDevice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RegisterDeviceReq.fromBuffer(value),
        ($0.RegisterDeviceResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SendMessageReq, $0.SendMessageResp>(
        'SendMessage',
        sendMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SendMessageReq.fromBuffer(value),
        ($0.SendMessageResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddFriendReq, $0.AddFriendResp>(
        'AddFriend',
        addFriend_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddFriendReq.fromBuffer(value),
        ($0.AddFriendResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AgreeAddFriendReq, $0.AgreeAddFriendResp>(
        'AgreeAddFriend',
        agreeAddFriend_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AgreeAddFriendReq.fromBuffer(value),
        ($0.AgreeAddFriendResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetFriendReq, $0.SetFriendResp>(
        'SetFriend',
        setFriend_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetFriendReq.fromBuffer(value),
        ($0.SetFriendResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetFriendsReq, $0.GetFriendsResp>(
        'GetFriends',
        getFriends_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetFriendsReq.fromBuffer(value),
        ($0.GetFriendsResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateGroupReq, $0.CreateGroupResp>(
        'CreateGroup',
        createGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateGroupReq.fromBuffer(value),
        ($0.CreateGroupResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateGroupReq, $0.UpdateGroupResp>(
        'UpdateGroup',
        updateGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateGroupReq.fromBuffer(value),
        ($0.UpdateGroupResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetGroupReq, $0.GetGroupResp>(
        'GetGroup',
        getGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetGroupReq.fromBuffer(value),
        ($0.GetGroupResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetGroupsReq, $0.GetGroupsResp>(
        'GetGroups',
        getGroups_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetGroupsReq.fromBuffer(value),
        ($0.GetGroupsResp value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AddGroupMembersReq, $0.AddGroupMembersResp>(
            'AddGroupMembers',
            addGroupMembers_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AddGroupMembersReq.fromBuffer(value),
            ($0.AddGroupMembersResp value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.UpdateGroupMemberReq, $0.UpdateGroupMemberResp>(
            'UpdateGroupMember',
            updateGroupMember_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UpdateGroupMemberReq.fromBuffer(value),
            ($0.UpdateGroupMemberResp value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.DeleteGroupMemberReq, $0.DeleteGroupMemberResp>(
            'DeleteGroupMember',
            deleteGroupMember_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.DeleteGroupMemberReq.fromBuffer(value),
            ($0.DeleteGroupMemberResp value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetGroupMembersReq, $0.GetGroupMembersResp>(
            'GetGroupMembers',
            getGroupMembers_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetGroupMembersReq.fromBuffer(value),
            ($0.GetGroupMembersResp value) => value.writeToBuffer()));
  }

  $async.Future<$0.RegisterDeviceResp> registerDevice_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.RegisterDeviceReq> request) async {
    return registerDevice(call, await request);
  }

  $async.Future<$0.SendMessageResp> sendMessage_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SendMessageReq> request) async {
    return sendMessage(call, await request);
  }

  $async.Future<$0.AddFriendResp> addFriend_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AddFriendReq> request) async {
    return addFriend(call, await request);
  }

  $async.Future<$0.AgreeAddFriendResp> agreeAddFriend_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AgreeAddFriendReq> request) async {
    return agreeAddFriend(call, await request);
  }

  $async.Future<$0.SetFriendResp> setFriend_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SetFriendReq> request) async {
    return setFriend(call, await request);
  }

  $async.Future<$0.GetFriendsResp> getFriends_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetFriendsReq> request) async {
    return getFriends(call, await request);
  }

  $async.Future<$0.CreateGroupResp> createGroup_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CreateGroupReq> request) async {
    return createGroup(call, await request);
  }

  $async.Future<$0.UpdateGroupResp> updateGroup_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UpdateGroupReq> request) async {
    return updateGroup(call, await request);
  }

  $async.Future<$0.GetGroupResp> getGroup_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetGroupReq> request) async {
    return getGroup(call, await request);
  }

  $async.Future<$0.GetGroupsResp> getGroups_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetGroupsReq> request) async {
    return getGroups(call, await request);
  }

  $async.Future<$0.AddGroupMembersResp> addGroupMembers_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AddGroupMembersReq> request) async {
    return addGroupMembers(call, await request);
  }

  $async.Future<$0.UpdateGroupMemberResp> updateGroupMember_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.UpdateGroupMemberReq> request) async {
    return updateGroupMember(call, await request);
  }

  $async.Future<$0.DeleteGroupMemberResp> deleteGroupMember_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.DeleteGroupMemberReq> request) async {
    return deleteGroupMember(call, await request);
  }

  $async.Future<$0.GetGroupMembersResp> getGroupMembers_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetGroupMembersReq> request) async {
    return getGroupMembers(call, await request);
  }

  $async.Future<$0.RegisterDeviceResp> registerDevice(
      $grpc.ServiceCall call, $0.RegisterDeviceReq request);
  $async.Future<$0.SendMessageResp> sendMessage(
      $grpc.ServiceCall call, $0.SendMessageReq request);
  $async.Future<$0.AddFriendResp> addFriend(
      $grpc.ServiceCall call, $0.AddFriendReq request);
  $async.Future<$0.AgreeAddFriendResp> agreeAddFriend(
      $grpc.ServiceCall call, $0.AgreeAddFriendReq request);
  $async.Future<$0.SetFriendResp> setFriend(
      $grpc.ServiceCall call, $0.SetFriendReq request);
  $async.Future<$0.GetFriendsResp> getFriends(
      $grpc.ServiceCall call, $0.GetFriendsReq request);
  $async.Future<$0.CreateGroupResp> createGroup(
      $grpc.ServiceCall call, $0.CreateGroupReq request);
  $async.Future<$0.UpdateGroupResp> updateGroup(
      $grpc.ServiceCall call, $0.UpdateGroupReq request);
  $async.Future<$0.GetGroupResp> getGroup(
      $grpc.ServiceCall call, $0.GetGroupReq request);
  $async.Future<$0.GetGroupsResp> getGroups(
      $grpc.ServiceCall call, $0.GetGroupsReq request);
  $async.Future<$0.AddGroupMembersResp> addGroupMembers(
      $grpc.ServiceCall call, $0.AddGroupMembersReq request);
  $async.Future<$0.UpdateGroupMemberResp> updateGroupMember(
      $grpc.ServiceCall call, $0.UpdateGroupMemberReq request);
  $async.Future<$0.DeleteGroupMemberResp> deleteGroupMember(
      $grpc.ServiceCall call, $0.DeleteGroupMemberReq request);
  $async.Future<$0.GetGroupMembersResp> getGroupMembers(
      $grpc.ServiceCall call, $0.GetGroupMembersReq request);
}
