///
//  Generated code. Do not modify.
//  source: logic.ext.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const GroupType$json = const {
  '1': 'GroupType',
  '2': const [
    const {'1': 'GT_UNKNOWN', '2': 0},
    const {'1': 'GT_SMALL', '2': 1},
    const {'1': 'GT_LARGE', '2': 2},
  ],
};

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

const RegisterDeviceResp$json = const {
  '1': 'RegisterDeviceResp',
  '2': const [
    const {'1': 'device_id', '3': 1, '4': 1, '5': 3, '10': 'deviceId'},
  ],
};

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

const SendMessageResp$json = const {
  '1': 'SendMessageResp',
  '2': const [
    const {'1': 'seq', '3': 1, '4': 1, '5': 3, '10': 'seq'},
  ],
};

const AddFriendReq$json = const {
  '1': 'AddFriendReq',
  '2': const [
    const {'1': 'friend_id', '3': 1, '4': 1, '5': 3, '10': 'friendId'},
    const {'1': 'remarks', '3': 2, '4': 1, '5': 9, '10': 'remarks'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
  ],
};

const AddFriendResp$json = const {
  '1': 'AddFriendResp',
};

const AgreeAddFriendReq$json = const {
  '1': 'AgreeAddFriendReq',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'remarks', '3': 2, '4': 1, '5': 9, '10': 'remarks'},
  ],
};

const AgreeAddFriendResp$json = const {
  '1': 'AgreeAddFriendResp',
};

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

const GetFriendsReq$json = const {
  '1': 'GetFriendsReq',
};

const GetFriendsResp$json = const {
  '1': 'GetFriendsResp',
  '2': const [
    const {'1': 'friends', '3': 1, '4': 3, '5': 11, '6': '.pb.Friend', '10': 'friends'},
  ],
};

const CreateGroupReq$json = const {
  '1': 'CreateGroupReq',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'avatar_url', '3': 2, '4': 1, '5': 9, '10': 'avatarUrl'},
    const {'1': 'introduction', '3': 3, '4': 1, '5': 9, '10': 'introduction'},
    const {'1': 'type', '3': 4, '4': 1, '5': 14, '6': '.pb.GroupType', '10': 'type'},
    const {'1': 'extra', '3': 5, '4': 1, '5': 9, '10': 'extra'},
  ],
};

const CreateGroupResp$json = const {
  '1': 'CreateGroupResp',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
  ],
};

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

const UpdateGroupResp$json = const {
  '1': 'UpdateGroupResp',
};

const GetGroupReq$json = const {
  '1': 'GetGroupReq',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
  ],
};

const GetGroupResp$json = const {
  '1': 'GetGroupResp',
  '2': const [
    const {'1': 'group', '3': 1, '4': 1, '5': 11, '6': '.pb.Group', '10': 'group'},
  ],
};

const Group$json = const {
  '1': 'Group',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'avatar_url', '3': 3, '4': 1, '5': 9, '10': 'avatarUrl'},
    const {'1': 'introduction', '3': 4, '4': 1, '5': 9, '10': 'introduction'},
    const {'1': 'user_mum', '3': 5, '4': 1, '5': 5, '10': 'userMum'},
    const {'1': 'type', '3': 6, '4': 1, '5': 14, '6': '.pb.GroupType', '10': 'type'},
    const {'1': 'extra', '3': 7, '4': 1, '5': 9, '10': 'extra'},
    const {'1': 'create_time', '3': 8, '4': 1, '5': 3, '10': 'createTime'},
    const {'1': 'update_time', '3': 9, '4': 1, '5': 3, '10': 'updateTime'},
  ],
};

const GetUserGroupsReq$json = const {
  '1': 'GetUserGroupsReq',
};

const GetUserGroupsResp$json = const {
  '1': 'GetUserGroupsResp',
  '2': const [
    const {'1': 'groups', '3': 1, '4': 3, '5': 11, '6': '.pb.Group', '10': 'groups'},
  ],
};

const AddGroupMembersReq$json = const {
  '1': 'AddGroupMembersReq',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
    const {'1': 'user_ids', '3': 2, '4': 3, '5': 3, '10': 'userIds'},
  ],
};

const AddGroupMembersResp$json = const {
  '1': 'AddGroupMembersResp',
  '2': const [
    const {'1': 'user_ids', '3': 1, '4': 3, '5': 3, '10': 'userIds'},
  ],
};

const UpdateGroupMemberReq$json = const {
  '1': 'UpdateGroupMemberReq',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'remarks', '3': 3, '4': 1, '5': 9, '10': 'remarks'},
    const {'1': 'extra', '3': 4, '4': 1, '5': 9, '10': 'extra'},
  ],
};

const UpdateGroupMemberResp$json = const {
  '1': 'UpdateGroupMemberResp',
};

const DeleteGroupMemberReq$json = const {
  '1': 'DeleteGroupMemberReq',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 3, '10': 'userId'},
  ],
};

const DeleteGroupMemberResp$json = const {
  '1': 'DeleteGroupMemberResp',
};

const GetGroupMembersReq$json = const {
  '1': 'GetGroupMembersReq',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
  ],
};

const GetGroupMembersResp$json = const {
  '1': 'GetGroupMembersResp',
  '2': const [
    const {'1': 'members', '3': 1, '4': 3, '5': 11, '6': '.pb.GroupMember', '10': 'members'},
  ],
};

const GroupMember$json = const {
  '1': 'GroupMember',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'nickname', '3': 2, '4': 1, '5': 9, '10': 'nickname'},
    const {'1': 'sex', '3': 3, '4': 1, '5': 5, '10': 'sex'},
    const {'1': 'avatar_url', '3': 4, '4': 1, '5': 9, '10': 'avatarUrl'},
    const {'1': 'user_extra', '3': 5, '4': 1, '5': 9, '10': 'userExtra'},
    const {'1': 'remarks', '3': 6, '4': 1, '5': 9, '10': 'remarks'},
    const {'1': 'extra', '3': 7, '4': 1, '5': 9, '10': 'extra'},
  ],
};

