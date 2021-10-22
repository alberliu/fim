///
//  Generated code. Do not modify.
//  source: push.ext.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'logic.ext.pb.dart' as $2;

export 'push.ext.pbenum.dart';

class AddFriendPush extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddFriendPush', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'friendId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nickname')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avatarUrl')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..hasRequiredFields = false
  ;

  AddFriendPush._() : super();
  factory AddFriendPush({
    $fixnum.Int64? friendId,
    $core.String? nickname,
    $core.String? avatarUrl,
    $core.String? description,
  }) {
    final _result = create();
    if (friendId != null) {
      _result.friendId = friendId;
    }
    if (nickname != null) {
      _result.nickname = nickname;
    }
    if (avatarUrl != null) {
      _result.avatarUrl = avatarUrl;
    }
    if (description != null) {
      _result.description = description;
    }
    return _result;
  }
  factory AddFriendPush.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddFriendPush.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddFriendPush clone() => AddFriendPush()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddFriendPush copyWith(void Function(AddFriendPush) updates) => super.copyWith((message) => updates(message as AddFriendPush)) as AddFriendPush; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddFriendPush create() => AddFriendPush._();
  AddFriendPush createEmptyInstance() => create();
  static $pb.PbList<AddFriendPush> createRepeated() => $pb.PbList<AddFriendPush>();
  @$core.pragma('dart2js:noInline')
  static AddFriendPush getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddFriendPush>(create);
  static AddFriendPush? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get friendId => $_getI64(0);
  @$pb.TagNumber(1)
  set friendId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFriendId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFriendId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nickname => $_getSZ(1);
  @$pb.TagNumber(2)
  set nickname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNickname() => $_has(1);
  @$pb.TagNumber(2)
  void clearNickname() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get avatarUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set avatarUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAvatarUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatarUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);
}

class AgreeAddFriendPush extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AgreeAddFriendPush', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'friendId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nickname')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avatarUrl')
    ..hasRequiredFields = false
  ;

  AgreeAddFriendPush._() : super();
  factory AgreeAddFriendPush({
    $fixnum.Int64? friendId,
    $core.String? nickname,
    $core.String? avatarUrl,
  }) {
    final _result = create();
    if (friendId != null) {
      _result.friendId = friendId;
    }
    if (nickname != null) {
      _result.nickname = nickname;
    }
    if (avatarUrl != null) {
      _result.avatarUrl = avatarUrl;
    }
    return _result;
  }
  factory AgreeAddFriendPush.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AgreeAddFriendPush.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AgreeAddFriendPush clone() => AgreeAddFriendPush()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AgreeAddFriendPush copyWith(void Function(AgreeAddFriendPush) updates) => super.copyWith((message) => updates(message as AgreeAddFriendPush)) as AgreeAddFriendPush; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AgreeAddFriendPush create() => AgreeAddFriendPush._();
  AgreeAddFriendPush createEmptyInstance() => create();
  static $pb.PbList<AgreeAddFriendPush> createRepeated() => $pb.PbList<AgreeAddFriendPush>();
  @$core.pragma('dart2js:noInline')
  static AgreeAddFriendPush getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AgreeAddFriendPush>(create);
  static AgreeAddFriendPush? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get friendId => $_getI64(0);
  @$pb.TagNumber(1)
  set friendId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFriendId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFriendId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nickname => $_getSZ(1);
  @$pb.TagNumber(2)
  set nickname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNickname() => $_has(1);
  @$pb.TagNumber(2)
  void clearNickname() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get avatarUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set avatarUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAvatarUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatarUrl() => clearField(3);
}

