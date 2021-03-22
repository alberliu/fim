///
//  Generated code. Do not modify.
//  source: conn.ext.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use packageTypeDescriptor instead')
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

/// Descriptor for `PackageType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List packageTypeDescriptor = $convert.base64Decode('CgtQYWNrYWdlVHlwZRIOCgpQVF9VTktOT1dOEAASDgoKUFRfU0lHTl9JThABEgsKB1BUX1NZTkMQAhIQCgxQVF9IRUFSVEJFQVQQAxIOCgpQVF9NRVNTQUdFEAQ=');
@$core.Deprecated('Use messageTypeDescriptor instead')
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

/// Descriptor for `MessageType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List messageTypeDescriptor = $convert.base64Decode('CgtNZXNzYWdlVHlwZRIOCgpNVF9VTktOT1dOEAASCwoHTVRfVEVYVBABEgsKB01UX0ZBQ0UQAhIMCghNVF9WT0lDRRADEgwKCE1UX0lNQUdFEAQSCwoHTVRfRklMRRAFEg8KC01UX0xPQ0FUSU9OEAYSDgoKTVRfQ09NTUFORBAHEg0KCU1UX0NVU1RPTRAI');
@$core.Deprecated('Use receiverTypeDescriptor instead')
const ReceiverType$json = const {
  '1': 'ReceiverType',
  '2': const [
    const {'1': 'RT_UNKNOWN', '2': 0},
    const {'1': 'RT_USER', '2': 1},
    const {'1': 'RT_GROUP', '2': 2},
  ],
};

/// Descriptor for `ReceiverType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List receiverTypeDescriptor = $convert.base64Decode('CgxSZWNlaXZlclR5cGUSDgoKUlRfVU5LTk9XThAAEgsKB1JUX1VTRVIQARIMCghSVF9HUk9VUBAC');
@$core.Deprecated('Use senderTypeDescriptor instead')
const SenderType$json = const {
  '1': 'SenderType',
  '2': const [
    const {'1': 'ST_UNKNOWN', '2': 0},
    const {'1': 'ST_SYSTEM', '2': 1},
    const {'1': 'ST_USER', '2': 2},
    const {'1': 'ST_BUSINESS', '2': 3},
  ],
};

/// Descriptor for `SenderType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List senderTypeDescriptor = $convert.base64Decode('CgpTZW5kZXJUeXBlEg4KClNUX1VOS05PV04QABINCglTVF9TWVNURU0QARILCgdTVF9VU0VSEAISDwoLU1RfQlVTSU5FU1MQAw==');
@$core.Deprecated('Use messageStatusDescriptor instead')
const MessageStatus$json = const {
  '1': 'MessageStatus',
  '2': const [
    const {'1': 'MS_UNKNOWN', '2': 0},
    const {'1': 'MS_NORMAL', '2': 1},
    const {'1': 'MS_RECALL', '2': 2},
  ],
};

/// Descriptor for `MessageStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List messageStatusDescriptor = $convert.base64Decode('Cg1NZXNzYWdlU3RhdHVzEg4KCk1TX1VOS05PV04QABINCglNU19OT1JNQUwQARINCglNU19SRUNBTEwQAg==');
@$core.Deprecated('Use messageDescriptor instead')
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

/// Descriptor for `Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageDescriptor = $convert.base64Decode('CgdNZXNzYWdlEiIKBnNlbmRlchgBIAEoCzIKLnBiLlNlbmRlclIGc2VuZGVyEjUKDXJlY2VpdmVyX3R5cGUYAiABKA4yEC5wYi5SZWNlaXZlclR5cGVSDHJlY2VpdmVyVHlwZRIfCgtyZWNlaXZlcl9pZBgDIAEoA1IKcmVjZWl2ZXJJZBIeCgt0b191c2VyX2lkcxgEIAMoA1IJdG9Vc2VySWRzEjIKDG1lc3NhZ2VfdHlwZRgFIAEoDjIPLnBiLk1lc3NhZ2VUeXBlUgttZXNzYWdlVHlwZRInCg9tZXNzYWdlX2NvbnRlbnQYBiABKAxSDm1lc3NhZ2VDb250ZW50EhAKA3NlcRgHIAEoA1IDc2VxEhsKCXNlbmRfdGltZRgIIAEoA1IIc2VuZFRpbWUSKQoGc3RhdHVzGAkgASgOMhEucGIuTWVzc2FnZVN0YXR1c1IGc3RhdHVz');
@$core.Deprecated('Use senderDescriptor instead')
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

