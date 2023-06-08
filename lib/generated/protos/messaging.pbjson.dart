///
//  Generated code. Do not modify.
//  source: messaging.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use messageStatusDescriptor instead')
const MessageStatus$json = const {
  '1': 'MessageStatus',
  '2': const [
    const {'1': 'MESSAGE_STATUS_UNSPECIFIED', '2': 0},
    const {'1': 'MESSAGE_STATUS_DRAFT', '2': 1},
    const {'1': 'MESSAGE_STATUS_SENT', '2': 2},
    const {'1': 'MESSAGE_STATUS_RECEIVED', '2': 3},
    const {'1': 'MESSAGE_STATUS_READ', '2': 4},
    const {'1': 'MESSAGE_STATUS_DELETED', '2': 5},
  ],
};

/// Descriptor for `MessageStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List messageStatusDescriptor = $convert.base64Decode('Cg1NZXNzYWdlU3RhdHVzEh4KGk1FU1NBR0VfU1RBVFVTX1VOU1BFQ0lGSUVEEAASGAoUTUVTU0FHRV9TVEFUVVNfRFJBRlQQARIXChNNRVNTQUdFX1NUQVRVU19TRU5UEAISGwoXTUVTU0FHRV9TVEFUVVNfUkVDRUlWRUQQAxIXChNNRVNTQUdFX1NUQVRVU19SRUFEEAQSGgoWTUVTU0FHRV9TVEFUVVNfREVMRVRFRBAF');
@$core.Deprecated('Use messageAttachmentTypeDescriptor instead')
const MessageAttachmentType$json = const {
  '1': 'MessageAttachmentType',
  '2': const [
    const {'1': 'MESSAGE_ATTACHMENT_TYPE_UNSPECIFIED', '2': 0},
    const {'1': 'MESSAGE_ATTACHMENT_TYPE_IMAGE', '2': 1},
    const {'1': 'MESSAGE_ATTACHMENT_TYPE_VIDEO', '2': 2},
    const {'1': 'MESSAGE_ATTACHMENT_TYPE_AUDIO', '2': 3},
    const {'1': 'MESSAGE_ATTACHMENT_TYPE_FILE', '2': 4},
    const {'1': 'MESSAGE_ATTACHMENT_TYPE_LINK', '2': 5},
    const {'1': 'MESSAGE_ATTACHMENT_TYPE_GIF', '2': 6},
    const {'1': 'MESSAGE_ATTACHMENT_TYPE_STICKER', '2': 7},
    const {'1': 'MESSAGE_ATTACHMENT_TYPE_LOCATION', '2': 8},
  ],
};

/// Descriptor for `MessageAttachmentType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List messageAttachmentTypeDescriptor = $convert.base64Decode('ChVNZXNzYWdlQXR0YWNobWVudFR5cGUSJwojTUVTU0FHRV9BVFRBQ0hNRU5UX1RZUEVfVU5TUEVDSUZJRUQQABIhCh1NRVNTQUdFX0FUVEFDSE1FTlRfVFlQRV9JTUFHRRABEiEKHU1FU1NBR0VfQVRUQUNITUVOVF9UWVBFX1ZJREVPEAISIQodTUVTU0FHRV9BVFRBQ0hNRU5UX1RZUEVfQVVESU8QAxIgChxNRVNTQUdFX0FUVEFDSE1FTlRfVFlQRV9GSUxFEAQSIAocTUVTU0FHRV9BVFRBQ0hNRU5UX1RZUEVfTElOSxAFEh8KG01FU1NBR0VfQVRUQUNITUVOVF9UWVBFX0dJRhAGEiMKH01FU1NBR0VfQVRUQUNITUVOVF9UWVBFX1NUSUNLRVIQBxIkCiBNRVNTQUdFX0FUVEFDSE1FTlRfVFlQRV9MT0NBVElPThAI');
@$core.Deprecated('Use messageChatDescriptor instead')
const MessageChat$json = const {
  '1': 'MessageChat',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'sender', '3': 2, '4': 1, '5': 9, '10': 'sender'},
    const {'1': 'recipient', '3': 3, '4': 1, '5': 9, '10': 'recipient'},
    const {'1': 'body', '3': 5, '4': 1, '5': 9, '10': 'body'},
    const {'1': 'status', '3': 6, '4': 1, '5': 14, '6': '.qreeket.MessageStatus', '10': 'status'},
    const {'1': 'createdAt', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updatedAt', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    const {'1': 'sentAt', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'sentAt'},
    const {'1': 'receivedAt', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'receivedAt'},
    const {'1': 'readAt', '3': 11, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'readAt'},
    const {'1': 'deletedAt', '3': 12, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'deletedAt'},
    const {'1': 'readBy', '3': 13, '4': 3, '5': 9, '10': 'readBy'},
    const {'1': 'attachment', '3': 14, '4': 1, '5': 9, '9': 0, '10': 'attachment', '17': true},
    const {'1': 'attachmentType', '3': 15, '4': 1, '5': 14, '6': '.qreeket.MessageAttachmentType', '10': 'attachmentType'},
    const {'1': 'reactions', '3': 16, '4': 3, '5': 9, '10': 'reactions'},
    const {'1': 'mentions', '3': 17, '4': 3, '5': 9, '10': 'mentions'},
  ],
  '8': const [
    const {'1': '_attachment'},
  ],
};

