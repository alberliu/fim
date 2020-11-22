///
//  Generated code. Do not modify.
//  source: conn.int.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'conn.ext.pb.dart' as $5;

class DeliverMessageReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeliverMessageReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fd')
    ..aOM<$5.MessageSend>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageSend', subBuilder: $5.MessageSend.create)
    ..hasRequiredFields = false
  ;

  DeliverMessageReq._() : super();
  factory DeliverMessageReq() => create();
  factory DeliverMessageReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeliverMessageReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeliverMessageReq clone() => DeliverMessageReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeliverMessageReq copyWith(void Function(DeliverMessageReq) updates) => super.copyWith((message) => updates(message as DeliverMessageReq)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeliverMessageReq create() => DeliverMessageReq._();
  DeliverMessageReq createEmptyInstance() => create();
  static $pb.PbList<DeliverMessageReq> createRepeated() => $pb.PbList<DeliverMessageReq>();
  @$core.pragma('dart2js:noInline')
  static DeliverMessageReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeliverMessageReq>(create);
  static DeliverMessageReq _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get deviceId => $_getI64(0);
  @$pb.TagNumber(1)
  set deviceId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get fd => $_getI64(1);
  @$pb.TagNumber(2)
  set fd($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFd() => $_has(1);
  @$pb.TagNumber(2)
  void clearFd() => clearField(2);

  @$pb.TagNumber(3)
  $5.MessageSend get messageSend => $_getN(2);
  @$pb.TagNumber(3)
  set messageSend($5.MessageSend v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessageSend() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessageSend() => clearField(3);
  @$pb.TagNumber(3)
  $5.MessageSend ensureMessageSend() => $_ensure(2);
}

class DeliverMessageResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeliverMessageResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeliverMessageResp._() : super();
  factory DeliverMessageResp() => create();
  factory DeliverMessageResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeliverMessageResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeliverMessageResp clone() => DeliverMessageResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeliverMessageResp copyWith(void Function(DeliverMessageResp) updates) => super.copyWith((message) => updates(message as DeliverMessageResp)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeliverMessageResp create() => DeliverMessageResp._();
  DeliverMessageResp createEmptyInstance() => create();
  static $pb.PbList<DeliverMessageResp> createRepeated() => $pb.PbList<DeliverMessageResp>();
  @$core.pragma('dart2js:noInline')
  static DeliverMessageResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeliverMessageResp>(create);
  static DeliverMessageResp _defaultInstance;
}

