//
//  Generated code. Do not modify.
//  source: messaging.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use messageStatusDescriptor instead')
const MessageStatus$json = {
  '1': 'MessageStatus',
  '2': [
    {'1': 'MESSAGE_STATUS_UNSPECIFIED', '2': 0},
    {'1': 'MESSAGE_STATUS_DRAFT', '2': 1},
    {'1': 'MESSAGE_STATUS_SENT', '2': 2},
    {'1': 'MESSAGE_STATUS_RECEIVED', '2': 3},
    {'1': 'MESSAGE_STATUS_READ', '2': 4},
    {'1': 'MESSAGE_STATUS_DELETED', '2': 5},
  ],
};

/// Descriptor for `MessageStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List messageStatusDescriptor = $convert.base64Decode(
    'Cg1NZXNzYWdlU3RhdHVzEh4KGk1FU1NBR0VfU1RBVFVTX1VOU1BFQ0lGSUVEEAASGAoUTUVTU0'
    'FHRV9TVEFUVVNfRFJBRlQQARIXChNNRVNTQUdFX1NUQVRVU19TRU5UEAISGwoXTUVTU0FHRV9T'
    'VEFUVVNfUkVDRUlWRUQQAxIXChNNRVNTQUdFX1NUQVRVU19SRUFEEAQSGgoWTUVTU0FHRV9TVE'
    'FUVVNfREVMRVRFRBAF');

@$core.Deprecated('Use messageAttachmentTypeDescriptor instead')
const MessageAttachmentType$json = {
  '1': 'MessageAttachmentType',
  '2': [
    {'1': 'MESSAGE_ATTACHMENT_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'MESSAGE_ATTACHMENT_TYPE_IMAGE', '2': 1},
    {'1': 'MESSAGE_ATTACHMENT_TYPE_VIDEO', '2': 2},
    {'1': 'MESSAGE_ATTACHMENT_TYPE_AUDIO', '2': 3},
    {'1': 'MESSAGE_ATTACHMENT_TYPE_FILE', '2': 4},
    {'1': 'MESSAGE_ATTACHMENT_TYPE_LINK', '2': 5},
    {'1': 'MESSAGE_ATTACHMENT_TYPE_GIF', '2': 6},
    {'1': 'MESSAGE_ATTACHMENT_TYPE_STICKER', '2': 7},
    {'1': 'MESSAGE_ATTACHMENT_TYPE_LOCATION', '2': 8},
  ],
};

/// Descriptor for `MessageAttachmentType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List messageAttachmentTypeDescriptor = $convert.base64Decode(
    'ChVNZXNzYWdlQXR0YWNobWVudFR5cGUSJwojTUVTU0FHRV9BVFRBQ0hNRU5UX1RZUEVfVU5TUE'
    'VDSUZJRUQQABIhCh1NRVNTQUdFX0FUVEFDSE1FTlRfVFlQRV9JTUFHRRABEiEKHU1FU1NBR0Vf'
    'QVRUQUNITUVOVF9UWVBFX1ZJREVPEAISIQodTUVTU0FHRV9BVFRBQ0hNRU5UX1RZUEVfQVVESU'
    '8QAxIgChxNRVNTQUdFX0FUVEFDSE1FTlRfVFlQRV9GSUxFEAQSIAocTUVTU0FHRV9BVFRBQ0hN'
    'RU5UX1RZUEVfTElOSxAFEh8KG01FU1NBR0VfQVRUQUNITUVOVF9UWVBFX0dJRhAGEiMKH01FU1'
    'NBR0VfQVRUQUNITUVOVF9UWVBFX1NUSUNLRVIQBxIkCiBNRVNTQUdFX0FUVEFDSE1FTlRfVFlQ'
    'RV9MT0NBVElPThAI');

