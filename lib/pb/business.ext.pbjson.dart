///
//  Generated code. Do not modify.
//  source: business.ext.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use signInReqDescriptor instead')
const SignInReq$json = const {
  '1': 'SignInReq',
  '2': const [
    const {'1': 'phone_number', '3': 1, '4': 1, '5': 9, '10': 'phoneNumber'},
    const {'1': 'code', '3': 2, '4': 1, '5': 9, '10': 'code'},
    const {'1': 'device_id', '3': 3, '4': 1, '5': 3, '10': 'deviceId'},
  ],
};

/// Descriptor for `SignInReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signInReqDescriptor = $convert.base64Decode('CglTaWduSW5SZXESIQoMcGhvbmVfbnVtYmVyGAEgASgJUgtwaG9uZU51bWJlchISCgRjb2RlGAIgASgJUgRjb2RlEhsKCWRldmljZV9pZBgDIAEoA1IIZGV2aWNlSWQ=');
@$core.Deprecated('Use signInRespDescriptor instead')
const SignInResp$json = const {
  '1': 'SignInResp',
  '2': const [
    const {'1': 'is_new', '3': 1, '4': 1, '5': 8, '10': 'isNew'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `SignInResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signInRespDescriptor = $convert.base64Decode('CgpTaWduSW5SZXNwEhUKBmlzX25ldxgBIAEoCFIFaXNOZXcSFwoHdXNlcl9pZBgCIAEoA1IGdXNlcklkEhQKBXRva2VuGAMgASgJUgV0b2tlbg==');
@$core.Deprecated('Use userDescriptor instead')
const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'nickname', '3': 2, '4': 1, '5': 9, '10': 'nickname'},
    const {'1': 'sex', '3': 3, '4': 1, '5': 5, '10': 'sex'},
    const {'1': 'avatar_url', '3': 4, '4': 1, '5': 9, '10': 'avatarUrl'},
    const {'1': 'extra', '3': 5, '4': 1, '5': 9, '10': 'extra'},
    const {'1': 'create_time', '3': 6, '4': 1, '5': 3, '10': 'createTime'},
    const {'1': 'update_time', '3': 7, '4': 1, '5': 3, '10': 'updateTime'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode('CgRVc2VyEhcKB3VzZXJfaWQYASABKANSBnVzZXJJZBIaCghuaWNrbmFtZRgCIAEoCVIIbmlja25hbWUSEAoDc2V4GAMgASgFUgNzZXgSHQoKYXZhdGFyX3VybBgEIAEoCVIJYXZhdGFyVXJsEhQKBWV4dHJhGAUgASgJUgVleHRyYRIfCgtjcmVhdGVfdGltZRgGIAEoA1IKY3JlYXRlVGltZRIfCgt1cGRhdGVfdGltZRgHIAEoA1IKdXBkYXRlVGltZQ==');
@$core.Deprecated('Use getUserReqDescriptor instead')
const GetUserReq$json = const {
  '1': 'GetUserReq',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `GetUserReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserReqDescriptor = $convert.base64Decode('CgpHZXRVc2VyUmVxEhcKB3VzZXJfaWQYASABKANSBnVzZXJJZA==');
@$core.Deprecated('Use getUserRespDescriptor instead')
const GetUserResp$json = const {
  '1': 'GetUserResp',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.pb.User', '10': 'user'},
  ],
};

/// Descriptor for `GetUserResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserRespDescriptor = $convert.base64Decode('CgtHZXRVc2VyUmVzcBIcCgR1c2VyGAEgASgLMggucGIuVXNlclIEdXNlcg==');
@$core.Deprecated('Use updateUserReqDescriptor instead')
const UpdateUserReq$json = const {
  '1': 'UpdateUserReq',
  '2': const [
    const {'1': 'nickname', '3': 1, '4': 1, '5': 9, '10': 'nickname'},
    const {'1': 'sex', '3': 2, '4': 1, '5': 5, '10': 'sex'},
    const {'1': 'avatar_url', '3': 3, '4': 1, '5': 9, '10': 'avatarUrl'},
    const {'1': 'extra', '3': 4, '4': 1, '5': 9, '10': 'extra'},
  ],
};

/// Descriptor for `UpdateUserReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserReqDescriptor = $convert.base64Decode('Cg1VcGRhdGVVc2VyUmVxEhoKCG5pY2tuYW1lGAEgASgJUghuaWNrbmFtZRIQCgNzZXgYAiABKAVSA3NleBIdCgphdmF0YXJfdXJsGAMgASgJUglhdmF0YXJVcmwSFAoFZXh0cmEYBCABKAlSBWV4dHJh');
@$core.Deprecated('Use searchUserReqDescriptor instead')
const SearchUserReq$json = const {
  '1': 'SearchUserReq',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `SearchUserReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchUserReqDescriptor = $convert.base64Decode('Cg1TZWFyY2hVc2VyUmVxEhAKA2tleRgBIAEoCVIDa2V5');
@$core.Deprecated('Use searchUserRespDescriptor instead')
const SearchUserResp$json = const {
  '1': 'SearchUserResp',
  '2': const [
    const {'1': 'users', '3': 1, '4': 3, '5': 11, '6': '.pb.User', '10': 'users'},
  ],
};

/// Descriptor for `SearchUserResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchUserRespDescriptor = $convert.base64Decode('Cg5TZWFyY2hVc2VyUmVzcBIeCgV1c2VycxgBIAMoCzIILnBiLlVzZXJSBXVzZXJz');