/// Descriptor for `MessageChat`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageChatDescriptor = $convert.base64Decode('CgtNZXNzYWdlQ2hhdBIOCgJpZBgBIAEoCVICaWQSFgoGc2VuZGVyGAIgASgJUgZzZW5kZXISHAoJcmVjaXBpZW50GAMgASgJUglyZWNpcGllbnQSEgoEYm9keRgFIAEoCVIEYm9keRIuCgZzdGF0dXMYBiABKA4yFi5xcmVla2V0Lk1lc3NhZ2VTdGF0dXNSBnN0YXR1cxI4CgljcmVhdGVkQXQYByABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgljcmVhdGVkQXQSOAoJdXBkYXRlZEF0GAggASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJdXBkYXRlZEF0EjIKBnNlbnRBdBgJIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSBnNlbnRBdBI6CgpyZWNlaXZlZEF0GAogASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIKcmVjZWl2ZWRBdBIyCgZyZWFkQXQYCyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgZyZWFkQXQSOAoJZGVsZXRlZEF0GAwgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJZGVsZXRlZEF0EhYKBnJlYWRCeRgNIAMoCVIGcmVhZEJ5EiMKCmF0dGFjaG1lbnQYDiABKAlIAFIKYXR0YWNobWVudIgBARJGCg5hdHRhY2htZW50VHlwZRgPIAEoDjIeLnFyZWVrZXQuTWVzc2FnZUF0dGFjaG1lbnRUeXBlUg5hdHRhY2htZW50VHlwZRIcCglyZWFjdGlvbnMYECADKAlSCXJlYWN0aW9ucxIaCghtZW50aW9ucxgRIAMoCVIIbWVudGlvbnNCDQoLX2F0dGFjaG1lbnQ=');
@$core.Deprecated('Use messageThreadDescriptor instead')
const MessageThread$json = const {
  '1': 'MessageThread',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'sender', '3': 2, '4': 1, '5': 9, '10': 'sender'},
    const {'1': 'recipient', '3': 3, '4': 1, '5': 9, '10': 'recipient'},
    const {'1': 'body', '3': 5, '4': 1, '5': 9, '10': 'body'},
    const {'1': 'status', '3': 6, '4': 1, '5': 14, '6': '.qreeket.MessageStatus', '10': 'status'},
    const {'1': 'createdAt', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updatedAt', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    const {'1': 'sentAt', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'sentAt'},
    const {'1': 'receivedAt', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'receivedAt'},
    const {'1': 'readAt', '3': 11, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'readAt'},
    const {'1': 'deletedAt', '3': 12, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'deletedAt'},
    const {'1': 'subject', '3': 13, '4': 1, '5': 9, '10': 'subject'},
    const {'1': 'readBy', '3': 14, '4': 3, '5': 9, '10': 'readBy'},
    const {'1': 'reactions', '3': 15, '4': 3, '5': 9, '10': 'reactions'},
    const {'1': 'mentions', '3': 16, '4': 3, '5': 9, '10': 'mentions'},
    const {'1': 'messages', '3': 17, '4': 3, '5': 11, '6': '.qreeket.MessageChat', '10': 'messages'},
  ],
};

/// Descriptor for `MessageThread`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageThreadDescriptor = $convert.base64Decode('Cg1NZXNzYWdlVGhyZWFkEg4KAmlkGAEgASgJUgJpZBIWCgZzZW5kZXIYAiABKAlSBnNlbmRlchIcCglyZWNpcGllbnQYAyABKAlSCXJlY2lwaWVudBISCgRib2R5GAUgASgJUgRib2R5Ei4KBnN0YXR1cxgGIAEoDjIWLnFyZWVrZXQuTWVzc2FnZVN0YXR1c1IGc3RhdHVzEjgKCWNyZWF0ZWRBdBgHIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWNyZWF0ZWRBdBI4Cgl1cGRhdGVkQXQYCCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgl1cGRhdGVkQXQSMgoGc2VudEF0GAkgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIGc2VudEF0EjoKCnJlY2VpdmVkQXQYCiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgpyZWNlaXZlZEF0EjIKBnJlYWRBdBgLIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSBnJlYWRBdBI4CglkZWxldGVkQXQYDCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUglkZWxldGVkQXQSGAoHc3ViamVjdBgNIAEoCVIHc3ViamVjdBIWCgZyZWFkQnkYDiADKAlSBnJlYWRCeRIcCglyZWFjdGlvbnMYDyADKAlSCXJlYWN0aW9ucxIaCghtZW50aW9ucxgQIAMoCVIIbWVudGlvbnMSMAoIbWVzc2FnZXMYESADKAsyFC5xcmVla2V0Lk1lc3NhZ2VDaGF0UghtZXNzYWdlcw==');
@$core.Deprecated('Use messageListItemDescriptor instead')
const MessageListItem$json = const {
  '1': 'MessageListItem',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 11, '6': '.qreeket.MessageChat', '9': 0, '10': 'message'},
    const {'1': 'thread', '3': 2, '4': 1, '5': 11, '6': '.qreeket.MessageThread', '9': 0, '10': 'thread'},
  ],
  '8': const [
    const {'1': 'item'},
  ],
};

