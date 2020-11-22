///
//  Generated code. Do not modify.
//  source: push.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

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

const AddFriendPush$json = const {
  '1': 'AddFriendPush',
  '2': const [
    const {'1': 'friend_id', '3': 1, '4': 1, '5': 3, '10': 'friendId'},
    const {'1': 'nickname', '3': 2, '4': 1, '5': 9, '10': 'nickname'},
    const {'1': 'avatar_url', '3': 3, '4': 1, '5': 9, '10': 'avatarUrl'},
    const {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
  ],
};

const AgreeAddFriendPush$json = const {
  '1': 'AgreeAddFriendPush',
  '2': const [
    const {'1': 'friend_id', '3': 1, '4': 1, '5': 3, '10': 'friendId'},
    const {'1': 'nickname', '3': 2, '4': 1, '5': 9, '10': 'nickname'},
    const {'1': 'avatar_url', '3': 3, '4': 1, '5': 9, '10': 'avatarUrl'},
  ],
};

const UpdateGroupPush$json = const {
  '1': 'UpdateGroupPush',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'nickname', '3': 2, '4': 1, '5': 9, '10': 'nickname'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'introduction', '3': 4, '4': 1, '5': 9, '10': 'introduction'},
    const {'1': 'extra', '3': 5, '4': 1, '5': 9, '10': 'extra'},
  ],
};

const AddGroupMembersPush$json = const {
  '1': 'AddGroupMembersPush',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'nickname', '3': 2, '4': 1, '5': 9, '10': 'nickname'},
    const {'1': 'members', '3': 3, '4': 3, '5': 11, '6': '.pb.GroupMember', '10': 'members'},
  ],
};

const RemoveGroupMemberPush$json = const {
  '1': 'RemoveGroupMemberPush',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'nickname', '3': 2, '4': 1, '5': 9, '10': 'nickname'},
    const {'1': 'deleted_user_id', '3': 3, '4': 1, '5': 3, '10': 'deletedUserId'},
  ],
};

