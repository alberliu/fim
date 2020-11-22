///
//  Generated code. Do not modify.
//  source: logic.ext.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'conn.ext.pbenum.dart' as $5;
import 'logic.ext.pbenum.dart';

export 'logic.ext.pbenum.dart';

class RegisterDeviceReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RegisterDeviceReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'brand')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'model')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'systemVersion')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sdkVersion')
    ..hasRequiredFields = false
  ;

  RegisterDeviceReq._() : super();
  factory RegisterDeviceReq() => create();
  factory RegisterDeviceReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterDeviceReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterDeviceReq clone() => RegisterDeviceReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterDeviceReq copyWith(void Function(RegisterDeviceReq) updates) => super.copyWith((message) => updates(message as RegisterDeviceReq)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterDeviceReq create() => RegisterDeviceReq._();
  RegisterDeviceReq createEmptyInstance() => create();
  static $pb.PbList<RegisterDeviceReq> createRepeated() => $pb.PbList<RegisterDeviceReq>();
  @$core.pragma('dart2js:noInline')
  static RegisterDeviceReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterDeviceReq>(create);
  static RegisterDeviceReq _defaultInstance;

  @$pb.TagNumber(2)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(2)
  set type($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get brand => $_getSZ(1);
  @$pb.TagNumber(3)
  set brand($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasBrand() => $_has(1);
  @$pb.TagNumber(3)
  void clearBrand() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get model => $_getSZ(2);
  @$pb.TagNumber(4)
  set model($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasModel() => $_has(2);
  @$pb.TagNumber(4)
  void clearModel() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get systemVersion => $_getSZ(3);
  @$pb.TagNumber(5)
  set systemVersion($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasSystemVersion() => $_has(3);
  @$pb.TagNumber(5)
  void clearSystemVersion() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get sdkVersion => $_getSZ(4);
  @$pb.TagNumber(6)
  set sdkVersion($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasSdkVersion() => $_has(4);
  @$pb.TagNumber(6)
  void clearSdkVersion() => clearField(6);
}

class RegisterDeviceResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RegisterDeviceResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId')
    ..hasRequiredFields = false
  ;

  RegisterDeviceResp._() : super();
  factory RegisterDeviceResp() => create();
  factory RegisterDeviceResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterDeviceResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterDeviceResp clone() => RegisterDeviceResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterDeviceResp copyWith(void Function(RegisterDeviceResp) updates) => super.copyWith((message) => updates(message as RegisterDeviceResp)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterDeviceResp create() => RegisterDeviceResp._();
  RegisterDeviceResp createEmptyInstance() => create();
  static $pb.PbList<RegisterDeviceResp> createRepeated() => $pb.PbList<RegisterDeviceResp>();
  @$core.pragma('dart2js:noInline')
  static RegisterDeviceResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterDeviceResp>(create);
  static RegisterDeviceResp _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get deviceId => $_getI64(0);
  @$pb.TagNumber(1)
  set deviceId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => clearField(1);
}

class SendMessageReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SendMessageReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..e<$5.ReceiverType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'receiverType', $pb.PbFieldType.OE, defaultOrMaker: $5.ReceiverType.RT_UNKNOWN, valueOf: $5.ReceiverType.valueOf, enumValues: $5.ReceiverType.values)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'receiverId')
    ..p<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'toUserIds', $pb.PbFieldType.P6)
    ..e<$5.MessageType>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageType', $pb.PbFieldType.OE, defaultOrMaker: $5.MessageType.MT_UNKNOWN, valueOf: $5.MessageType.valueOf, enumValues: $5.MessageType.values)
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageContent', $pb.PbFieldType.OY)
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sendTime')
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isPersist')
    ..hasRequiredFields = false
  ;

  SendMessageReq._() : super();
  factory SendMessageReq() => create();
  factory SendMessageReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendMessageReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendMessageReq clone() => SendMessageReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendMessageReq copyWith(void Function(SendMessageReq) updates) => super.copyWith((message) => updates(message as SendMessageReq)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendMessageReq create() => SendMessageReq._();
  SendMessageReq createEmptyInstance() => create();
  static $pb.PbList<SendMessageReq> createRepeated() => $pb.PbList<SendMessageReq>();
  @$core.pragma('dart2js:noInline')
  static SendMessageReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendMessageReq>(create);
  static SendMessageReq _defaultInstance;

  @$pb.TagNumber(1)
  $5.ReceiverType get receiverType => $_getN(0);
  @$pb.TagNumber(1)
  set receiverType($5.ReceiverType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReceiverType() => $_has(0);
  @$pb.TagNumber(1)
  void clearReceiverType() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get receiverId => $_getI64(1);
  @$pb.TagNumber(2)
  set receiverId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReceiverId() => $_has(1);
  @$pb.TagNumber(2)
  void clearReceiverId() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$fixnum.Int64> get toUserIds => $_getList(2);

  @$pb.TagNumber(4)
  $5.MessageType get messageType => $_getN(3);
  @$pb.TagNumber(4)
  set messageType($5.MessageType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasMessageType() => $_has(3);
  @$pb.TagNumber(4)
  void clearMessageType() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get messageContent => $_getN(4);
  @$pb.TagNumber(5)
  set messageContent($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMessageContent() => $_has(4);
  @$pb.TagNumber(5)
  void clearMessageContent() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get sendTime => $_getI64(5);
  @$pb.TagNumber(6)
  set sendTime($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSendTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearSendTime() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get isPersist => $_getBF(6);
  @$pb.TagNumber(7)
  set isPersist($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIsPersist() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsPersist() => clearField(7);
}

class SendMessageResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SendMessageResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'seq')
    ..hasRequiredFields = false
  ;

  SendMessageResp._() : super();
  factory SendMessageResp() => create();
  factory SendMessageResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendMessageResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendMessageResp clone() => SendMessageResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendMessageResp copyWith(void Function(SendMessageResp) updates) => super.copyWith((message) => updates(message as SendMessageResp)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendMessageResp create() => SendMessageResp._();
  SendMessageResp createEmptyInstance() => create();
  static $pb.PbList<SendMessageResp> createRepeated() => $pb.PbList<SendMessageResp>();
  @$core.pragma('dart2js:noInline')
  static SendMessageResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendMessageResp>(create);
  static SendMessageResp _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get seq => $_getI64(0);
  @$pb.TagNumber(1)
  set seq($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSeq() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeq() => clearField(1);
}

class AddFriendReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddFriendReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'friendId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remarks')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..hasRequiredFields = false
  ;

  AddFriendReq._() : super();
  factory AddFriendReq() => create();
  factory AddFriendReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddFriendReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddFriendReq clone() => AddFriendReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddFriendReq copyWith(void Function(AddFriendReq) updates) => super.copyWith((message) => updates(message as AddFriendReq)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddFriendReq create() => AddFriendReq._();
  AddFriendReq createEmptyInstance() => create();
  static $pb.PbList<AddFriendReq> createRepeated() => $pb.PbList<AddFriendReq>();
  @$core.pragma('dart2js:noInline')
  static AddFriendReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddFriendReq>(create);
  static AddFriendReq _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get friendId => $_getI64(0);
  @$pb.TagNumber(1)
  set friendId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFriendId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFriendId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get remarks => $_getSZ(1);
  @$pb.TagNumber(2)
  set remarks($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRemarks() => $_has(1);
  @$pb.TagNumber(2)
  void clearRemarks() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);
}

class AddFriendResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddFriendResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  AddFriendResp._() : super();
  factory AddFriendResp() => create();
  factory AddFriendResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddFriendResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddFriendResp clone() => AddFriendResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddFriendResp copyWith(void Function(AddFriendResp) updates) => super.copyWith((message) => updates(message as AddFriendResp)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddFriendResp create() => AddFriendResp._();
  AddFriendResp createEmptyInstance() => create();
  static $pb.PbList<AddFriendResp> createRepeated() => $pb.PbList<AddFriendResp>();
  @$core.pragma('dart2js:noInline')
  static AddFriendResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddFriendResp>(create);
  static AddFriendResp _defaultInstance;
}

class AgreeAddFriendReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AgreeAddFriendReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remarks')
    ..hasRequiredFields = false
  ;

  AgreeAddFriendReq._() : super();
  factory AgreeAddFriendReq() => create();
  factory AgreeAddFriendReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AgreeAddFriendReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AgreeAddFriendReq clone() => AgreeAddFriendReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AgreeAddFriendReq copyWith(void Function(AgreeAddFriendReq) updates) => super.copyWith((message) => updates(message as AgreeAddFriendReq)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AgreeAddFriendReq create() => AgreeAddFriendReq._();
  AgreeAddFriendReq createEmptyInstance() => create();
  static $pb.PbList<AgreeAddFriendReq> createRepeated() => $pb.PbList<AgreeAddFriendReq>();
  @$core.pragma('dart2js:noInline')
  static AgreeAddFriendReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AgreeAddFriendReq>(create);
  static AgreeAddFriendReq _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get remarks => $_getSZ(1);
  @$pb.TagNumber(2)
  set remarks($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRemarks() => $_has(1);
  @$pb.TagNumber(2)
  void clearRemarks() => clearField(2);
}

class AgreeAddFriendResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AgreeAddFriendResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  AgreeAddFriendResp._() : super();
  factory AgreeAddFriendResp() => create();
  factory AgreeAddFriendResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AgreeAddFriendResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AgreeAddFriendResp clone() => AgreeAddFriendResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AgreeAddFriendResp copyWith(void Function(AgreeAddFriendResp) updates) => super.copyWith((message) => updates(message as AgreeAddFriendResp)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AgreeAddFriendResp create() => AgreeAddFriendResp._();
  AgreeAddFriendResp createEmptyInstance() => create();
  static $pb.PbList<AgreeAddFriendResp> createRepeated() => $pb.PbList<AgreeAddFriendResp>();
  @$core.pragma('dart2js:noInline')
  static AgreeAddFriendResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AgreeAddFriendResp>(create);
  static AgreeAddFriendResp _defaultInstance;
}

class Friend extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Friend', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phoneNumber')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nickname')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sex', $pb.PbFieldType.O3)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avatarUrl')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userExtra')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remarks')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extra')
    ..hasRequiredFields = false
  ;

  Friend._() : super();
  factory Friend() => create();
  factory Friend.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Friend.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Friend clone() => Friend()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Friend copyWith(void Function(Friend) updates) => super.copyWith((message) => updates(message as Friend)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Friend create() => Friend._();
  Friend createEmptyInstance() => create();
  static $pb.PbList<Friend> createRepeated() => $pb.PbList<Friend>();
  @$core.pragma('dart2js:noInline')
  static Friend getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Friend>(create);
  static Friend _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get phoneNumber => $_getSZ(1);
  @$pb.TagNumber(2)
  set phoneNumber($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPhoneNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearPhoneNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get nickname => $_getSZ(2);
  @$pb.TagNumber(3)
  set nickname($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNickname() => $_has(2);
  @$pb.TagNumber(3)
  void clearNickname() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get sex => $_getIZ(3);
  @$pb.TagNumber(4)
  set sex($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSex() => $_has(3);
  @$pb.TagNumber(4)
  void clearSex() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get avatarUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set avatarUrl($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAvatarUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearAvatarUrl() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get userExtra => $_getSZ(5);
  @$pb.TagNumber(6)
  set userExtra($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUserExtra() => $_has(5);
  @$pb.TagNumber(6)
  void clearUserExtra() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get remarks => $_getSZ(6);
  @$pb.TagNumber(7)
  set remarks($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRemarks() => $_has(6);
  @$pb.TagNumber(7)
  void clearRemarks() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get extra => $_getSZ(7);
  @$pb.TagNumber(8)
  set extra($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasExtra() => $_has(7);
  @$pb.TagNumber(8)
  void clearExtra() => clearField(8);
}

class GetFriendsReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetFriendsReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetFriendsReq._() : super();
  factory GetFriendsReq() => create();
  factory GetFriendsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetFriendsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetFriendsReq clone() => GetFriendsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetFriendsReq copyWith(void Function(GetFriendsReq) updates) => super.copyWith((message) => updates(message as GetFriendsReq)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetFriendsReq create() => GetFriendsReq._();
  GetFriendsReq createEmptyInstance() => create();
  static $pb.PbList<GetFriendsReq> createRepeated() => $pb.PbList<GetFriendsReq>();
  @$core.pragma('dart2js:noInline')
  static GetFriendsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFriendsReq>(create);
  static GetFriendsReq _defaultInstance;
}

class GetFriendsResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetFriendsResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..pc<Friend>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'friends', $pb.PbFieldType.PM, subBuilder: Friend.create)
    ..hasRequiredFields = false
  ;

  GetFriendsResp._() : super();
  factory GetFriendsResp() => create();
  factory GetFriendsResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetFriendsResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetFriendsResp clone() => GetFriendsResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetFriendsResp copyWith(void Function(GetFriendsResp) updates) => super.copyWith((message) => updates(message as GetFriendsResp)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetFriendsResp create() => GetFriendsResp._();
  GetFriendsResp createEmptyInstance() => create();
  static $pb.PbList<GetFriendsResp> createRepeated() => $pb.PbList<GetFriendsResp>();
  @$core.pragma('dart2js:noInline')
  static GetFriendsResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFriendsResp>(create);
  static GetFriendsResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Friend> get friends => $_getList(0);
}

class CreateGroupReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateGroupReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avatarUrl')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'introduction')
    ..e<GroupType>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: GroupType.GT_UNKNOWN, valueOf: GroupType.valueOf, enumValues: GroupType.values)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extra')
    ..hasRequiredFields = false
  ;

  CreateGroupReq._() : super();
  factory CreateGroupReq() => create();
  factory CreateGroupReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateGroupReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateGroupReq clone() => CreateGroupReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateGroupReq copyWith(void Function(CreateGroupReq) updates) => super.copyWith((message) => updates(message as CreateGroupReq)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateGroupReq create() => CreateGroupReq._();
  CreateGroupReq createEmptyInstance() => create();
  static $pb.PbList<CreateGroupReq> createRepeated() => $pb.PbList<CreateGroupReq>();
  @$core.pragma('dart2js:noInline')
  static CreateGroupReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateGroupReq>(create);
  static CreateGroupReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get avatarUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set avatarUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAvatarUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearAvatarUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get introduction => $_getSZ(2);
  @$pb.TagNumber(3)
  set introduction($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIntroduction() => $_has(2);
  @$pb.TagNumber(3)
  void clearIntroduction() => clearField(3);

  @$pb.TagNumber(4)
  GroupType get type => $_getN(3);
  @$pb.TagNumber(4)
  set type(GroupType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get extra => $_getSZ(4);
  @$pb.TagNumber(5)
  set extra($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasExtra() => $_has(4);
  @$pb.TagNumber(5)
  void clearExtra() => clearField(5);
}

class CreateGroupResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateGroupResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'groupId')
    ..hasRequiredFields = false
  ;

  CreateGroupResp._() : super();
  factory CreateGroupResp() => create();
  factory CreateGroupResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateGroupResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateGroupResp clone() => CreateGroupResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateGroupResp copyWith(void Function(CreateGroupResp) updates) => super.copyWith((message) => updates(message as CreateGroupResp)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateGroupResp create() => CreateGroupResp._();
  CreateGroupResp createEmptyInstance() => create();
  static $pb.PbList<CreateGroupResp> createRepeated() => $pb.PbList<CreateGroupResp>();
  @$core.pragma('dart2js:noInline')
  static CreateGroupResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateGroupResp>(create);
  static CreateGroupResp _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get groupId => $_getI64(0);
  @$pb.TagNumber(1)
  set groupId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);
}

class UpdateGroupReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateGroupReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'groupId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avatarUrl')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'introduction')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extra')
    ..hasRequiredFields = false
  ;

  UpdateGroupReq._() : super();
  factory UpdateGroupReq() => create();
  factory UpdateGroupReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateGroupReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateGroupReq clone() => UpdateGroupReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateGroupReq copyWith(void Function(UpdateGroupReq) updates) => super.copyWith((message) => updates(message as UpdateGroupReq)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateGroupReq create() => UpdateGroupReq._();
  UpdateGroupReq createEmptyInstance() => create();
  static $pb.PbList<UpdateGroupReq> createRepeated() => $pb.PbList<UpdateGroupReq>();
  @$core.pragma('dart2js:noInline')
  static UpdateGroupReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateGroupReq>(create);
  static UpdateGroupReq _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get groupId => $_getI64(0);
  @$pb.TagNumber(1)
  set groupId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get avatarUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set avatarUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAvatarUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearAvatarUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get introduction => $_getSZ(3);
  @$pb.TagNumber(4)
  set introduction($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIntroduction() => $_has(3);
  @$pb.TagNumber(4)
  void clearIntroduction() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get extra => $_getSZ(4);
  @$pb.TagNumber(5)
  set extra($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasExtra() => $_has(4);
  @$pb.TagNumber(5)
  void clearExtra() => clearField(5);
}

class UpdateGroupResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateGroupResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UpdateGroupResp._() : super();
  factory UpdateGroupResp() => create();
  factory UpdateGroupResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateGroupResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateGroupResp clone() => UpdateGroupResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateGroupResp copyWith(void Function(UpdateGroupResp) updates) => super.copyWith((message) => updates(message as UpdateGroupResp)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateGroupResp create() => UpdateGroupResp._();
  UpdateGroupResp createEmptyInstance() => create();
  static $pb.PbList<UpdateGroupResp> createRepeated() => $pb.PbList<UpdateGroupResp>();
  @$core.pragma('dart2js:noInline')
  static UpdateGroupResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateGroupResp>(create);
  static UpdateGroupResp _defaultInstance;
}

class GetGroupReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetGroupReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'groupId')
    ..hasRequiredFields = false
  ;

  GetGroupReq._() : super();
  factory GetGroupReq() => create();
  factory GetGroupReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetGroupReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetGroupReq clone() => GetGroupReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetGroupReq copyWith(void Function(GetGroupReq) updates) => super.copyWith((message) => updates(message as GetGroupReq)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetGroupReq create() => GetGroupReq._();
  GetGroupReq createEmptyInstance() => create();
  static $pb.PbList<GetGroupReq> createRepeated() => $pb.PbList<GetGroupReq>();
  @$core.pragma('dart2js:noInline')
  static GetGroupReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetGroupReq>(create);
  static GetGroupReq _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get groupId => $_getI64(0);
  @$pb.TagNumber(1)
  set groupId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);
}

class GetGroupResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetGroupResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<Group>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'group', subBuilder: Group.create)
    ..hasRequiredFields = false
  ;

  GetGroupResp._() : super();
  factory GetGroupResp() => create();
  factory GetGroupResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetGroupResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetGroupResp clone() => GetGroupResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetGroupResp copyWith(void Function(GetGroupResp) updates) => super.copyWith((message) => updates(message as GetGroupResp)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetGroupResp create() => GetGroupResp._();
  GetGroupResp createEmptyInstance() => create();
  static $pb.PbList<GetGroupResp> createRepeated() => $pb.PbList<GetGroupResp>();
  @$core.pragma('dart2js:noInline')
  static GetGroupResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetGroupResp>(create);
  static GetGroupResp _defaultInstance;

  @$pb.TagNumber(1)
  Group get group => $_getN(0);
  @$pb.TagNumber(1)
  set group(Group v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroup() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroup() => clearField(1);
  @$pb.TagNumber(1)
  Group ensureGroup() => $_ensure(0);
}

class Group extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Group', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'groupId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avatarUrl')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'introduction')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userMum', $pb.PbFieldType.O3)
    ..e<GroupType>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: GroupType.GT_UNKNOWN, valueOf: GroupType.valueOf, enumValues: GroupType.values)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extra')
    ..aInt64(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createTime')
    ..aInt64(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateTime')
    ..hasRequiredFields = false
  ;

  Group._() : super();
  factory Group() => create();
  factory Group.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Group.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Group clone() => Group()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Group copyWith(void Function(Group) updates) => super.copyWith((message) => updates(message as Group)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Group create() => Group._();
  Group createEmptyInstance() => create();
  static $pb.PbList<Group> createRepeated() => $pb.PbList<Group>();
  @$core.pragma('dart2js:noInline')
  static Group getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Group>(create);
  static Group _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get groupId => $_getI64(0);
  @$pb.TagNumber(1)
  set groupId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get avatarUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set avatarUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAvatarUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatarUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get introduction => $_getSZ(3);
  @$pb.TagNumber(4)
  set introduction($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIntroduction() => $_has(3);
  @$pb.TagNumber(4)
  void clearIntroduction() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get userMum => $_getIZ(4);
  @$pb.TagNumber(5)
  set userMum($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUserMum() => $_has(4);
  @$pb.TagNumber(5)
  void clearUserMum() => clearField(5);

  @$pb.TagNumber(6)
  GroupType get type => $_getN(5);
  @$pb.TagNumber(6)
  set type(GroupType v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasType() => $_has(5);
  @$pb.TagNumber(6)
  void clearType() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get extra => $_getSZ(6);
  @$pb.TagNumber(7)
  set extra($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasExtra() => $_has(6);
  @$pb.TagNumber(7)
  void clearExtra() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get createTime => $_getI64(7);
  @$pb.TagNumber(8)
  set createTime($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCreateTime() => $_has(7);
  @$pb.TagNumber(8)
  void clearCreateTime() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get updateTime => $_getI64(8);
  @$pb.TagNumber(9)
  set updateTime($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasUpdateTime() => $_has(8);
  @$pb.TagNumber(9)
  void clearUpdateTime() => clearField(9);
}

class GetUserGroupsReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetUserGroupsReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetUserGroupsReq._() : super();
  factory GetUserGroupsReq() => create();
  factory GetUserGroupsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUserGroupsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUserGroupsReq clone() => GetUserGroupsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUserGroupsReq copyWith(void Function(GetUserGroupsReq) updates) => super.copyWith((message) => updates(message as GetUserGroupsReq)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUserGroupsReq create() => GetUserGroupsReq._();
  GetUserGroupsReq createEmptyInstance() => create();
  static $pb.PbList<GetUserGroupsReq> createRepeated() => $pb.PbList<GetUserGroupsReq>();
  @$core.pragma('dart2js:noInline')
  static GetUserGroupsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUserGroupsReq>(create);
  static GetUserGroupsReq _defaultInstance;
}

class GetUserGroupsResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetUserGroupsResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..pc<Group>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'groups', $pb.PbFieldType.PM, subBuilder: Group.create)
    ..hasRequiredFields = false
  ;

  GetUserGroupsResp._() : super();
  factory GetUserGroupsResp() => create();
  factory GetUserGroupsResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUserGroupsResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUserGroupsResp clone() => GetUserGroupsResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUserGroupsResp copyWith(void Function(GetUserGroupsResp) updates) => super.copyWith((message) => updates(message as GetUserGroupsResp)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUserGroupsResp create() => GetUserGroupsResp._();
  GetUserGroupsResp createEmptyInstance() => create();
  static $pb.PbList<GetUserGroupsResp> createRepeated() => $pb.PbList<GetUserGroupsResp>();
  @$core.pragma('dart2js:noInline')
  static GetUserGroupsResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUserGroupsResp>(create);
  static GetUserGroupsResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Group> get groups => $_getList(0);
}

class AddGroupMembersReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddGroupMembersReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'groupId')
    ..p<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userIds', $pb.PbFieldType.P6)
    ..hasRequiredFields = false
  ;

  AddGroupMembersReq._() : super();
  factory AddGroupMembersReq() => create();
  factory AddGroupMembersReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddGroupMembersReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddGroupMembersReq clone() => AddGroupMembersReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddGroupMembersReq copyWith(void Function(AddGroupMembersReq) updates) => super.copyWith((message) => updates(message as AddGroupMembersReq)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddGroupMembersReq create() => AddGroupMembersReq._();
  AddGroupMembersReq createEmptyInstance() => create();
  static $pb.PbList<AddGroupMembersReq> createRepeated() => $pb.PbList<AddGroupMembersReq>();
  @$core.pragma('dart2js:noInline')
  static AddGroupMembersReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddGroupMembersReq>(create);
  static AddGroupMembersReq _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get groupId => $_getI64(0);
  @$pb.TagNumber(1)
  set groupId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$fixnum.Int64> get userIds => $_getList(1);
}

class AddGroupMembersResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddGroupMembersResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userIds', $pb.PbFieldType.P6)
    ..hasRequiredFields = false
  ;

  AddGroupMembersResp._() : super();
  factory AddGroupMembersResp() => create();
  factory AddGroupMembersResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddGroupMembersResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddGroupMembersResp clone() => AddGroupMembersResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddGroupMembersResp copyWith(void Function(AddGroupMembersResp) updates) => super.copyWith((message) => updates(message as AddGroupMembersResp)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddGroupMembersResp create() => AddGroupMembersResp._();
  AddGroupMembersResp createEmptyInstance() => create();
  static $pb.PbList<AddGroupMembersResp> createRepeated() => $pb.PbList<AddGroupMembersResp>();
  @$core.pragma('dart2js:noInline')
  static AddGroupMembersResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddGroupMembersResp>(create);
  static AddGroupMembersResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get userIds => $_getList(0);
}

class UpdateGroupMemberReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateGroupMemberReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'groupId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remarks')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extra')
    ..hasRequiredFields = false
  ;

  UpdateGroupMemberReq._() : super();
  factory UpdateGroupMemberReq() => create();
  factory UpdateGroupMemberReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateGroupMemberReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateGroupMemberReq clone() => UpdateGroupMemberReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateGroupMemberReq copyWith(void Function(UpdateGroupMemberReq) updates) => super.copyWith((message) => updates(message as UpdateGroupMemberReq)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateGroupMemberReq create() => UpdateGroupMemberReq._();
  UpdateGroupMemberReq createEmptyInstance() => create();
  static $pb.PbList<UpdateGroupMemberReq> createRepeated() => $pb.PbList<UpdateGroupMemberReq>();
  @$core.pragma('dart2js:noInline')
  static UpdateGroupMemberReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateGroupMemberReq>(create);
  static UpdateGroupMemberReq _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get groupId => $_getI64(0);
  @$pb.TagNumber(1)
  set groupId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get userId => $_getI64(1);
  @$pb.TagNumber(2)
  set userId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get remarks => $_getSZ(2);
  @$pb.TagNumber(3)
  set remarks($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRemarks() => $_has(2);
  @$pb.TagNumber(3)
  void clearRemarks() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get extra => $_getSZ(3);
  @$pb.TagNumber(4)
  set extra($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExtra() => $_has(3);
  @$pb.TagNumber(4)
  void clearExtra() => clearField(4);
}

class UpdateGroupMemberResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateGroupMemberResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UpdateGroupMemberResp._() : super();
  factory UpdateGroupMemberResp() => create();
  factory UpdateGroupMemberResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateGroupMemberResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateGroupMemberResp clone() => UpdateGroupMemberResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateGroupMemberResp copyWith(void Function(UpdateGroupMemberResp) updates) => super.copyWith((message) => updates(message as UpdateGroupMemberResp)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateGroupMemberResp create() => UpdateGroupMemberResp._();
  UpdateGroupMemberResp createEmptyInstance() => create();
  static $pb.PbList<UpdateGroupMemberResp> createRepeated() => $pb.PbList<UpdateGroupMemberResp>();
  @$core.pragma('dart2js:noInline')
  static UpdateGroupMemberResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateGroupMemberResp>(create);
  static UpdateGroupMemberResp _defaultInstance;
}

class DeleteGroupMemberReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteGroupMemberReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'groupId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..hasRequiredFields = false
  ;

  DeleteGroupMemberReq._() : super();
  factory DeleteGroupMemberReq() => create();
  factory DeleteGroupMemberReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteGroupMemberReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteGroupMemberReq clone() => DeleteGroupMemberReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteGroupMemberReq copyWith(void Function(DeleteGroupMemberReq) updates) => super.copyWith((message) => updates(message as DeleteGroupMemberReq)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteGroupMemberReq create() => DeleteGroupMemberReq._();
  DeleteGroupMemberReq createEmptyInstance() => create();
  static $pb.PbList<DeleteGroupMemberReq> createRepeated() => $pb.PbList<DeleteGroupMemberReq>();
  @$core.pragma('dart2js:noInline')
  static DeleteGroupMemberReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteGroupMemberReq>(create);
  static DeleteGroupMemberReq _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get groupId => $_getI64(0);
  @$pb.TagNumber(1)
  set groupId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get userId => $_getI64(1);
  @$pb.TagNumber(2)
  set userId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);
}

class DeleteGroupMemberResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteGroupMemberResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteGroupMemberResp._() : super();
  factory DeleteGroupMemberResp() => create();
  factory DeleteGroupMemberResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteGroupMemberResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteGroupMemberResp clone() => DeleteGroupMemberResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteGroupMemberResp copyWith(void Function(DeleteGroupMemberResp) updates) => super.copyWith((message) => updates(message as DeleteGroupMemberResp)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteGroupMemberResp create() => DeleteGroupMemberResp._();
  DeleteGroupMemberResp createEmptyInstance() => create();
  static $pb.PbList<DeleteGroupMemberResp> createRepeated() => $pb.PbList<DeleteGroupMemberResp>();
  @$core.pragma('dart2js:noInline')
  static DeleteGroupMemberResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteGroupMemberResp>(create);
  static DeleteGroupMemberResp _defaultInstance;
}

class GetGroupMembersReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetGroupMembersReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'groupId')
    ..hasRequiredFields = false
  ;

  GetGroupMembersReq._() : super();
  factory GetGroupMembersReq() => create();
  factory GetGroupMembersReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetGroupMembersReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetGroupMembersReq clone() => GetGroupMembersReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetGroupMembersReq copyWith(void Function(GetGroupMembersReq) updates) => super.copyWith((message) => updates(message as GetGroupMembersReq)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetGroupMembersReq create() => GetGroupMembersReq._();
  GetGroupMembersReq createEmptyInstance() => create();
  static $pb.PbList<GetGroupMembersReq> createRepeated() => $pb.PbList<GetGroupMembersReq>();
  @$core.pragma('dart2js:noInline')
  static GetGroupMembersReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetGroupMembersReq>(create);
  static GetGroupMembersReq _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get groupId => $_getI64(0);
  @$pb.TagNumber(1)
  set groupId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);
}

class GetGroupMembersResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetGroupMembersResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..pc<GroupMember>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'members', $pb.PbFieldType.PM, subBuilder: GroupMember.create)
    ..hasRequiredFields = false
  ;

  GetGroupMembersResp._() : super();
  factory GetGroupMembersResp() => create();
  factory GetGroupMembersResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetGroupMembersResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetGroupMembersResp clone() => GetGroupMembersResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetGroupMembersResp copyWith(void Function(GetGroupMembersResp) updates) => super.copyWith((message) => updates(message as GetGroupMembersResp)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetGroupMembersResp create() => GetGroupMembersResp._();
  GetGroupMembersResp createEmptyInstance() => create();
  static $pb.PbList<GetGroupMembersResp> createRepeated() => $pb.PbList<GetGroupMembersResp>();
  @$core.pragma('dart2js:noInline')
  static GetGroupMembersResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetGroupMembersResp>(create);
  static GetGroupMembersResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GroupMember> get members => $_getList(0);
}

class GroupMember extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GroupMember', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nickname')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sex', $pb.PbFieldType.O3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avatarUrl')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userExtra')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remarks')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extra')
    ..hasRequiredFields = false
  ;

  GroupMember._() : super();
  factory GroupMember() => create();
  factory GroupMember.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupMember.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupMember clone() => GroupMember()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupMember copyWith(void Function(GroupMember) updates) => super.copyWith((message) => updates(message as GroupMember)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GroupMember create() => GroupMember._();
  GroupMember createEmptyInstance() => create();
  static $pb.PbList<GroupMember> createRepeated() => $pb.PbList<GroupMember>();
  @$core.pragma('dart2js:noInline')
  static GroupMember getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupMember>(create);
  static GroupMember _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nickname => $_getSZ(1);
  @$pb.TagNumber(2)
  set nickname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNickname() => $_has(1);
  @$pb.TagNumber(2)
  void clearNickname() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get sex => $_getIZ(2);
  @$pb.TagNumber(3)
  set sex($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSex() => $_has(2);
  @$pb.TagNumber(3)
  void clearSex() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get avatarUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set avatarUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAvatarUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearAvatarUrl() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get userExtra => $_getSZ(4);
  @$pb.TagNumber(5)
  set userExtra($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUserExtra() => $_has(4);
  @$pb.TagNumber(5)
  void clearUserExtra() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get remarks => $_getSZ(5);
  @$pb.TagNumber(6)
  set remarks($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRemarks() => $_has(5);
  @$pb.TagNumber(6)
  void clearRemarks() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get extra => $_getSZ(6);
  @$pb.TagNumber(7)
  set extra($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasExtra() => $_has(6);
  @$pb.TagNumber(7)
  void clearExtra() => clearField(7);
}