/// Descriptor for `MessageListItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageListItemDescriptor = $convert.base64Decode('Cg9NZXNzYWdlTGlzdEl0ZW0SMAoHbWVzc2FnZRgBIAEoCzIULnFyZWVrZXQuTWVzc2FnZUNoYXRIAFIHbWVzc2FnZRIwCgZ0aHJlYWQYAiABKAsyFi5xcmVla2V0Lk1lc3NhZ2VUaHJlYWRIAFIGdGhyZWFkQgYKBGl0ZW0=');
@$core.Deprecated('Use messageListDescriptor instead')
const MessageList$json = const {
  '1': 'MessageList',
  '2': const [
    const {'1': 'messages', '3': 1, '4': 3, '5': 11, '6': '.qreeket.MessageListItem', '10': 'messages'},
  ],
};

/// Descriptor for `MessageList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageListDescriptor = $convert.base64Decode('CgtNZXNzYWdlTGlzdBI0CghtZXNzYWdlcxgBIAMoCzIYLnFyZWVrZXQuTWVzc2FnZUxpc3RJdGVtUghtZXNzYWdlcw==');
@$core.Deprecated('Use getMessagesRequestDescriptor instead')
const GetMessagesRequest$json = const {
  '1': 'GetMessagesRequest',
  '2': const [
    const {'1': 'sender', '3': 1, '4': 1, '5': 9, '10': 'sender'},
    const {'1': 'dm', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'dm'},
    const {'1': 'channel', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'channel'},
  ],
  '8': const [
    const {'1': 'recipient'},
  ],
};

/// Descriptor for `GetMessagesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMessagesRequestDescriptor = $convert.base64Decode('ChJHZXRNZXNzYWdlc1JlcXVlc3QSFgoGc2VuZGVyGAEgASgJUgZzZW5kZXISEAoCZG0YAyABKAlIAFICZG0SGgoHY2hhbm5lbBgEIAEoCUgAUgdjaGFubmVsQgsKCXJlY2lwaWVudA==');
@$core.Deprecated('Use directMessengerDescriptor instead')
const DirectMessenger$json = const {
  '1': 'DirectMessenger',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
    const {'1': 'online', '3': 4, '4': 1, '5': 8, '10': 'online'},
    const {'1': 'createdAt', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updatedAt', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    const {'1': 'lastSeen', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'lastSeen'},
    const {'1': 'muted', '3': 8, '4': 1, '5': 8, '10': 'muted'},
    const {'1': 'blocked', '3': 9, '4': 1, '5': 8, '10': 'blocked'},
    const {'1': 'archived', '3': 10, '4': 1, '5': 8, '10': 'archived'},
    const {'1': 'bio', '3': 11, '4': 1, '5': 9, '9': 0, '10': 'bio', '17': true},
  ],
  '8': const [
    const {'1': '_bio'},
  ],
};

/// Descriptor for `DirectMessenger`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List directMessengerDescriptor = $convert.base64Decode('Cg9EaXJlY3RNZXNzZW5nZXISDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSFgoGYXZhdGFyGAMgASgJUgZhdmF0YXISFgoGb25saW5lGAQgASgIUgZvbmxpbmUSOAoJY3JlYXRlZEF0GAUgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJY3JlYXRlZEF0EjgKCXVwZGF0ZWRBdBgGIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCXVwZGF0ZWRBdBI2CghsYXN0U2VlbhgHIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCGxhc3RTZWVuEhQKBW11dGVkGAggASgIUgVtdXRlZBIYCgdibG9ja2VkGAkgASgIUgdibG9ja2VkEhoKCGFyY2hpdmVkGAogASgIUghhcmNoaXZlZBIVCgNiaW8YCyABKAlIAFIDYmlviAEBQgYKBF9iaW8=');
@$core.Deprecated('Use directMessengerListDescriptor instead')
const DirectMessengerList$json = const {
  '1': 'DirectMessengerList',
  '2': const [
    const {'1': 'messengers', '3': 1, '4': 3, '5': 11, '6': '.qreeket.DirectMessenger', '10': 'messengers'},
  ],
};

/// Descriptor for `DirectMessengerList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List directMessengerListDescriptor = $convert.base64Decode('ChNEaXJlY3RNZXNzZW5nZXJMaXN0EjgKCm1lc3NlbmdlcnMYASADKAsyGC5xcmVla2V0LkRpcmVjdE1lc3NlbmdlclIKbWVzc2VuZ2Vycw==');
