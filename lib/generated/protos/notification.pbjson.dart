//
//  Generated code. Do not modify.
//  source: notification.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use notificationChannelTypeDescriptor instead')
const NotificationChannelType$json = {
  '1': 'NotificationChannelType',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'E2E_PERSONAL_CHAT', '2': 1},
    {'1': 'E2E_GROUP_CHAT', '2': 2},
    {'1': 'CHANNEL_INVITATION', '2': 3},
    {'1': 'TOPIC', '2': 4},
    {'1': 'SUBSCRIPTION', '2': 5},
    {'1': 'ACCOUNT', '2': 6},
    {'1': 'UPDATE', '2': 7},
    {'1': 'BROADCAST', '2': 8},
  ],
};

/// Descriptor for `NotificationChannelType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List notificationChannelTypeDescriptor = $convert.base64Decode(
    'ChdOb3RpZmljYXRpb25DaGFubmVsVHlwZRILCgdVTktOT1dOEAASFQoRRTJFX1BFUlNPTkFMX0'
    'NIQVQQARISCg5FMkVfR1JPVVBfQ0hBVBACEhYKEkNIQU5ORUxfSU5WSVRBVElPThADEgkKBVRP'
    'UElDEAQSEAoMU1VCU0NSSVBUSU9OEAUSCwoHQUNDT1VOVBAGEgoKBlVQREFURRAHEg0KCUJST0'
    'FEQ0FTVBAI');

@$core.Deprecated('Use sendNotificationRequestDescriptor instead')
const SendNotificationRequest$json = {
  '1': 'SendNotificationRequest',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'body', '3': 2, '4': 1, '5': 9, '10': 'body'},
    {'1': 'token', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'token'},
    {'1': 'topic', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'topic'},
    {'1': 'data', '3': 5, '4': 3, '5': 11, '6': '.qreeket.SendNotificationRequest.DataEntry', '10': 'data'},
    {'1': 'channel_type', '3': 6, '4': 1, '5': 14, '6': '.qreeket.NotificationChannelType', '10': 'channelType'},
  ],
  '3': [SendNotificationRequest_DataEntry$json],
  '8': [
    {'1': 'notification_target'},
  ],
};

@$core.Deprecated('Use sendNotificationRequestDescriptor instead')
const SendNotificationRequest_DataEntry$json = {
  '1': 'DataEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `SendNotificationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendNotificationRequestDescriptor = $convert.base64Decode(
    'ChdTZW5kTm90aWZpY2F0aW9uUmVxdWVzdBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSEgoEYm9keR'
    'gCIAEoCVIEYm9keRIWCgV0b2tlbhgDIAEoCUgAUgV0b2tlbhIWCgV0b3BpYxgEIAEoCUgAUgV0'
    'b3BpYxI+CgRkYXRhGAUgAygLMioucXJlZWtldC5TZW5kTm90aWZpY2F0aW9uUmVxdWVzdC5EYX'
    'RhRW50cnlSBGRhdGESQwoMY2hhbm5lbF90eXBlGAYgASgOMiAucXJlZWtldC5Ob3RpZmljYXRp'
    'b25DaGFubmVsVHlwZVILY2hhbm5lbFR5cGUaNwoJRGF0YUVudHJ5EhAKA2tleRgBIAEoCVIDa2'
    'V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAFCFQoTbm90aWZpY2F0aW9uX3RhcmdldA==');

@$core.Deprecated('Use sendNotificationResponseDescriptor instead')
const SendNotificationResponse$json = {
  '1': 'SendNotificationResponse',
  '2': [
    {'1': 'message_id', '3': 1, '4': 1, '5': 9, '10': 'messageId'},
  ],
};

/// Descriptor for `SendNotificationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendNotificationResponseDescriptor = $convert.base64Decode(
    'ChhTZW5kTm90aWZpY2F0aW9uUmVzcG9uc2USHQoKbWVzc2FnZV9pZBgBIAEoCVIJbWVzc2FnZU'
    'lk');

@$core.Deprecated('Use registerDeviceRequestDescriptor instead')
const RegisterDeviceRequest$json = {
  '1': 'RegisterDeviceRequest',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    {'1': 'topic', '3': 2, '4': 1, '5': 9, '10': 'topic'},
  ],
};

/// Descriptor for `RegisterDeviceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerDeviceRequestDescriptor = $convert.base64Decode(
    'ChVSZWdpc3RlckRldmljZVJlcXVlc3QSFAoFdG9rZW4YASABKAlSBXRva2VuEhQKBXRvcGljGA'
    'IgASgJUgV0b3BpYw==');