@$core.Deprecated('Use messageChatDescriptor instead')
const MessageChat$json = {
  '1': 'MessageChat',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'sender', '3': 2, '4': 1, '5': 9, '10': 'sender'},
    {'1': 'recipient', '3': 3, '4': 1, '5': 9, '10': 'recipient'},
    {'1': 'body', '3': 5, '4': 1, '5': 9, '10': 'body'},
    {'1': 'status', '3': 6, '4': 1, '5': 14, '6': '.qreeket.MessageStatus', '10': 'status'},
    {'1': 'createdAt', '3': 7, '4': 1, '5': 11, '6': '.qreeket.Timestamp', '10': 'createdAt'},
    {'1': 'updatedAt', '3': 8, '4': 1, '5': 11, '6': '.qreeket.Timestamp', '10': 'updatedAt'},
    {'1': 'sentAt', '3': 9, '4': 1, '5': 11, '6': '.qreeket.Timestamp', '10': 'sentAt'},
    {'1': 'receivedAt', '3': 10, '4': 1, '5': 11, '6': '.qreeket.Timestamp', '10': 'receivedAt'},
    {'1': 'readAt', '3': 11, '4': 1, '5': 11, '6': '.qreeket.Timestamp', '10': 'readAt'},
    {'1': 'deletedAt', '3': 12, '4': 1, '5': 11, '6': '.qreeket.Timestamp', '10': 'deletedAt'},
    {'1': 'readBy', '3': 13, '4': 3, '5': 9, '10': 'readBy'},
    {'1': 'attachment', '3': 14, '4': 1, '5': 9, '9': 0, '10': 'attachment', '17': true},
    {'1': 'attachmentType', '3': 15, '4': 1, '5': 14, '6': '.qreeket.MessageAttachmentType', '10': 'attachmentType'},
    {'1': 'reactions', '3': 16, '4': 3, '5': 9, '10': 'reactions'},
    {'1': 'mentions', '3': 17, '4': 3, '5': 9, '10': 'mentions'},
  ],
  '8': [
    {'1': '_attachment'},
  ],
};

/// Descriptor for `MessageChat`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageChatDescriptor = $convert.base64Decode(
    'CgtNZXNzYWdlQ2hhdBIOCgJpZBgBIAEoCVICaWQSFgoGc2VuZGVyGAIgASgJUgZzZW5kZXISHA'
    'oJcmVjaXBpZW50GAMgASgJUglyZWNpcGllbnQSEgoEYm9keRgFIAEoCVIEYm9keRIuCgZzdGF0'
    'dXMYBiABKA4yFi5xcmVla2V0Lk1lc3NhZ2VTdGF0dXNSBnN0YXR1cxIwCgljcmVhdGVkQXQYBy'
    'ABKAsyEi5xcmVla2V0LlRpbWVzdGFtcFIJY3JlYXRlZEF0EjAKCXVwZGF0ZWRBdBgIIAEoCzIS'
    'LnFyZWVrZXQuVGltZXN0YW1wUgl1cGRhdGVkQXQSKgoGc2VudEF0GAkgASgLMhIucXJlZWtldC'
    '5UaW1lc3RhbXBSBnNlbnRBdBIyCgpyZWNlaXZlZEF0GAogASgLMhIucXJlZWtldC5UaW1lc3Rh'
    'bXBSCnJlY2VpdmVkQXQSKgoGcmVhZEF0GAsgASgLMhIucXJlZWtldC5UaW1lc3RhbXBSBnJlYW'
    'RBdBIwCglkZWxldGVkQXQYDCABKAsyEi5xcmVla2V0LlRpbWVzdGFtcFIJZGVsZXRlZEF0EhYK'
    'BnJlYWRCeRgNIAMoCVIGcmVhZEJ5EiMKCmF0dGFjaG1lbnQYDiABKAlIAFIKYXR0YWNobWVudI'
    'gBARJGCg5hdHRhY2htZW50VHlwZRgPIAEoDjIeLnFyZWVrZXQuTWVzc2FnZUF0dGFjaG1lbnRU'
    'eXBlUg5hdHRhY2htZW50VHlwZRIcCglyZWFjdGlvbnMYECADKAlSCXJlYWN0aW9ucxIaCghtZW'
    '50aW9ucxgRIAMoCVIIbWVudGlvbnNCDQoLX2F0dGFjaG1lbnQ=');

