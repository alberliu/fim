///
//  Generated code. Do not modify.
//  source: logic.ext.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use memberTypeDescriptor instead')
const MemberType$json = const {
  '1': 'MemberType',
  '2': const [
    const {'1': 'GMT_UNKNOWN', '2': 0},
    const {'1': 'GMT_ADMIN', '2': 1},
    const {'1': 'GMT_MEMBER', '2': 2},
  ],
};

/// Descriptor for `MemberType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List memberTypeDescriptor = $convert.base64Decode('CgpNZW1iZXJUeXBlEg8KC0dNVF9VTktOT1dOEAASDQoJR01UX0FETUlOEAESDgoKR01UX01FTUJFUhAC');
@$core.Deprecated('Use registerDeviceReqDescriptor instead')
const RegisterDeviceReq$json = const {
  '1': 'RegisterDeviceReq',
  '2': const [
    const {'1': 'type', '3': 2, '4': 1, '5': 5, '10': 'type'},
    const {'1': 'brand', '3': 3, '4': 1, '5': 9, '10': 'brand'},
    const {'1': 'model', '3': 4, '4': 1, '5': 9, '10': 'model'},
    const {'1': 'system_version', '3': 5, '4': 1, '5': 9, '10': 'systemVersion'},
    const {'1': 'sdk_version', '3': 6, '4': 1, '5': 9, '10': 'sdkVersion'},
  ],
};

/// Descriptor for `RegisterDeviceReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerDeviceReqDescriptor = $convert.base64Decode('ChFSZWdpc3RlckRldmljZVJlcRISCgR0eXBlGAIgASgFUgR0eXBlEhQKBWJyYW5kGAMgASgJUgVicmFuZBIUCgVtb2RlbBgEIAEoCVIFbW9kZWwSJQoOc3lzdGVtX3ZlcnNpb24YBSABKAlSDXN5c3RlbVZlcnNpb24SHwoLc2RrX3ZlcnNpb24YBiABKAlSCnNka1ZlcnNpb24=');
@$core.Deprecated('Use registerDeviceRespDescriptor instead')
const RegisterDeviceResp$json = const {
  '1': 'RegisterDeviceResp',
  '2': const [
    const {'1': 'device_id', '3': 1, '4': 1, '5': 3, '10': 'deviceId'},
  ],
};

/// Descriptor for `RegisterDeviceResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerDeviceRespDescriptor = $convert.base64Decode('ChJSZWdpc3RlckRldmljZVJlc3ASGwoJZGV2aWNlX2lkGAEgASgDUghkZXZpY2VJZA==');
@$core.Deprecated('Use sendMessageReqDescriptor instead')
const SendMessageReq$json = const {
  '1': 'SendMessageReq',
  '2': const [
    const {'1': 'receiver_type', '3': 1, '4': 1, '5': 14, '6': '.pb.ReceiverType', '10': 'receiverType'},
    const {'1': 'receiver_id', '3': 2, '4': 1, '5': 3, '10': 'receiverId'},
    const {'1': 'to_user_ids', '3': 3, '4': 3, '5': 3, '10': 'toUserIds'},
    const {'1': 'message_type', '3': 4, '4': 1, '5': 14, '6': '.pb.MessageType', '10': 'messageType'},
    const {'1': 'message_content', '3': 5, '4': 1, '5': 12, '10': 'messageContent'},
    const {'1': 'send_time', '3': 6, '4': 1, '5': 3, '10': 'sendTime'},
    const {'1': 'is_persist', '3': 7, '4': 1, '5': 8, '10': 'isPersist'},
  ],
};

