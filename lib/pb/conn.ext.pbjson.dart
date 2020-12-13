///
//  Generated code. Do not modify.
//  source: conn.ext.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const PackageType$json = const {
  '1': 'PackageType',
  '2': const [
    const {'1': 'PT_UNKNOWN', '2': 0},
    const {'1': 'PT_SIGN_IN', '2': 1},
    const {'1': 'PT_SYNC', '2': 2},
    const {'1': 'PT_HEARTBEAT', '2': 3},
    const {'1': 'PT_MESSAGE', '2': 4},
  ],
};

const MessageType$json = const {
  '1': 'MessageType',
  '2': const [
    const {'1': 'MT_UNKNOWN', '2': 0},
    const {'1': 'MT_TEXT', '2': 1},
    const {'1': 'MT_FACE', '2': 2},
    const {'1': 'MT_VOICE', '2': 3},
    const {'1': 'MT_IMAGE', '2': 4},
    const {'1': 'MT_FILE', '2': 5},
    const {'1': 'MT_LOCATION', '2': 6},
    const {'1': 'MT_COMMAND', '2': 7},
    const {'1': 'MT_CUSTOM', '2': 8},
  ],
};

const ReceiverType$json = const {
  '1': 'ReceiverType',
  '2': const [
    const {'1': 'RT_UNKNOWN', '2': 0},
    const {'1': 'RT_USER', '2': 1},
    const {'1': 'RT_SMALL_GROUP', '2': 2},
    const {'1': 'RT_LARGE_GROUP', '2': 3},
  ],
};

const SenderType$json = const {
  '1': 'SenderType',
  '2': const [
    const {'1': 'ST_UNKNOWN', '2': 0},
    const {'1': 'ST_SYSTEM', '2': 1},
    const {'1': 'ST_USER', '2': 2},
    const {'1': 'ST_BUSINESS', '2': 3},
  ],
};

const MessageStatus$json = const {
  '1': 'MessageStatus',
  '2': const [
    const {'1': 'MS_UNKNOWN', '2': 0},
    const {'1': 'MS_NORMAL', '2': 1},
    const {'1': 'MS_RECALL', '2': 2},
  ],
};

const Message$json = const {
  '1': 'Message',
  '2': const [
    const {'1': 'sender', '3': 1, '4': 1, '5': 11, '6': '.pb.Sender', '10': 'sender'},
    const {'1': 'receiver_type', '3': 2, '4': 1, '5': 14, '6': '.pb.ReceiverType', '10': 'receiverType'},
    const {'1': 'receiver_id', '3': 3, '4': 1, '5': 3, '10': 'receiverId'},
    const {'1': 'to_user_ids', '3': 4, '4': 3, '5': 3, '10': 'toUserIds'},
    const {'1': 'message_type', '3': 5, '4': 1, '5': 14, '6': '.pb.MessageType', '10': 'messageType'},
    const {'1': 'message_content', '3': 6, '4': 1, '5': 12, '10': 'messageContent'},
    const {'1': 'seq', '3': 7, '4': 1, '5': 3, '10': 'seq'},
    const {'1': 'send_time', '3': 8, '4': 1, '5': 3, '10': 'sendTime'},
    const {'1': 'status', '3': 9, '4': 1, '5': 14, '6': '.pb.MessageStatus', '10': 'status'},
  ],
};

const Sender$json = const {
  '1': 'Sender',
  '2': const [
    const {'1': 'sender_type', '3': 1, '4': 1, '5': 14, '6': '.pb.SenderType', '10': 'senderType'},
    const {'1': 'sender_id', '3': 2, '4': 1, '5': 3, '10': 'senderId'},
    const {'1': 'avatar_url', '3': 3, '4': 1, '5': 9, '10': 'avatarUrl'},
    const {'1': 'nickname', '3': 4, '4': 1, '5': 9, '10': 'nickname'},
    const {'1': 'extra', '3': 5, '4': 1, '5': 9, '10': 'extra'},
  ],
};