@$core.Deprecated('Use messageThreadDescriptor instead')
const MessageThread$json = {
  '1': 'MessageThread',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'sender', '3': 2, '4': 1, '5': 9, '10': 'sender'},
    {'1': 'recipient', '3': 3, '4': 1, '5': 9, '10': 'recipient'},
    {'1': 'body', '3': 5, '4': 1, '5': 9, '10': 'body'},
    {'1': 'status', '3': 6, '4': 1, '5': 14, '6': '.qreeket.MessageStatus', '10': 'status'},
    {'1': 'createdAt', '3': 7, '4': 1, '5': 11, '6': '.qreeket.Timestamp', '10': 'createdAt'},
    {'1': 'updatedAt', '3': 8, '4': 1, '5': 11, '6': '.qreeket.Timestamp', '10': 'updatedAt'},
    {'1': 'sentAt', '3': 9, '4': 1, '5': 11, '6': '.qreeket.Timestamp', '10': 'sentAt'},
    {'1': 'receivedAt', '3': 10, '4': 1, '5': 11, '6': '.qreeket.Timestamp', '10': 'receivedAt'},
    {'1': 'readAt', '3': 11, '4': 1, '5': 11, '6': '.qreeket.Timestamp', '10': 'readAt'},
    {'1': 'deletedAt', '3': 12, '4': 1, '5': 11, '6': '.qreeket.Timestamp', '10': 'deletedAt'},
    {'1': 'subject', '3': 13, '4': 1, '5': 9, '10': 'subject'},
    {'1': 'readBy', '3': 14, '4': 3, '5': 9, '10': 'readBy'},
    {'1': 'reactions', '3': 15, '4': 3, '5': 9, '10': 'reactions'},
    {'1': 'mentions', '3': 16, '4': 3, '5': 9, '10': 'mentions'},
    {'1': 'messages', '3': 17, '4': 3, '5': 11, '6': '.qreeket.MessageChat', '10': 'messages'},
  ],
};

/// Descriptor for `MessageThread`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageThreadDescriptor = $convert.base64Decode(
    'Cg1NZXNzYWdlVGhyZWFkEg4KAmlkGAEgASgJUgJpZBIWCgZzZW5kZXIYAiABKAlSBnNlbmRlch'
    'IcCglyZWNpcGllbnQYAyABKAlSCXJlY2lwaWVudBISCgRib2R5GAUgASgJUgRib2R5Ei4KBnN0'
    'YXR1cxgGIAEoDjIWLnFyZWVrZXQuTWVzc2FnZVN0YXR1c1IGc3RhdHVzEjAKCWNyZWF0ZWRBdB'
    'gHIAEoCzISLnFyZWVrZXQuVGltZXN0YW1wUgljcmVhdGVkQXQSMAoJdXBkYXRlZEF0GAggASgL'
    'MhIucXJlZWtldC5UaW1lc3RhbXBSCXVwZGF0ZWRBdBIqCgZzZW50QXQYCSABKAsyEi5xcmVla2'
    'V0LlRpbWVzdGFtcFIGc2VudEF0EjIKCnJlY2VpdmVkQXQYCiABKAsyEi5xcmVla2V0LlRpbWVz'
    'dGFtcFIKcmVjZWl2ZWRBdBIqCgZyZWFkQXQYCyABKAsyEi5xcmVla2V0LlRpbWVzdGFtcFIGcm'
    'VhZEF0EjAKCWRlbGV0ZWRBdBgMIAEoCzISLnFyZWVrZXQuVGltZXN0YW1wUglkZWxldGVkQXQS'
    'GAoHc3ViamVjdBgNIAEoCVIHc3ViamVjdBIWCgZyZWFkQnkYDiADKAlSBnJlYWRCeRIcCglyZW'
    'FjdGlvbnMYDyADKAlSCXJlYWN0aW9ucxIaCghtZW50aW9ucxgQIAMoCVIIbWVudGlvbnMSMAoI'
    'bWVzc2FnZXMYESADKAsyFC5xcmVla2V0Lk1lc3NhZ2VDaGF0UghtZXNzYWdlcw==');

@$core.Deprecated('Use messageListItemDescriptor instead')
const MessageListItem$json = {
  '1': 'MessageListItem',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 11, '6': '.qreeket.MessageChat', '9': 0, '10': 'message'},
    {'1': 'thread', '3': 2, '4': 1, '5': 11, '6': '.qreeket.MessageThread', '9': 0, '10': 'thread'},
  ],
  '8': [
    {'1': 'item'},
  ],
};

/// Descriptor for `MessageListItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageListItemDescriptor = $convert.base64Decode(
    'Cg9NZXNzYWdlTGlzdEl0ZW0SMAoHbWVzc2FnZRgBIAEoCzIULnFyZWVrZXQuTWVzc2FnZUNoYX'
    'RIAFIHbWVzc2FnZRIwCgZ0aHJlYWQYAiABKAsyFi5xcmVla2V0Lk1lc3NhZ2VUaHJlYWRIAFIG'
    'dGhyZWFkQgYKBGl0ZW0=');