/// Descriptor for `SendMessageReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendMessageReqDescriptor = $convert.base64Decode('Cg5TZW5kTWVzc2FnZVJlcRI1Cg1yZWNlaXZlcl90eXBlGAEgASgOMhAucGIuUmVjZWl2ZXJUeXBlUgxyZWNlaXZlclR5cGUSHwoLcmVjZWl2ZXJfaWQYAiABKANSCnJlY2VpdmVySWQSHgoLdG9fdXNlcl9pZHMYAyADKANSCXRvVXNlcklkcxIyCgxtZXNzYWdlX3R5cGUYBCABKA4yDy5wYi5NZXNzYWdlVHlwZVILbWVzc2FnZVR5cGUSJwoPbWVzc2FnZV9jb250ZW50GAUgASgMUg5tZXNzYWdlQ29udGVudBIbCglzZW5kX3RpbWUYBiABKANSCHNlbmRUaW1lEh0KCmlzX3BlcnNpc3QYByABKAhSCWlzUGVyc2lzdA==');
@$core.Deprecated('Use sendMessageRespDescriptor instead')
const SendMessageResp$json = const {
  '1': 'SendMessageResp',
  '2': const [
    const {'1': 'seq', '3': 1, '4': 1, '5': 3, '10': 'seq'},
  ],
};

/// Descriptor for `SendMessageResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendMessageRespDescriptor = $convert.base64Decode('Cg9TZW5kTWVzc2FnZVJlc3ASEAoDc2VxGAEgASgDUgNzZXE=');
@$core.Deprecated('Use pushRoomReqDescriptor instead')
const PushRoomReq$json = const {
  '1': 'PushRoomReq',
  '2': const [
    const {'1': 'room_id', '3': 1, '4': 1, '5': 3, '10': 'roomId'},
    const {'1': 'message_type', '3': 2, '4': 1, '5': 14, '6': '.pb.MessageType', '10': 'messageType'},
    const {'1': 'message_content', '3': 3, '4': 1, '5': 12, '10': 'messageContent'},
    const {'1': 'send_time', '3': 4, '4': 1, '5': 3, '10': 'sendTime'},
    const {'1': 'is_persist', '3': 5, '4': 1, '5': 8, '10': 'isPersist'},
    const {'1': 'is_priority', '3': 6, '4': 1, '5': 8, '10': 'isPriority'},
  ],
};

