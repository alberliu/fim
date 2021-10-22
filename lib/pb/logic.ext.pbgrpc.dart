///
//  Generated code. Do not modify.
//  source: logic.ext.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'logic.ext.pb.dart' as $2;
import 'common.ext.pb.dart' as $1;
export 'logic.ext.pb.dart';

class LogicExtClient extends $grpc.Client {
  static final _$registerDevice =
      $grpc.ClientMethod<$2.RegisterDeviceReq, $2.RegisterDeviceResp>(
          '/pb.LogicExt/RegisterDevice',
          ($2.RegisterDeviceReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.RegisterDeviceResp.fromBuffer(value));
  static final _$sendMessage =
      $grpc.ClientMethod<$2.SendMessageReq, $2.SendMessageResp>(
          '/pb.LogicExt/SendMessage',
          ($2.SendMessageReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.SendMessageResp.fromBuffer(value));
  static final _$pushRoom = $grpc.ClientMethod<$2.PushRoomReq, $1.Empty>(
      '/pb.LogicExt/PushRoom',
      ($2.PushRoomReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$addFriend = $grpc.ClientMethod<$2.AddFriendReq, $1.Empty>(
      '/pb.LogicExt/AddFriend',
      ($2.AddFriendReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$agreeAddFriend =
      $grpc.ClientMethod<$2.AgreeAddFriendReq, $1.Empty>(
          '/pb.LogicExt/AgreeAddFriend',
          ($2.AgreeAddFriendReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$setFriend =
      $grpc.ClientMethod<$2.SetFriendReq, $2.SetFriendResp>(
          '/pb.LogicExt/SetFriend',
          ($2.SetFriendReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.SetFriendResp.fromBuffer(value));
  static final _$getFriends = $grpc.ClientMethod<$1.Empty, $2.GetFriendsResp>(
      '/pb.LogicExt/GetFriends',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetFriendsResp.fromBuffer(value));
  static final _$createGroup =
      $grpc.ClientMethod<$2.CreateGroupReq, $2.CreateGroupResp>(
          '/pb.LogicExt/CreateGroup',
          ($2.CreateGroupReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.CreateGroupResp.fromBuffer(value));
  static final _$updateGroup = $grpc.ClientMethod<$2.UpdateGroupReq, $1.Empty>(
      '/pb.LogicExt/UpdateGroup',
      ($2.UpdateGroupReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$getGroup = $grpc.ClientMethod<$2.GetGroupReq, $2.GetGroupResp>(
      '/pb.LogicExt/GetGroup',
      ($2.GetGroupReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetGroupResp.fromBuffer(value));
  static final _$getGroups = $grpc.ClientMethod<$1.Empty, $2.GetGroupsResp>(
      '/pb.LogicExt/GetGroups',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetGroupsResp.fromBuffer(value));
  static final _$addGroupMembers =
      $grpc.ClientMethod<$2.AddGroupMembersReq, $2.AddGroupMembersResp>(
          '/pb.LogicExt/AddGroupMembers',
          ($2.AddGroupMembersReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.AddGroupMembersResp.fromBuffer(value));
  static final _$updateGroupMember =
      $grpc.ClientMethod<$2.UpdateGroupMemberReq, $1.Empty>(
          '/pb.LogicExt/UpdateGroupMember',
          ($2.UpdateGroupMemberReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$deleteGroupMember =
      $grpc.ClientMethod<$2.DeleteGroupMemberReq, $1.Empty>(
          '/pb.LogicExt/DeleteGroupMember',
          ($2.DeleteGroupMemberReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$getGroupMembers =
      $grpc.ClientMethod<$2.GetGroupMembersReq, $2.GetGroupMembersResp>(
          '/pb.LogicExt/GetGroupMembers',
          ($2.GetGroupMembersReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.GetGroupMembersResp.fromBuffer(value));

  LogicExtClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.RegisterDeviceResp> registerDevice(
      $2.RegisterDeviceReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerDevice, request, options: options);
  }

  $grpc.ResponseFuture<$2.SendMessageResp> sendMessage(
      $2.SendMessageReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendMessage, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> pushRoom($2.PushRoomReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pushRoom, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> addFriend($2.AddFriendReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addFriend, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> agreeAddFriend($2.AgreeAddFriendReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$agreeAddFriend, request, options: options);
  }

  $grpc.ResponseFuture<$2.SetFriendResp> setFriend($2.SetFriendReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setFriend, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetFriendsResp> getFriends($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFriends, request, options: options);
  }

  $grpc.ResponseFuture<$2.CreateGroupResp> createGroup(
      $2.CreateGroupReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createGroup, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> updateGroup($2.UpdateGroupReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateGroup, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetGroupResp> getGroup($2.GetGroupReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getGroup, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetGroupsResp> getGroups($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getGroups, request, options: options);
  }

  $grpc.ResponseFuture<$2.AddGroupMembersResp> addGroupMembers(
      $2.AddGroupMembersReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addGroupMembers, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> updateGroupMember(
      $2.UpdateGroupMemberReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateGroupMember, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> deleteGroupMember(
      $2.DeleteGroupMemberReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteGroupMember, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetGroupMembersResp> getGroupMembers(
      $2.GetGroupMembersReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getGroupMembers, request, options: options);
  }
}

abstract class LogicExtServiceBase extends $grpc.Service {
  $core.String get $name => 'pb.LogicExt';

  LogicExtServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.RegisterDeviceReq, $2.RegisterDeviceResp>(
        'RegisterDevice',
        registerDevice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.RegisterDeviceReq.fromBuffer(value),
        ($2.RegisterDeviceResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.SendMessageReq, $2.SendMessageResp>(
        'SendMessage',
        sendMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.SendMessageReq.fromBuffer(value),
        ($2.SendMessageResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.PushRoomReq, $1.Empty>(
        'PushRoom',
        pushRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.PushRoomReq.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AddFriendReq, $1.Empty>(
        'AddFriend',
        addFriend_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AddFriendReq.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AgreeAddFriendReq, $1.Empty>(
        'AgreeAddFriend',
        agreeAddFriend_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AgreeAddFriendReq.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.SetFriendReq, $2.SetFriendResp>(
        'SetFriend',
        setFriend_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.SetFriendReq.fromBuffer(value),
        ($2.SetFriendResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $2.GetFriendsResp>(
        'GetFriends',
        getFriends_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($2.GetFriendsResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CreateGroupReq, $2.CreateGroupResp>(
        'CreateGroup',
        createGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CreateGroupReq.fromBuffer(value),
        ($2.CreateGroupResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateGroupReq, $1.Empty>(
        'UpdateGroup',
        updateGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdateGroupReq.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetGroupReq, $2.GetGroupResp>(
        'GetGroup',
        getGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetGroupReq.fromBuffer(value),
        ($2.GetGroupResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $2.GetGroupsResp>(
        'GetGroups',
        getGroups_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($2.GetGroupsResp value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.AddGroupMembersReq, $2.AddGroupMembersResp>(
            'AddGroupMembers',
            addGroupMembers_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.AddGroupMembersReq.fromBuffer(value),
            ($2.AddGroupMembersResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateGroupMemberReq, $1.Empty>(
        'UpdateGroupMember',
        updateGroupMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.UpdateGroupMemberReq.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteGroupMemberReq, $1.Empty>(
        'DeleteGroupMember',
        deleteGroupMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.DeleteGroupMemberReq.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.GetGroupMembersReq, $2.GetGroupMembersResp>(
            'GetGroupMembers',
            getGroupMembers_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.GetGroupMembersReq.fromBuffer(value),
            ($2.GetGroupMembersResp value) => value.writeToBuffer()));
  }

  $async.Future<$2.RegisterDeviceResp> registerDevice_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.RegisterDeviceReq> request) async {
    return registerDevice(call, await request);
  }

  $async.Future<$2.SendMessageResp> sendMessage_Pre(
      $grpc.ServiceCall call, $async.Future<$2.SendMessageReq> request) async {
    return sendMessage(call, await request);
  }

  $async.Future<$1.Empty> pushRoom_Pre(
      $grpc.ServiceCall call, $async.Future<$2.PushRoomReq> request) async {
    return pushRoom(call, await request);
  }

  $async.Future<$1.Empty> addFriend_Pre(
      $grpc.ServiceCall call, $async.Future<$2.AddFriendReq> request) async {
    return addFriend(call, await request);
  }

  $async.Future<$1.Empty> agreeAddFriend_Pre($grpc.ServiceCall call,
      $async.Future<$2.AgreeAddFriendReq> request) async {
    return agreeAddFriend(call, await request);
  }

  $async.Future<$2.SetFriendResp> setFriend_Pre(
      $grpc.ServiceCall call, $async.Future<$2.SetFriendReq> request) async {
    return setFriend(call, await request);
  }

  $async.Future<$2.GetFriendsResp> getFriends_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getFriends(call, await request);
  }

  $async.Future<$2.CreateGroupResp> createGroup_Pre(
      $grpc.ServiceCall call, $async.Future<$2.CreateGroupReq> request) async {
    return createGroup(call, await request);
  }

  $async.Future<$1.Empty> updateGroup_Pre(
      $grpc.ServiceCall call, $async.Future<$2.UpdateGroupReq> request) async {
    return updateGroup(call, await request);
  }

  $async.Future<$2.GetGroupResp> getGroup_Pre(
      $grpc.ServiceCall call, $async.Future<$2.GetGroupReq> request) async {
    return getGroup(call, await request);
  }

  $async.Future<$2.GetGroupsResp> getGroups_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getGroups(call, await request);
  }

  $async.Future<$2.AddGroupMembersResp> addGroupMembers_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.AddGroupMembersReq> request) async {
    return addGroupMembers(call, await request);
  }

  $async.Future<$1.Empty> updateGroupMember_Pre($grpc.ServiceCall call,
      $async.Future<$2.UpdateGroupMemberReq> request) async {
    return updateGroupMember(call, await request);
  }

  $async.Future<$1.Empty> deleteGroupMember_Pre($grpc.ServiceCall call,
      $async.Future<$2.DeleteGroupMemberReq> request) async {
    return deleteGroupMember(call, await request);
  }

  $async.Future<$2.GetGroupMembersResp> getGroupMembers_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.GetGroupMembersReq> request) async {
    return getGroupMembers(call, await request);
  }

  $async.Future<$2.RegisterDeviceResp> registerDevice(
      $grpc.ServiceCall call, $2.RegisterDeviceReq request);
  $async.Future<$2.SendMessageResp> sendMessage(
      $grpc.ServiceCall call, $2.SendMessageReq request);
  $async.Future<$1.Empty> pushRoom(
      $grpc.ServiceCall call, $2.PushRoomReq request);
  $async.Future<$1.Empty> addFriend(
      $grpc.ServiceCall call, $2.AddFriendReq request);
  $async.Future<$1.Empty> agreeAddFriend(
      $grpc.ServiceCall call, $2.AgreeAddFriendReq request);
  $async.Future<$2.SetFriendResp> setFriend(
      $grpc.ServiceCall call, $2.SetFriendReq request);
  $async.Future<$2.GetFriendsResp> getFriends(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$2.CreateGroupResp> createGroup(
      $grpc.ServiceCall call, $2.CreateGroupReq request);
  $async.Future<$1.Empty> updateGroup(
      $grpc.ServiceCall call, $2.UpdateGroupReq request);
  $async.Future<$2.GetGroupResp> getGroup(
      $grpc.ServiceCall call, $2.GetGroupReq request);
  $async.Future<$2.GetGroupsResp> getGroups(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$2.AddGroupMembersResp> addGroupMembers(
      $grpc.ServiceCall call, $2.AddGroupMembersReq request);
  $async.Future<$1.Empty> updateGroupMember(
      $grpc.ServiceCall call, $2.UpdateGroupMemberReq request);
  $async.Future<$1.Empty> deleteGroupMember(
      $grpc.ServiceCall call, $2.DeleteGroupMemberReq request);
  $async.Future<$2.GetGroupMembersResp> getGroupMembers(
      $grpc.ServiceCall call, $2.GetGroupMembersReq request);
}
