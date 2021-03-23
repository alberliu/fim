///
//  Generated code. Do not modify.
//  source: push.ext.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use pushCodeDescriptor instead')
const PushCode$json = const {
  '1': 'PushCode',
  '2': const [
    const {'1': 'PC_ADD_DEFAULT', '2': 0},
    const {'1': 'PC_ADD_FRIEND', '2': 100},
    const {'1': 'PC_AGREE_ADD_FRIEND', '2': 101},
    const {'1': 'PC_UPDATE_GROUP', '2': 110},
    const {'1': 'PC_ADD_GROUP_MEMBERS', '2': 120},
    const {'1': 'PC_REMOVE_GROUP_MEMBER', '2': 121},
  ],
};

/// Descriptor for `PushCode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List pushCodeDescriptor = $convert.base64Decode('CghQdXNoQ29kZRISCg5QQ19BRERfREVGQVVMVBAAEhEKDVBDX0FERF9GUklFTkQQZBIXChNQQ19BR1JFRV9BRERfRlJJRU5EEGUSEwoPUENfVVBEQVRFX0dST1VQEG4SGAoUUENfQUREX0dST1VQX01FTUJFUlMQeBIaChZQQ19SRU1PVkVfR1JPVVBfTUVNQkVSEHk=');
@$core.Deprecated('Use addFriendPushDescriptor instead')
const AddFriendPush$json = const {
  '1': 'AddFriendPush',
  '2': const [
    const {'1': 'friend_id', '3': 1, '4': 1, '5': 3, '10': 'friendId'},
    const {'1': 'nickname', '3': 2, '4': 1, '5': 9, '10': 'nickname'},
    const {'1': 'avatar_url', '3': 3, '4': 1, '5': 9, '10': 'avatarUrl'},
    const {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `AddFriendPush`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addFriendPushDescriptor = $convert.base64Decode('Cg1BZGRGcmllbmRQdXNoEhsKCWZyaWVuZF9pZBgBIAEoA1IIZnJpZW5kSWQSGgoIbmlja25hbWUYAiABKAlSCG5pY2tuYW1lEh0KCmF2YXRhcl91cmwYAyABKAlSCWF2YXRhclVybBIgCgtkZXNjcmlwdGlvbhgEIAEoCVILZGVzY3JpcHRpb24=');
@$core.Deprecated('Use agreeAddFriendPushDescriptor instead')
const AgreeAddFriendPush$json = const {
  '1': 'AgreeAddFriendPush',
  '2': const [
    const {'1': 'friend_id', '3': 1, '4': 1, '5': 3, '10': 'friendId'},
    const {'1': 'nickname', '3': 2, '4': 1, '5': 9, '10': 'nickname'},
    const {'1': 'avatar_url', '3': 3, '4': 1, '5': 9, '10': 'avatarUrl'},
  ],
};

/// Descriptor for `AgreeAddFriendPush`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List agreeAddFriendPushDescriptor = $convert.base64Decode('ChJBZ3JlZUFkZEZyaWVuZFB1c2gSGwoJZnJpZW5kX2lkGAEgASgDUghmcmllbmRJZBIaCghuaWNrbmFtZRgCIAEoCVIIbmlja25hbWUSHQoKYXZhdGFyX3VybBgDIAEoCVIJYXZhdGFyVXJs');
@$core.Deprecated('Use updateGroupPushDescriptor instead')
const UpdateGroupPush$json = const {
  '1': 'UpdateGroupPush',
  '2': const [
    const {'1': 'opt_id', '3': 1, '4': 1, '5': 3, '10': 'optId'},
    const {'1': 'opt_name', '3': 2, '4': 1, '5': 9, '10': 'optName'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'avatar_url', '3': 4, '4': 1, '5': 9, '10': 'avatarUrl'},
    const {'1': 'introduction', '3': 5, '4': 1, '5': 9, '10': 'introduction'},
    const {'1': 'extra', '3': 6, '4': 1, '5': 9, '10': 'extra'},
  ],
};

/// Descriptor for `UpdateGroupPush`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateGroupPushDescriptor = $convert.base64Decode('Cg9VcGRhdGVHcm91cFB1c2gSFQoGb3B0X2lkGAEgASgDUgVvcHRJZBIZCghvcHRfbmFtZRgCIAEoCVIHb3B0TmFtZRISCgRuYW1lGAMgASgJUgRuYW1lEh0KCmF2YXRhcl91cmwYBCABKAlSCWF2YXRhclVybBIiCgxpbnRyb2R1Y3Rpb24YBSABKAlSDGludHJvZHVjdGlvbhIUCgVleHRyYRgGIAEoCVIFZXh0cmE=');
@$core.Deprecated('Use addGroupMembersPushDescriptor instead')
const AddGroupMembersPush$json = const {
  '1': 'AddGroupMembersPush',
  '2': const [
    const {'1': 'opt_id', '3': 1, '4': 1, '5': 3, '10': 'optId'},
    const {'1': 'opt_name', '3': 2, '4': 1, '5': 9, '10': 'optName'},
    const {'1': 'members', '3': 3, '4': 3, '5': 11, '6': '.pb.GroupMember', '10': 'members'},
  ],
};

/// Descriptor for `AddGroupMembersPush`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addGroupMembersPushDescriptor = $convert.base64Decode('ChNBZGRHcm91cE1lbWJlcnNQdXNoEhUKBm9wdF9pZBgBIAEoA1IFb3B0SWQSGQoIb3B0X25hbWUYAiABKAlSB29wdE5hbWUSKQoHbWVtYmVycxgDIAMoCzIPLnBiLkdyb3VwTWVtYmVyUgdtZW1iZXJz');
@$core.Deprecated('Use removeGroupMemberPushDescriptor instead')
const RemoveGroupMemberPush$json = const {
  '1': 'RemoveGroupMemberPush',
  '2': const [
    const {'1': 'opt_id', '3': 1, '4': 1, '5': 3, '10': 'optId'},
    const {'1': 'opt_name', '3': 2, '4': 1, '5': 9, '10': 'optName'},
    const {'1': 'deleted_user_id', '3': 3, '4': 1, '5': 3, '10': 'deletedUserId'},
  ],
};

/// Descriptor for `RemoveGroupMemberPush`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeGroupMemberPushDescriptor = $convert.base64Decode('ChVSZW1vdmVHcm91cE1lbWJlclB1c2gSFQoGb3B0X2lkGAEgASgDUgVvcHRJZBIZCghvcHRfbmFtZRgCIAEoCVIHb3B0TmFtZRImCg9kZWxldGVkX3VzZXJfaWQYAyABKANSDWRlbGV0ZWRVc2VySWQ=');
