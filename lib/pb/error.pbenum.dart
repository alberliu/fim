///
//  Generated code. Do not modify.
//  source: error.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ErrCode extends $pb.ProtobufEnum {
  static const ErrCode EC_SUCCESS = ErrCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EC_SUCCESS');
  static const ErrCode EC_SERVER_UNKNOWN = ErrCode._(1001, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EC_SERVER_UNKNOWN');
  static const ErrCode EC_BAD_CODE = ErrCode._(1002, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EC_BAD_CODE');
  static const ErrCode EC_UNAUTHORIZED = ErrCode._(1003, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EC_UNAUTHORIZED');
  static const ErrCode EC_IS_NOT_FRIEND = ErrCode._(1004, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EC_IS_NOT_FRIEND');
  static const ErrCode EC_IS_NOT_IN_GROUP = ErrCode._(1005, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EC_IS_NOT_IN_GROUP');
  static const ErrCode EC_DEVICE_NOT_BIND_USER = ErrCode._(1006, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EC_DEVICE_NOT_BIND_USER');
  static const ErrCode EC_BAD_REQUEST = ErrCode._(1007, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EC_BAD_REQUEST');
  static const ErrCode EC_USER_ALREADY_EXIST = ErrCode._(1008, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EC_USER_ALREADY_EXIST');
  static const ErrCode EC_GROUP_ALREADY_EXIST = ErrCode._(1009, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EC_GROUP_ALREADY_EXIST');
  static const ErrCode EC_GROUP_NOT_EXIST = ErrCode._(1010, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EC_GROUP_NOT_EXIST');
  static const ErrCode EC_USER_NOT_EXIST = ErrCode._(1011, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EC_USER_NOT_EXIST');
  static const ErrCode EC_DEVICE_NOT_EXIST = ErrCode._(1012, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EC_DEVICE_NOT_EXIST');

  static const $core.List<ErrCode> values = <ErrCode> [
    EC_SUCCESS,
    EC_SERVER_UNKNOWN,
    EC_BAD_CODE,
    EC_UNAUTHORIZED,
    EC_IS_NOT_FRIEND,
    EC_IS_NOT_IN_GROUP,
    EC_DEVICE_NOT_BIND_USER,
    EC_BAD_REQUEST,
    EC_USER_ALREADY_EXIST,
    EC_GROUP_ALREADY_EXIST,
    EC_GROUP_NOT_EXIST,
    EC_USER_NOT_EXIST,
    EC_DEVICE_NOT_EXIST,
  ];

  static final $core.Map<$core.int, ErrCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ErrCode valueOf($core.int value) => _byValue[value];

  const ErrCode._($core.int v, $core.String n) : super(v, n);
}

