///
//  Generated code. Do not modify.
//  source: conn.ext.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class PackageType extends $pb.ProtobufEnum {
  static const PackageType PT_UNKNOWN = PackageType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PT_UNKNOWN');
  static const PackageType PT_SIGN_IN = PackageType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PT_SIGN_IN');
  static const PackageType PT_SYNC = PackageType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PT_SYNC');
  static const PackageType PT_HEARTBEAT = PackageType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PT_HEARTBEAT');
  static const PackageType PT_MESSAGE = PackageType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PT_MESSAGE');

  static const $core.List<PackageType> values = <PackageType> [
    PT_UNKNOWN,
    PT_SIGN_IN,
    PT_SYNC,
    PT_HEARTBEAT,
    PT_MESSAGE,
  ];

  static final $core.Map<$core.int, PackageType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PackageType valueOf($core.int value) => _byValue[value];

  const PackageType._($core.int v, $core.String n) : super(v, n);
}

class MessageType extends $pb.ProtobufEnum {
  static const MessageType MT_UNKNOWN = MessageType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MT_UNKNOWN');
  static const MessageType MT_TEXT = MessageType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MT_TEXT');
  static const MessageType MT_FACE = MessageType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MT_FACE');
  static const MessageType MT_VOICE = MessageType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MT_VOICE');
  static const MessageType MT_IMAGE = MessageType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MT_IMAGE');
  static const MessageType MT_FILE = MessageType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MT_FILE');
  static const MessageType MT_LOCATION = MessageType._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MT_LOCATION');
  static const MessageType MT_COMMAND = MessageType._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MT_COMMAND');
  static const MessageType MT_CUSTOM = MessageType._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MT_CUSTOM');

  static const $core.List<MessageType> values = <MessageType> [
    MT_UNKNOWN,
    MT_TEXT,
    MT_FACE,
    MT_VOICE,
    MT_IMAGE,
    MT_FILE,
    MT_LOCATION,
    MT_COMMAND,
    MT_CUSTOM,
  ];

  static final $core.Map<$core.int, MessageType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MessageType valueOf($core.int value) => _byValue[value];

  const MessageType._($core.int v, $core.String n) : super(v, n);
}

class ReceiverType extends $pb.ProtobufEnum {
  static const ReceiverType RT_UNKNOWN = ReceiverType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RT_UNKNOWN');
  static const ReceiverType RT_USER = ReceiverType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RT_USER');
  static const ReceiverType RT_SMALL_GROUP = ReceiverType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RT_SMALL_GROUP');
  static const ReceiverType RT_LARGE_GROUP = ReceiverType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RT_LARGE_GROUP');

  static const $core.List<ReceiverType> values = <ReceiverType> [
    RT_UNKNOWN,
    RT_USER,
    RT_SMALL_GROUP,
    RT_LARGE_GROUP,
  ];

  static final $core.Map<$core.int, ReceiverType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ReceiverType valueOf($core.int value) => _byValue[value];

  const ReceiverType._($core.int v, $core.String n) : super(v, n);
}

class SenderType extends $pb.ProtobufEnum {
  static const SenderType ST_UNKNOWN = SenderType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ST_UNKNOWN');
  static const SenderType ST_SYSTEM = SenderType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ST_SYSTEM');
  static const SenderType ST_USER = SenderType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ST_USER');
  static const SenderType ST_BUSINESS = SenderType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ST_BUSINESS');

  static const $core.List<SenderType> values = <SenderType> [
    ST_UNKNOWN,
    ST_SYSTEM,
    ST_USER,
    ST_BUSINESS,
  ];

  static final $core.Map<$core.int, SenderType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SenderType valueOf($core.int value) => _byValue[value];

  const SenderType._($core.int v, $core.String n) : super(v, n);
}

class MessageStatus extends $pb.ProtobufEnum {
  static const MessageStatus MS_UNKNOWN = MessageStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MS_UNKNOWN');
  static const MessageStatus MS_NORMAL = MessageStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MS_NORMAL');
  static const MessageStatus MS_RECALL = MessageStatus._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MS_RECALL');

  static const $core.List<MessageStatus> values = <MessageStatus> [
    MS_UNKNOWN,
    MS_NORMAL,
    MS_RECALL,
  ];

  static final $core.Map<$core.int, MessageStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MessageStatus valueOf($core.int value) => _byValue[value];

  const MessageStatus._($core.int v, $core.String n) : super(v, n);
}