class UpdateGroupPush extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateGroupPush', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'optId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'optName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avatarUrl')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'introduction')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extra')
    ..hasRequiredFields = false
  ;

  UpdateGroupPush._() : super();
  factory UpdateGroupPush({
    $fixnum.Int64? optId,
    $core.String? optName,
    $core.String? name,
    $core.String? avatarUrl,
    $core.String? introduction,
    $core.String? extra,
  }) {
    final _result = create();
    if (optId != null) {
      _result.optId = optId;
    }
    if (optName != null) {
      _result.optName = optName;
    }
    if (name != null) {
      _result.name = name;
    }
    if (avatarUrl != null) {
      _result.avatarUrl = avatarUrl;
    }
    if (introduction != null) {
      _result.introduction = introduction;
    }
    if (extra != null) {
      _result.extra = extra;
    }
    return _result;
  }
  factory UpdateGroupPush.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateGroupPush.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateGroupPush clone() => UpdateGroupPush()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateGroupPush copyWith(void Function(UpdateGroupPush) updates) => super.copyWith((message) => updates(message as UpdateGroupPush)) as UpdateGroupPush; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateGroupPush create() => UpdateGroupPush._();
  UpdateGroupPush createEmptyInstance() => create();
  static $pb.PbList<UpdateGroupPush> createRepeated() => $pb.PbList<UpdateGroupPush>();
  @$core.pragma('dart2js:noInline')
  static UpdateGroupPush getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateGroupPush>(create);
  static UpdateGroupPush? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get optId => $_getI64(0);
  @$pb.TagNumber(1)
  set optId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOptId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOptId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get optName => $_getSZ(1);
  @$pb.TagNumber(2)
  set optName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOptName() => $_has(1);
  @$pb.TagNumber(2)
  void clearOptName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get avatarUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set avatarUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAvatarUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearAvatarUrl() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get introduction => $_getSZ(4);
  @$pb.TagNumber(5)
  set introduction($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIntroduction() => $_has(4);
  @$pb.TagNumber(5)
  void clearIntroduction() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get extra => $_getSZ(5);
  @$pb.TagNumber(6)
  set extra($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasExtra() => $_has(5);
  @$pb.TagNumber(6)
  void clearExtra() => clearField(6);
}

class AddGroupMembersPush extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddGroupMembersPush', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'optId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'optName')
    ..pc<$2.GroupMember>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'members', $pb.PbFieldType.PM, subBuilder: $2.GroupMember.create)
    ..hasRequiredFields = false
  ;

  AddGroupMembersPush._() : super();
  factory AddGroupMembersPush({
    $fixnum.Int64? optId,
    $core.String? optName,
    $core.Iterable<$2.GroupMember>? members,
  }) {
    final _result = create();
    if (optId != null) {
      _result.optId = optId;
    }
    if (optName != null) {
      _result.optName = optName;
    }
    if (members != null) {
      _result.members.addAll(members);
    }
    return _result;
  }
  factory AddGroupMembersPush.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddGroupMembersPush.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddGroupMembersPush clone() => AddGroupMembersPush()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddGroupMembersPush copyWith(void Function(AddGroupMembersPush) updates) => super.copyWith((message) => updates(message as AddGroupMembersPush)) as AddGroupMembersPush; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddGroupMembersPush create() => AddGroupMembersPush._();
  AddGroupMembersPush createEmptyInstance() => create();
  static $pb.PbList<AddGroupMembersPush> createRepeated() => $pb.PbList<AddGroupMembersPush>();
  @$core.pragma('dart2js:noInline')
  static AddGroupMembersPush getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddGroupMembersPush>(create);
  static AddGroupMembersPush? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get optId => $_getI64(0);
  @$pb.TagNumber(1)
  set optId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOptId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOptId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get optName => $_getSZ(1);
  @$pb.TagNumber(2)
  set optName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOptName() => $_has(1);
  @$pb.TagNumber(2)
  void clearOptName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$2.GroupMember> get members => $_getList(2);
}

class RemoveGroupMemberPush extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveGroupMemberPush', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'optId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'optName')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deletedUserId')
    ..hasRequiredFields = false
  ;

  RemoveGroupMemberPush._() : super();
  factory RemoveGroupMemberPush({
    $fixnum.Int64? optId,
    $core.String? optName,
    $fixnum.Int64? deletedUserId,
  }) {
    final _result = create();
    if (optId != null) {
      _result.optId = optId;
    }
    if (optName != null) {
      _result.optName = optName;
    }
    if (deletedUserId != null) {
      _result.deletedUserId = deletedUserId;
    }
    return _result;
  }
  factory RemoveGroupMemberPush.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveGroupMemberPush.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveGroupMemberPush clone() => RemoveGroupMemberPush()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveGroupMemberPush copyWith(void Function(RemoveGroupMemberPush) updates) => super.copyWith((message) => updates(message as RemoveGroupMemberPush)) as RemoveGroupMemberPush; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveGroupMemberPush create() => RemoveGroupMemberPush._();
  RemoveGroupMemberPush createEmptyInstance() => create();
  static $pb.PbList<RemoveGroupMemberPush> createRepeated() => $pb.PbList<RemoveGroupMemberPush>();
  @$core.pragma('dart2js:noInline')
  static RemoveGroupMemberPush getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveGroupMemberPush>(create);
  static RemoveGroupMemberPush? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get optId => $_getI64(0);
  @$pb.TagNumber(1)
  set optId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOptId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOptId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get optName => $_getSZ(1);
  @$pb.TagNumber(2)
  set optName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOptName() => $_has(1);
  @$pb.TagNumber(2)
  void clearOptName() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get deletedUserId => $_getI64(2);
  @$pb.TagNumber(3)
  set deletedUserId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDeletedUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeletedUserId() => clearField(3);
}