/// Descriptor for `PushRoomReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pushRoomReqDescriptor = $convert.base64Decode('CgtQdXNoUm9vbVJlcRIXCgdyb29tX2lkGAEgASgDUgZyb29tSWQSMgoMbWVzc2FnZV90eXBlGAIgASgOMg8ucGIuTWVzc2FnZVR5cGVSC21lc3NhZ2VUeXBlEicKD21lc3NhZ2VfY29udGVudBgDIAEoDFIObWVzc2FnZUNvbnRlbnQSGwoJc2VuZF90aW1lGAQgASgDUghzZW5kVGltZRIdCgppc19wZXJzaXN0GAUgASgIUglpc1BlcnNpc3QSHwoLaXNfcHJpb3JpdHkYBiABKAhSCmlzUHJpb3JpdHk=');
@$core.Deprecated('Use addFriendReqDescriptor instead')
const AddFriendReq$json = const {
  '1': 'AddFriendReq',
  '2': const [
    const {'1': 'friend_id', '3': 1, '4': 1, '5': 3, '10': 'friendId'},
    const {'1': 'remarks', '3': 2, '4': 1, '5': 9, '10': 'remarks'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `AddFriendReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addFriendReqDescriptor = $convert.base64Decode('CgxBZGRGcmllbmRSZXESGwoJZnJpZW5kX2lkGAEgASgDUghmcmllbmRJZBIYCgdyZW1hcmtzGAIgASgJUgdyZW1hcmtzEiAKC2Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbg==');
@$core.Deprecated('Use agreeAddFriendReqDescriptor instead')
const AgreeAddFriendReq$json = const {
  '1': 'AgreeAddFriendReq',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'remarks', '3': 2, '4': 1, '5': 9, '10': 'remarks'},
  ],
};

/// Descriptor for `AgreeAddFriendReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List agreeAddFriendReqDescriptor = $convert.base64Decode('ChFBZ3JlZUFkZEZyaWVuZFJlcRIXCgd1c2VyX2lkGAEgASgDUgZ1c2VySWQSGAoHcmVtYXJrcxgCIAEoCVIHcmVtYXJrcw==');
@$core.Deprecated('Use setFriendReqDescriptor instead')
const SetFriendReq$json = const {
  '1': 'SetFriendReq',
  '2': const [
    const {'1': 'friend_id', '3': 1, '4': 1, '5': 3, '10': 'friendId'},
    const {'1': 'remarks', '3': 2, '4': 1, '5': 9, '10': 'remarks'},
    const {'1': 'extra', '3': 8, '4': 1, '5': 9, '10': 'extra'},
  ],
};

/// Descriptor for `SetFriendReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setFriendReqDescriptor = $convert.base64Decode('CgxTZXRGcmllbmRSZXESGwoJZnJpZW5kX2lkGAEgASgDUghmcmllbmRJZBIYCgdyZW1hcmtzGAIgASgJUgdyZW1hcmtzEhQKBWV4dHJhGAggASgJUgVleHRyYQ==');
@$core.Deprecated('Use setFriendRespDescriptor instead')
const SetFriendResp$json = const {
  '1': 'SetFriendResp',
  '2': const [
    const {'1': 'friend_id', '3': 1, '4': 1, '5': 3, '10': 'friendId'},
    const {'1': 'remarks', '3': 2, '4': 1, '5': 9, '10': 'remarks'},
    const {'1': 'extra', '3': 8, '4': 1, '5': 9, '10': 'extra'},
  ],
};

/// Descriptor for `SetFriendResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setFriendRespDescriptor = $convert.base64Decode('Cg1TZXRGcmllbmRSZXNwEhsKCWZyaWVuZF9pZBgBIAEoA1IIZnJpZW5kSWQSGAoHcmVtYXJrcxgCIAEoCVIHcmVtYXJrcxIUCgVleHRyYRgIIAEoCVIFZXh0cmE=');
@$core.Deprecated('Use friendDescriptor instead')
const Friend$json = const {
  '1': 'Friend',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'phone_number', '3': 2, '4': 1, '5': 9, '10': 'phoneNumber'},
    const {'1': 'nickname', '3': 3, '4': 1, '5': 9, '10': 'nickname'},
    const {'1': 'sex', '3': 4, '4': 1, '5': 5, '10': 'sex'},
    const {'1': 'avatar_url', '3': 5, '4': 1, '5': 9, '10': 'avatarUrl'},
    const {'1': 'user_extra', '3': 6, '4': 1, '5': 9, '10': 'userExtra'},
    const {'1': 'remarks', '3': 7, '4': 1, '5': 9, '10': 'remarks'},
    const {'1': 'extra', '3': 8, '4': 1, '5': 9, '10': 'extra'},
  ],
};

/// Descriptor for `Friend`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List friendDescriptor = $convert.base64Decode('CgZGcmllbmQSFwoHdXNlcl9pZBgBIAEoA1IGdXNlcklkEiEKDHBob25lX251bWJlchgCIAEoCVILcGhvbmVOdW1iZXISGgoIbmlja25hbWUYAyABKAlSCG5pY2tuYW1lEhAKA3NleBgEIAEoBVIDc2V4Eh0KCmF2YXRhcl91cmwYBSABKAlSCWF2YXRhclVybBIdCgp1c2VyX2V4dHJhGAYgASgJUgl1c2VyRXh0cmESGAoHcmVtYXJrcxgHIAEoCVIHcmVtYXJrcxIUCgVleHRyYRgIIAEoCVIFZXh0cmE=');
@$core.Deprecated('Use getFriendsRespDescriptor instead')
const GetFriendsResp$json = const {
  '1': 'GetFriendsResp',
  '2': const [
    const {'1': 'friends', '3': 1, '4': 3, '5': 11, '6': '.pb.Friend', '10': 'friends'},
  ],
};

/// Descriptor for `GetFriendsResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFriendsRespDescriptor = $convert.base64Decode('Cg5HZXRGcmllbmRzUmVzcBIkCgdmcmllbmRzGAEgAygLMgoucGIuRnJpZW5kUgdmcmllbmRz');
@$core.Deprecated('Use createGroupReqDescriptor instead')
const CreateGroupReq$json = const {
  '1': 'CreateGroupReq',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'avatar_url', '3': 2, '4': 1, '5': 9, '10': 'avatarUrl'},
    const {'1': 'introduction', '3': 3, '4': 1, '5': 9, '10': 'introduction'},
    const {'1': 'extra', '3': 4, '4': 1, '5': 9, '10': 'extra'},
    const {'1': 'member_ids', '3': 5, '4': 3, '5': 3, '10': 'memberIds'},
  ],
};