const Text$json = const {
  '1': 'Text',
  '2': const [
    const {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
  ],
};

const Face$json = const {
  '1': 'Face',
  '2': const [
    const {'1': 'face_id', '3': 1, '4': 1, '5': 3, '10': 'faceId'},
    const {'1': 'face_url', '3': 2, '4': 1, '5': 9, '10': 'faceUrl'},
  ],
};

const Voice$json = const {
  '1': 'Voice',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'size', '3': 2, '4': 1, '5': 5, '10': 'size'},
    const {'1': 'duration', '3': 3, '4': 1, '5': 5, '10': 'duration'},
    const {'1': 'url', '3': 4, '4': 1, '5': 9, '10': 'url'},
  ],
};

const Image$json = const {
  '1': 'Image',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'width', '3': 2, '4': 1, '5': 5, '10': 'width'},
    const {'1': 'height', '3': 3, '4': 1, '5': 5, '10': 'height'},
    const {'1': 'url', '3': 4, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'thumbnail_url', '3': 5, '4': 1, '5': 9, '10': 'thumbnailUrl'},
  ],
};

const File$json = const {
  '1': 'File',
  '2': const [
    const {'1': 'id', '3': 12, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'name', '3': 13, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'size', '3': 14, '4': 1, '5': 3, '10': 'size'},
    const {'1': 'url', '3': 15, '4': 1, '5': 9, '10': 'url'},
  ],
};

const Location$json = const {
  '1': 'Location',
  '2': const [
    const {'1': 'desc', '3': 1, '4': 1, '5': 9, '10': 'desc'},
    const {'1': 'latitude', '3': 2, '4': 1, '5': 1, '10': 'latitude'},
    const {'1': 'longitude', '3': 3, '4': 1, '5': 1, '10': 'longitude'},
  ],
};

const Command$json = const {
  '1': 'Command',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 5, '10': 'code'},
    const {'1': 'data', '3': 2, '4': 1, '5': 12, '10': 'data'},
  ],
};

const Custom$json = const {
  '1': 'Custom',
  '2': const [
    const {'1': 'data', '3': 1, '4': 1, '5': 9, '10': 'data'},
  ],
};

const Input$json = const {
  '1': 'Input',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.pb.PackageType', '10': 'type'},
    const {'1': 'request_id', '3': 2, '4': 1, '5': 3, '10': 'requestId'},
    const {'1': 'data', '3': 3, '4': 1, '5': 12, '10': 'data'},
  ],
};

const Output$json = const {
  '1': 'Output',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.pb.PackageType', '10': 'type'},
    const {'1': 'request_id', '3': 2, '4': 1, '5': 3, '10': 'requestId'},
    const {'1': 'code', '3': 3, '4': 1, '5': 5, '10': 'code'},
    const {'1': 'message', '3': 4, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'data', '3': 5, '4': 1, '5': 12, '10': 'data'},
  ],
};

const SignInInput$json = const {
  '1': 'SignInInput',
  '2': const [
    const {'1': 'device_id', '3': 1, '4': 1, '5': 3, '10': 'deviceId'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
  ],
};

const SyncInput$json = const {
  '1': 'SyncInput',
  '2': const [
    const {'1': 'seq', '3': 1, '4': 1, '5': 3, '10': 'seq'},
  ],
};

const SyncOutput$json = const {
  '1': 'SyncOutput',
  '2': const [
    const {'1': 'messages', '3': 1, '4': 3, '5': 11, '6': '.pb.Message', '10': 'messages'},
    const {'1': 'has_more', '3': 2, '4': 1, '5': 8, '10': 'hasMore'},
  ],
};

const MessageSend$json = const {
  '1': 'MessageSend',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 11, '6': '.pb.Message', '10': 'message'},
  ],
};

const MessageACK$json = const {
  '1': 'MessageACK',
  '2': const [
    const {'1': 'device_ack', '3': 2, '4': 1, '5': 3, '10': 'deviceAck'},
    const {'1': 'receive_time', '3': 3, '4': 1, '5': 3, '10': 'receiveTime'},
  ],
};

