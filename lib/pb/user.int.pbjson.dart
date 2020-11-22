///
//  Generated code. Do not modify.
//  source: user.int.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const AuthReq$json = const {
  '1': 'AuthReq',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'device_id', '3': 2, '4': 1, '5': 3, '10': 'deviceId'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
  ],
};

const AuthResp$json = const {
  '1': 'AuthResp',
};

const GetUsersReq$json = const {
  '1': 'GetUsersReq',
  '2': const [
    const {'1': 'user_ids', '3': 1, '4': 3, '5': 3, '10': 'userIds'},
  ],
};

const GetUsersResp$json = const {
  '1': 'GetUsersResp',
  '2': const [
    const {'1': 'users', '3': 1, '4': 3, '5': 11, '6': '.pb.GetUsersResp.UsersEntry', '10': 'users'},
  ],
  '3': const [GetUsersResp_UsersEntry$json],
};

const GetUsersResp_UsersEntry$json = const {
  '1': 'UsersEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 3, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.pb.User', '10': 'value'},
  ],
  '7': const {'7': true},
};