/// Descriptor for `CreateGroupReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createGroupReqDescriptor = $convert.base64Decode('Cg5DcmVhdGVHcm91cFJlcRISCgRuYW1lGAEgASgJUgRuYW1lEh0KCmF2YXRhcl91cmwYAiABKAlSCWF2YXRhclVybBIiCgxpbnRyb2R1Y3Rpb24YAyABKAlSDGludHJvZHVjdGlvbhIUCgVleHRyYRgEIAEoCVIFZXh0cmESHQoKbWVtYmVyX2lkcxgFIAMoA1IJbWVtYmVySWRz');
@$core.Deprecated('Use createGroupRespDescriptor instead')
const CreateGroupResp$json = const {
  '1': 'CreateGroupResp',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
  ],
};

/// Descriptor for `CreateGroupResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createGroupRespDescriptor = $convert.base64Decode('Cg9DcmVhdGVHcm91cFJlc3ASGQoIZ3JvdXBfaWQYASABKANSB2dyb3VwSWQ=');
@$core.Deprecated('Use updateGroupReqDescriptor instead')
const UpdateGroupReq$json = const {
  '1': 'UpdateGroupReq',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
    const {'1': 'avatar_url', '3': 2, '4': 1, '5': 9, '10': 'avatarUrl'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'introduction', '3': 4, '4': 1, '5': 9, '10': 'introduction'},
    const {'1': 'extra', '3': 5, '4': 1, '5': 9, '10': 'extra'},
  ],
};

/// Descriptor for `UpdateGroupReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateGroupReqDescriptor = $convert.base64Decode('Cg5VcGRhdGVHcm91cFJlcRIZCghncm91cF9pZBgBIAEoA1IHZ3JvdXBJZBIdCgphdmF0YXJfdXJsGAIgASgJUglhdmF0YXJVcmwSEgoEbmFtZRgDIAEoCVIEbmFtZRIiCgxpbnRyb2R1Y3Rpb24YBCABKAlSDGludHJvZHVjdGlvbhIUCgVleHRyYRgFIAEoCVIFZXh0cmE=');
@$core.Deprecated('Use getGroupReqDescriptor instead')
const GetGroupReq$json = const {
  '1': 'GetGroupReq',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
  ],
};

/// Descriptor for `GetGroupReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getGroupReqDescriptor = $convert.base64Decode('CgtHZXRHcm91cFJlcRIZCghncm91cF9pZBgBIAEoA1IHZ3JvdXBJZA==');
@$core.Deprecated('Use getGroupRespDescriptor instead')
const GetGroupResp$json = const {
  '1': 'GetGroupResp',
  '2': const [
    const {'1': 'group', '3': 1, '4': 1, '5': 11, '6': '.pb.Group', '10': 'group'},
  ],
};

