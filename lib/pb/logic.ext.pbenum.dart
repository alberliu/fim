///
//  Generated code. Do not modify.
//  source: logic.ext.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class MemberType extends $pb.ProtobufEnum {
  static const MemberType GMT_UNKNOWN = MemberType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GMT_UNKNOWN');
  static const MemberType GMT_ADMIN = MemberType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GMT_ADMIN');
  static const MemberType GMT_MEMBER = MemberType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GMT_MEMBER');

  static const $core.List<MemberType> values = <MemberType> [
    GMT_UNKNOWN,
    GMT_ADMIN,
    GMT_MEMBER,
  ];

  static final $core.Map<$core.int, MemberType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MemberType? valueOf($core.int value) => _byValue[value];

  const MemberType._($core.int v, $core.String n) : super(v, n);
}