@$core.Deprecated('Use messageListDescriptor instead')
const MessageList$json = {
  '1': 'MessageList',
  '2': [
    {'1': 'messages', '3': 1, '4': 3, '5': 11, '6': '.qreeket.MessageListItem', '10': 'messages'},
  ],
};

/// Descriptor for `MessageList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageListDescriptor = $convert.base64Decode(
    'CgtNZXNzYWdlTGlzdBI0CghtZXNzYWdlcxgBIAMoCzIYLnFyZWVrZXQuTWVzc2FnZUxpc3RJdG'
    'VtUghtZXNzYWdlcw==');

@$core.Deprecated('Use getMessagesRequestDescriptor instead')
const GetMessagesRequest$json = {
  '1': 'GetMessagesRequest',
  '2': [
    {'1': 'sender', '3': 1, '4': 1, '5': 9, '10': 'sender'},
    {'1': 'dm', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'dm'},
    {'1': 'channel', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'channel'},
  ],
  '8': [
    {'1': 'recipient'},
  ],
};

/// Descriptor for `GetMessagesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMessagesRequestDescriptor = $convert.base64Decode(
    'ChJHZXRNZXNzYWdlc1JlcXVlc3QSFgoGc2VuZGVyGAEgASgJUgZzZW5kZXISEAoCZG0YAyABKA'
    'lIAFICZG0SGgoHY2hhbm5lbBgEIAEoCUgAUgdjaGFubmVsQgsKCXJlY2lwaWVudA==');

@$core.Deprecated('Use directMessengerDescriptor instead')
const DirectMessenger$json = {
  '1': 'DirectMessenger',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'online', '3': 4, '4': 1, '5': 8, '10': 'online'},
    {'1': 'createdAt', '3': 5, '4': 1, '5': 11, '6': '.qreeket.Timestamp', '10': 'createdAt'},
    {'1': 'updatedAt', '3': 6, '4': 1, '5': 11, '6': '.qreeket.Timestamp', '10': 'updatedAt'},
    {'1': 'lastSeen', '3': 7, '4': 1, '5': 11, '6': '.qreeket.Timestamp', '10': 'lastSeen'},
    {'1': 'muted', '3': 8, '4': 1, '5': 8, '10': 'muted'},
    {'1': 'blocked', '3': 9, '4': 1, '5': 8, '10': 'blocked'},
    {'1': 'archived', '3': 10, '4': 1, '5': 8, '10': 'archived'},
    {'1': 'bio', '3': 11, '4': 1, '5': 9, '9': 0, '10': 'bio', '17': true},
  ],
  '8': [
    {'1': '_bio'},
  ],
};

/// Descriptor for `DirectMessenger`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List directMessengerDescriptor = $convert.base64Decode(
    'Cg9EaXJlY3RNZXNzZW5nZXISDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSFg'
    'oGYXZhdGFyGAMgASgJUgZhdmF0YXISFgoGb25saW5lGAQgASgIUgZvbmxpbmUSMAoJY3JlYXRl'
    'ZEF0GAUgASgLMhIucXJlZWtldC5UaW1lc3RhbXBSCWNyZWF0ZWRBdBIwCgl1cGRhdGVkQXQYBi'
    'ABKAsyEi5xcmVla2V0LlRpbWVzdGFtcFIJdXBkYXRlZEF0Ei4KCGxhc3RTZWVuGAcgASgLMhIu'
    'cXJlZWtldC5UaW1lc3RhbXBSCGxhc3RTZWVuEhQKBW11dGVkGAggASgIUgVtdXRlZBIYCgdibG'
    '9ja2VkGAkgASgIUgdibG9ja2VkEhoKCGFyY2hpdmVkGAogASgIUghhcmNoaXZlZBIVCgNiaW8Y'
    'CyABKAlIAFIDYmlviAEBQgYKBF9iaW8=');

@$core.Deprecated('Use directMessengerListDescriptor instead')
const DirectMessengerList$json = {
  '1': 'DirectMessengerList',
  '2': [
    {'1': 'messengers', '3': 1, '4': 3, '5': 11, '6': '.qreeket.DirectMessenger', '10': 'messengers'},
  ],
};

/// Descriptor for `DirectMessengerList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List directMessengerListDescriptor = $convert.base64Decode(
    'ChNEaXJlY3RNZXNzZW5nZXJMaXN0EjgKCm1lc3NlbmdlcnMYASADKAsyGC5xcmVla2V0LkRpcm'
    'VjdE1lc3NlbmdlclIKbWVzc2VuZ2Vycw==');