/// Descriptor for `GetGroupResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getGroupRespDescriptor = $convert.base64Decode('CgxHZXRHcm91cFJlc3ASHwoFZ3JvdXAYASABKAsyCS5wYi5Hcm91cFIFZ3JvdXA=');
@$core.Deprecated('Use groupDescriptor instead')
const Group$json = const {
  '1': 'Group',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'avatar_url', '3': 3, '4': 1, '5': 9, '10': 'avatarUrl'},
    const {'1': 'introduction', '3': 4, '4': 1, '5': 9, '10': 'introduction'},
    const {'1': 'user_mum', '3': 5, '4': 1, '5': 5, '10': 'userMum'},
    const {'1': 'extra', '3': 6, '4': 1, '5': 9, '10': 'extra'},
    const {'1': 'create_time', '3': 7, '4': 1, '5': 3, '10': 'createTime'},
    const {'1': 'update_time', '3': 8, '4': 1, '5': 3, '10': 'updateTime'},
  ],
};

/// Descriptor for `Group`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupDescriptor = $convert.base64Decode('CgVHcm91cBIZCghncm91cF9pZBgBIAEoA1IHZ3JvdXBJZBISCgRuYW1lGAIgASgJUgRuYW1lEh0KCmF2YXRhcl91cmwYAyABKAlSCWF2YXRhclVybBIiCgxpbnRyb2R1Y3Rpb24YBCABKAlSDGludHJvZHVjdGlvbhIZCgh1c2VyX211bRgFIAEoBVIHdXNlck11bRIUCgVleHRyYRgGIAEoCVIFZXh0cmESHwoLY3JlYXRlX3RpbWUYByABKANSCmNyZWF0ZVRpbWUSHwoLdXBkYXRlX3RpbWUYCCABKANSCnVwZGF0ZVRpbWU=');
@$core.Deprecated('Use getGroupsRespDescriptor instead')
const GetGroupsResp$json = const {
  '1': 'GetGroupsResp',
  '2': const [
    const {'1': 'groups', '3': 1, '4': 3, '5': 11, '6': '.pb.Group', '10': 'groups'},
  ],
};

/// Descriptor for `GetGroupsResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getGroupsRespDescriptor = $convert.base64Decode('Cg1HZXRHcm91cHNSZXNwEiEKBmdyb3VwcxgBIAMoCzIJLnBiLkdyb3VwUgZncm91cHM=');
@$core.Deprecated('Use addGroupMembersReqDescriptor instead')
const AddGroupMembersReq$json = const {
  '1': 'AddGroupMembersReq',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
    const {'1': 'user_ids', '3': 2, '4': 3, '5': 3, '10': 'userIds'},
  ],
};

/// Descriptor for `AddGroupMembersReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addGroupMembersReqDescriptor = $convert.base64Decode('ChJBZGRHcm91cE1lbWJlcnNSZXESGQoIZ3JvdXBfaWQYASABKANSB2dyb3VwSWQSGQoIdXNlcl9pZHMYAiADKANSB3VzZXJJZHM=');
@$core.Deprecated('Use addGroupMembersRespDescriptor instead')
const AddGroupMembersResp$json = const {
  '1': 'AddGroupMembersResp',
  '2': const [
    const {'1': 'user_ids', '3': 1, '4': 3, '5': 3, '10': 'userIds'},
  ],
};

/// Descriptor for `AddGroupMembersResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addGroupMembersRespDescriptor = $convert.base64Decode('ChNBZGRHcm91cE1lbWJlcnNSZXNwEhkKCHVzZXJfaWRzGAEgAygDUgd1c2VySWRz');
@$core.Deprecated('Use updateGroupMemberReqDescriptor instead')
const UpdateGroupMemberReq$json = const {
  '1': 'UpdateGroupMemberReq',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'member_type', '3': 3, '4': 1, '5': 14, '6': '.pb.MemberType', '10': 'memberType'},
    const {'1': 'remarks', '3': 4, '4': 1, '5': 9, '10': 'remarks'},
    const {'1': 'extra', '3': 5, '4': 1, '5': 9, '10': 'extra'},
  ],
};