/// Descriptor for `Sender`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List senderDescriptor = $convert.base64Decode('CgZTZW5kZXISLwoLc2VuZGVyX3R5cGUYASABKA4yDi5wYi5TZW5kZXJUeXBlUgpzZW5kZXJUeXBlEhsKCXNlbmRlcl9pZBgCIAEoA1IIc2VuZGVySWQSHQoKYXZhdGFyX3VybBgDIAEoCVIJYXZhdGFyVXJsEhoKCG5pY2tuYW1lGAQgASgJUghuaWNrbmFtZRIUCgVleHRyYRgFIAEoCVIFZXh0cmE=');
@$core.Deprecated('Use textDescriptor instead')
const Text$json = const {
  '1': 'Text',
  '2': const [
    const {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `Text`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List textDescriptor = $convert.base64Decode('CgRUZXh0EhIKBHRleHQYASABKAlSBHRleHQ=');
@$core.Deprecated('Use faceDescriptor instead')
const Face$json = const {
  '1': 'Face',
  '2': const [
    const {'1': 'face_id', '3': 1, '4': 1, '5': 3, '10': 'faceId'},
    const {'1': 'face_url', '3': 2, '4': 1, '5': 9, '10': 'faceUrl'},
  ],
};

/// Descriptor for `Face`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List faceDescriptor = $convert.base64Decode('CgRGYWNlEhcKB2ZhY2VfaWQYASABKANSBmZhY2VJZBIZCghmYWNlX3VybBgCIAEoCVIHZmFjZVVybA==');
@$core.Deprecated('Use voiceDescriptor instead')
const Voice$json = const {
  '1': 'Voice',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'size', '3': 2, '4': 1, '5': 5, '10': 'size'},
    const {'1': 'duration', '3': 3, '4': 1, '5': 5, '10': 'duration'},
    const {'1': 'url', '3': 4, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `Voice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List voiceDescriptor = $convert.base64Decode('CgVWb2ljZRIOCgJpZBgBIAEoCVICaWQSEgoEc2l6ZRgCIAEoBVIEc2l6ZRIaCghkdXJhdGlvbhgDIAEoBVIIZHVyYXRpb24SEAoDdXJsGAQgASgJUgN1cmw=');
@$core.Deprecated('Use imageDescriptor instead')
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

/// Descriptor for `Image`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageDescriptor = $convert.base64Decode('CgVJbWFnZRIOCgJpZBgBIAEoCVICaWQSFAoFd2lkdGgYAiABKAVSBXdpZHRoEhYKBmhlaWdodBgDIAEoBVIGaGVpZ2h0EhAKA3VybBgEIAEoCVIDdXJsEiMKDXRodW1ibmFpbF91cmwYBSABKAlSDHRodW1ibmFpbFVybA==');
@$core.Deprecated('Use fileDescriptor instead')
const File$json = const {
  '1': 'File',
  '2': const [
    const {'1': 'id', '3': 12, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'name', '3': 13, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'size', '3': 14, '4': 1, '5': 3, '10': 'size'},
    const {'1': 'url', '3': 15, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `File`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileDescriptor = $convert.base64Decode('CgRGaWxlEg4KAmlkGAwgASgDUgJpZBISCgRuYW1lGA0gASgJUgRuYW1lEhIKBHNpemUYDiABKANSBHNpemUSEAoDdXJsGA8gASgJUgN1cmw=');
@$core.Deprecated('Use locationDescriptor instead')
const Location$json = const {
  '1': 'Location',
  '2': const [
    const {'1': 'desc', '3': 1, '4': 1, '5': 9, '10': 'desc'},
    const {'1': 'latitude', '3': 2, '4': 1, '5': 1, '10': 'latitude'},
    const {'1': 'longitude', '3': 3, '4': 1, '5': 1, '10': 'longitude'},
  ],
};

/// Descriptor for `Location`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationDescriptor = $convert.base64Decode('CghMb2NhdGlvbhISCgRkZXNjGAEgASgJUgRkZXNjEhoKCGxhdGl0dWRlGAIgASgBUghsYXRpdHVkZRIcCglsb25naXR1ZGUYAyABKAFSCWxvbmdpdHVkZQ==');
@$core.Deprecated('Use commandDescriptor instead')
const Command$json = const {
  '1': 'Command',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 5, '10': 'code'},
    const {'1': 'data', '3': 2, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `Command`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandDescriptor = $convert.base64Decode('CgdDb21tYW5kEhIKBGNvZGUYASABKAVSBGNvZGUSEgoEZGF0YRgCIAEoDFIEZGF0YQ==');
@$core.Deprecated('Use customDescriptor instead')
const Custom$json = const {
  '1': 'Custom',
  '2': const [
    const {'1': 'data', '3': 1, '4': 1, '5': 9, '10': 'data'},
  ],
};

/// Descriptor for `Custom`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customDescriptor = $convert.base64Decode('CgZDdXN0b20SEgoEZGF0YRgBIAEoCVIEZGF0YQ==');
@$core.Deprecated('Use inputDescriptor instead')
const Input$json = const {
  '1': 'Input',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.pb.PackageType', '10': 'type'},
    const {'1': 'request_id', '3': 2, '4': 1, '5': 3, '10': 'requestId'},
    const {'1': 'data', '3': 3, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `Input`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inputDescriptor = $convert.base64Decode('CgVJbnB1dBIjCgR0eXBlGAEgASgOMg8ucGIuUGFja2FnZVR5cGVSBHR5cGUSHQoKcmVxdWVzdF9pZBgCIAEoA1IJcmVxdWVzdElkEhIKBGRhdGEYAyABKAxSBGRhdGE=');
@$core.Deprecated('Use outputDescriptor instead')
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

/// Descriptor for `Output`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List outputDescriptor = $convert.base64Decode('CgZPdXRwdXQSIwoEdHlwZRgBIAEoDjIPLnBiLlBhY2thZ2VUeXBlUgR0eXBlEh0KCnJlcXVlc3RfaWQYAiABKANSCXJlcXVlc3RJZBISCgRjb2RlGAMgASgFUgRjb2RlEhgKB21lc3NhZ2UYBCABKAlSB21lc3NhZ2USEgoEZGF0YRgFIAEoDFIEZGF0YQ==');
@$core.Deprecated('Use signInInputDescriptor instead')
const SignInInput$json = const {
  '1': 'SignInInput',
  '2': const [
    const {'1': 'device_id', '3': 1, '4': 1, '5': 3, '10': 'deviceId'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `SignInInput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signInInputDescriptor = $convert.base64Decode('CgtTaWduSW5JbnB1dBIbCglkZXZpY2VfaWQYASABKANSCGRldmljZUlkEhcKB3VzZXJfaWQYAiABKANSBnVzZXJJZBIUCgV0b2tlbhgDIAEoCVIFdG9rZW4=');
@$core.Deprecated('Use syncInputDescriptor instead')
const SyncInput$json = const {
  '1': 'SyncInput',
  '2': const [
    const {'1': 'seq', '3': 1, '4': 1, '5': 3, '10': 'seq'},
  ],
};

/// Descriptor for `SyncInput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncInputDescriptor = $convert.base64Decode('CglTeW5jSW5wdXQSEAoDc2VxGAEgASgDUgNzZXE=');
@$core.Deprecated('Use syncOutputDescriptor instead')
const SyncOutput$json = const {
  '1': 'SyncOutput',
  '2': const [
    const {'1': 'messages', '3': 1, '4': 3, '5': 11, '6': '.pb.Message', '10': 'messages'},
    const {'1': 'has_more', '3': 2, '4': 1, '5': 8, '10': 'hasMore'},
  ],
};

/// Descriptor for `SyncOutput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncOutputDescriptor = $convert.base64Decode('CgpTeW5jT3V0cHV0EicKCG1lc3NhZ2VzGAEgAygLMgsucGIuTWVzc2FnZVIIbWVzc2FnZXMSGQoIaGFzX21vcmUYAiABKAhSB2hhc01vcmU=');
@$core.Deprecated('Use messageSendDescriptor instead')
const MessageSend$json = const {
  '1': 'MessageSend',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 11, '6': '.pb.Message', '10': 'message'},
  ],
};

/// Descriptor for `MessageSend`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageSendDescriptor = $convert.base64Decode('CgtNZXNzYWdlU2VuZBIlCgdtZXNzYWdlGAEgASgLMgsucGIuTWVzc2FnZVIHbWVzc2FnZQ==');
@$core.Deprecated('Use messageACKDescriptor instead')
const MessageACK$json = const {
  '1': 'MessageACK',
  '2': const [
    const {'1': 'device_ack', '3': 2, '4': 1, '5': 3, '10': 'deviceAck'},
    const {'1': 'receive_time', '3': 3, '4': 1, '5': 3, '10': 'receiveTime'},
  ],
};

/// Descriptor for `MessageACK`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageACKDescriptor = $convert.base64Decode('CgpNZXNzYWdlQUNLEh0KCmRldmljZV9hY2sYAiABKANSCWRldmljZUFjaxIhCgxyZWNlaXZlX3RpbWUYAyABKANSC3JlY2VpdmVUaW1l');
