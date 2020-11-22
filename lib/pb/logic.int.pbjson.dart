///
//  Generated code. Do not modify.
//  source: logic.int.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const ConnSignInReq$json = const {
  '1': 'ConnSignInReq',
  '2': const [
    const {'1': 'device_id', '3': 1, '4': 1, '5': 3, '10': 'deviceId'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'conn_addr', '3': 4, '4': 1, '5': 9, '10': 'connAddr'},
    const {'1': 'conn_fd', '3': 5, '4': 1, '5': 3, '10': 'connFd'},
  ],
};

const ConnSignInResp$json = const {
  '1': 'ConnSignInResp',
};

const SyncReq$json = const {
  '1': 'SyncReq',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'device_id', '3': 2, '4': 1, '5': 3, '10': 'deviceId'},
    const {'1': 'seq', '3': 3, '4': 1, '5': 3, '10': 'seq'},
  ],
};

const SyncResp$json = const {
  '1': 'SyncResp',
  '2': const [
    const {'1': 'messages', '3': 1, '4': 3, '5': 11, '6': '.pb.Message', '10': 'messages'},
    const {'1': 'has_more', '3': 2, '4': 1, '5': 8, '10': 'hasMore'},
  ],
};

const MessageACKReq$json = const {
  '1': 'MessageACKReq',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'device_id', '3': 2, '4': 1, '5': 3, '10': 'deviceId'},
    const {'1': 'device_ack', '3': 3, '4': 1, '5': 3, '10': 'deviceAck'},
    const {'1': 'receive_time', '3': 4, '4': 1, '5': 3, '10': 'receiveTime'},
  ],
};

const MessageACKResp$json = const {
  '1': 'MessageACKResp',
};

const OfflineReq$json = const {
  '1': 'OfflineReq',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'device_id', '3': 2, '4': 1, '5': 3, '10': 'deviceId'},
  ],
};

const OfflineResp$json = const {
  '1': 'OfflineResp',
};

const GetDeviceReq$json = const {
  '1': 'GetDeviceReq',
  '2': const [
    const {'1': 'device_id', '3': 1, '4': 1, '5': 3, '10': 'deviceId'},
  ],
};

const GetDeviceResp$json = const {
  '1': 'GetDeviceResp',
  '2': const [
    const {'1': 'device', '3': 1, '4': 1, '5': 11, '6': '.pb.Device', '10': 'device'},
  ],
};

const Device$json = const {
  '1': 'Device',
  '2': const [
    const {'1': 'device_id', '3': 1, '4': 1, '5': 3, '10': 'deviceId'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'Type', '3': 3, '4': 1, '5': 5, '10': 'Type'},
    const {'1': 'Brand', '3': 4, '4': 1, '5': 9, '10': 'Brand'},
    const {'1': 'Model', '3': 5, '4': 1, '5': 9, '10': 'Model'},
    const {'1': 'SystemVersion', '3': 6, '4': 1, '5': 9, '10': 'SystemVersion'},
    const {'1': 'SDKVersion', '3': 7, '4': 1, '5': 9, '10': 'SDKVersion'},
    const {'1': 'Status', '3': 8, '4': 1, '5': 5, '10': 'Status'},
    const {'1': 'CreateTime', '3': 9, '4': 1, '5': 3, '10': 'CreateTime'},
    const {'1': 'UpdateTime', '3': 10, '4': 1, '5': 3, '10': 'UpdateTime'},
  ],
};

const ServerStopReq$json = const {
  '1': 'ServerStopReq',
  '2': const [
    const {'1': 'conn_addr', '3': 1, '4': 1, '5': 9, '10': 'connAddr'},
  ],
};

const ServerStopResp$json = const {
  '1': 'ServerStopResp',
};