/// Descriptor for `UpdateGroupMemberReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateGroupMemberReqDescriptor = $convert.base64Decode('ChRVcGRhdGVHcm91cE1lbWJlclJlcRIZCghncm91cF9pZBgBIAEoA1IHZ3JvdXBJZBIXCgd1c2VyX2lkGAIgASgDUgZ1c2VySWQSLwoLbWVtYmVyX3R5cGUYAyABKA4yDi5wYi5NZW1iZXJUeXBlUgptZW1iZXJUeXBlEhgKB3JlbWFya3MYBCABKAlSB3JlbWFya3MSFAoFZXh0cmEYBSABKAlSBWV4dHJh');
@$core.Deprecated('Use deleteGroupMemberReqDescriptor instead')
const DeleteGroupMemberReq$json = const {
  '1': 'DeleteGroupMemberReq',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `DeleteGroupMemberReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteGroupMemberReqDescriptor = $convert.base64Decode('ChREZWxldGVHcm91cE1lbWJlclJlcRIZCghncm91cF9pZBgBIAEoA1IHZ3JvdXBJZBIXCgd1c2VyX2lkGAIgASgDUgZ1c2VySWQ=');
@$core.Deprecated('Use getGroupMembersReqDescriptor instead')
const GetGroupMembersReq$json = const {
  '1': 'GetGroupMembersReq',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
  ],
};

/// Descriptor for `GetGroupMembersReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getGroupMembersReqDescriptor = $convert.base64Decode('ChJHZXRHcm91cE1lbWJlcnNSZXESGQoIZ3JvdXBfaWQYASABKANSB2dyb3VwSWQ=');
@$core.Deprecated('Use getGroupMembersRespDescriptor instead')
const GetGroupMembersResp$json = const {
  '1': 'GetGroupMembersResp',
  '2': const [
    const {'1': 'members', '3': 1, '4': 3, '5': 11, '6': '.pb.GroupMember', '10': 'members'},
  ],
};

/// Descriptor for `GetGroupMembersResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getGroupMembersRespDescriptor = $convert.base64Decode('ChNHZXRHcm91cE1lbWJlcnNSZXNwEikKB21lbWJlcnMYASADKAsyDy5wYi5Hcm91cE1lbWJlclIHbWVtYmVycw==');
@$core.Deprecated('Use groupMemberDescriptor instead')
const GroupMember$json = const {
  '1': 'GroupMember',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'nickname', '3': 2, '4': 1, '5': 9, '10': 'nickname'},
    const {'1': 'sex', '3': 3, '4': 1, '5': 5, '10': 'sex'},
    const {'1': 'avatar_url', '3': 4, '4': 1, '5': 9, '10': 'avatarUrl'},
    const {'1': 'user_extra', '3': 5, '4': 1, '5': 9, '10': 'userExtra'},
    const {'1': 'member_type', '3': 6, '4': 1, '5': 14, '6': '.pb.MemberType', '10': 'memberType'},
    const {'1': 'remarks', '3': 7, '4': 1, '5': 9, '10': 'remarks'},
    const {'1': 'extra', '3': 8, '4': 1, '5': 9, '10': 'extra'},
  ],
};

/// Descriptor for `GroupMember`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupMemberDescriptor = $convert.base64Decode('CgtHcm91cE1lbWJlchIXCgd1c2VyX2lkGAEgASgDUgZ1c2VySWQSGgoIbmlja25hbWUYAiABKAlSCG5pY2tuYW1lEhAKA3NleBgDIAEoBVIDc2V4Eh0KCmF2YXRhcl91cmwYBCABKAlSCWF2YXRhclVybBIdCgp1c2VyX2V4dHJhGAUgASgJUgl1c2VyRXh0cmESLwoLbWVtYmVyX3R5cGUYBiABKA4yDi5wYi5NZW1iZXJUeXBlUgptZW1iZXJUeXBlEhgKB3JlbWFya3MYByABKAlSB3JlbWFya3MSFAoFZXh0cmEYCCABKAlSBWV4dHJh');
