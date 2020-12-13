///
//  Generated code. Do not modify.
//  source: user.ext.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const SignInReq$json = const {
  '1': 'SignInReq',
  '2': const [
    const {'1': 'phone_number', '3': 1, '4': 1, '5': 9, '10': 'phoneNumber'},
    const {'1': 'code', '3': 2, '4': 1, '5': 9, '10': 'code'},
    const {'1': 'device_id', '3': 3, '4': 1, '5': 3, '10': 'deviceId'},
  ],
};

const SignInResp$json = const {
  '1': 'SignInResp',
  '2': const [
    const {'1': 'is_new', '3': 1, '4': 1, '5': 8, '10': 'isNew'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
  ],
};

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

const GetUserReq$json = const {
  '1': 'GetUserReq',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 3, '10': 'userId'},
  ],
};

const GetUserResp$json = const {
  '1': 'GetUserResp',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.pb.User', '10': 'user'},
  ],
};

const UpdateUserReq$json = const {
  '1': 'UpdateUserReq',
  '2': const [
    const {'1': 'nickname', '3': 1, '4': 1, '5': 9, '10': 'nickname'},
    const {'1': 'sex', '3': 2, '4': 1, '5': 5, '10': 'sex'},
    const {'1': 'avatar_url', '3': 3, '4': 1, '5': 9, '10': 'avatarUrl'},
    const {'1': 'extra', '3': 4, '4': 1, '5': 9, '10': 'extra'},
  ],
};

const UpdateUserResp$json = const {
  '1': 'UpdateUserResp',
};

const SearchUserReq$json = const {
  '1': 'SearchUserReq',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
  ],
};

const SearchUserResp$json = const {
  '1': 'SearchUserResp',
  '2': const [
    const {'1': 'users', '3': 1, '4': 3, '5': 11, '6': '.pb.User', '10': 'users'},
  ],
};

