///
//  Generated code. Do not modify.
//  source: push.ext.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class PushCode extends $pb.ProtobufEnum {
  static const PushCode PC_ADD_DEFAULT = PushCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PC_ADD_DEFAULT');
  static const PushCode PC_ADD_FRIEND = PushCode._(100, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PC_ADD_FRIEND');
  static const PushCode PC_AGREE_ADD_FRIEND = PushCode._(101, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PC_AGREE_ADD_FRIEND');
  static const PushCode PC_UPDATE_GROUP = PushCode._(110, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PC_UPDATE_GROUP');
  static const PushCode PC_ADD_GROUP_MEMBERS = PushCode._(120, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PC_ADD_GROUP_MEMBERS');
  static const PushCode PC_REMOVE_GROUP_MEMBER = PushCode._(121, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PC_REMOVE_GROUP_MEMBER');

  static const $core.List<PushCode> values = <PushCode> [
    PC_ADD_DEFAULT,
    PC_ADD_FRIEND,
    PC_AGREE_ADD_FRIEND,
    PC_UPDATE_GROUP,
    PC_ADD_GROUP_MEMBERS,
    PC_REMOVE_GROUP_MEMBER,
  ];

  static final $core.Map<$core.int, PushCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PushCode valueOf($core.int value) => _byValue[value];

  const PushCode._($core.int v, $core.String n) : super(v, n);
}

