//
//  Generated code. Do not modify.
//  source: group.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use channelTypeDescriptor instead')
const ChannelType$json = {
  '1': 'ChannelType',
  '2': [
    {'1': 'public', '2': 0},
    {'1': 'private', '2': 1},
  ],
};

/// Descriptor for `ChannelType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List channelTypeDescriptor = $convert.base64Decode(
    'CgtDaGFubmVsVHlwZRIKCgZwdWJsaWMQABILCgdwcml2YXRlEAE=');

@$core.Deprecated('Use channelOrGroupInviteStatusDescriptor instead')
const ChannelOrGroupInviteStatus$json = {
  '1': 'ChannelOrGroupInviteStatus',
  '2': [
    {'1': 'pending', '2': 0},
    {'1': 'accepted', '2': 1},
    {'1': 'declined', '2': 2},
  ],
};

/// Descriptor for `ChannelOrGroupInviteStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List channelOrGroupInviteStatusDescriptor = $convert.base64Decode(
    'ChpDaGFubmVsT3JHcm91cEludml0ZVN0YXR1cxILCgdwZW5kaW5nEAASDAoIYWNjZXB0ZWQQAR'
    'IMCghkZWNsaW5lZBAC');

@$core.Deprecated('Use deleteGroupRequestDescriptor instead')
const DeleteGroupRequest$json = {
  '1': 'DeleteGroupRequest',
  '2': [
    {'1': 'group', '3': 1, '4': 1, '5': 9, '10': 'group'},
    {'1': 'admin', '3': 2, '4': 1, '5': 9, '10': 'admin'},
  ],
};

/// Descriptor for `DeleteGroupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteGroupRequestDescriptor = $convert.base64Decode(
    'ChJEZWxldGVHcm91cFJlcXVlc3QSFAoFZ3JvdXAYASABKAlSBWdyb3VwEhQKBWFkbWluGAIgAS'
    'gJUgVhZG1pbg==');

@$core.Deprecated('Use manageAdminRequestDescriptor instead')
const ManageAdminRequest$json = {
  '1': 'ManageAdminRequest',
  '2': [
    {'1': 'group', '3': 1, '4': 1, '5': 9, '10': 'group'},
    {'1': 'user', '3': 2, '4': 1, '5': 9, '10': 'user'},
    {'1': 'admin', '3': 3, '4': 1, '5': 9, '10': 'admin'},
  ],
};

/// Descriptor for `ManageAdminRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List manageAdminRequestDescriptor = $convert.base64Decode(
    'ChJNYW5hZ2VBZG1pblJlcXVlc3QSFAoFZ3JvdXAYASABKAlSBWdyb3VwEhIKBHVzZXIYAiABKA'
    'lSBHVzZXISFAoFYWRtaW4YAyABKAlSBWFkbWlu');

@$core.Deprecated('Use manageGroupOrChannelDescriptor instead')
const ManageGroupOrChannel$json = {
  '1': 'ManageGroupOrChannel',
  '2': [
    {'1': 'user', '3': 1, '4': 1, '5': 9, '10': 'user'},
    {'1': 'channel', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'channel'},
    {'1': 'group', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'group'},
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `ManageGroupOrChannel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List manageGroupOrChannelDescriptor = $convert.base64Decode(
    'ChRNYW5hZ2VHcm91cE9yQ2hhbm5lbBISCgR1c2VyGAEgASgJUgR1c2VyEhoKB2NoYW5uZWwYAi'
    'ABKAlIAFIHY2hhbm5lbBIWCgVncm91cBgDIAEoCUgAUgVncm91cEIJCgdwYXlsb2Fk');

@$core.Deprecated('Use manageGroupOrChannelRequestDescriptor instead')
const ManageGroupOrChannelRequest$json = {
  '1': 'ManageGroupOrChannelRequest',
  '2': [
    {'1': 'channel', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'channel'},
    {'1': 'group', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'group'},
    {'1': 'user', '3': 3, '4': 1, '5': 9, '10': 'user'},
    {'1': 'admin', '3': 4, '4': 1, '5': 9, '10': 'admin'},
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `ManageGroupOrChannelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List manageGroupOrChannelRequestDescriptor = $convert.base64Decode(
    'ChtNYW5hZ2VHcm91cE9yQ2hhbm5lbFJlcXVlc3QSGgoHY2hhbm5lbBgBIAEoCUgAUgdjaGFubm'
    'VsEhYKBWdyb3VwGAIgASgJSABSBWdyb3VwEhIKBHVzZXIYAyABKAlSBHVzZXISFAoFYWRtaW4Y'
    'BCABKAlSBWFkbWluQgkKB3BheWxvYWQ=');

@$core.Deprecated('Use manageChannelSubscriptionRequestDescriptor instead')
const ManageChannelSubscriptionRequest$json = {
  '1': 'ManageChannelSubscriptionRequest',
  '2': [
    {'1': 'channel', '3': 1, '4': 1, '5': 9, '10': 'channel'},
    {'1': 'user', '3': 2, '4': 1, '5': 9, '10': 'user'},
    {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
    {'1': 'accept', '3': 4, '4': 1, '5': 8, '10': 'accept'},
  ],
};

/// Descriptor for `ManageChannelSubscriptionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List manageChannelSubscriptionRequestDescriptor = $convert.base64Decode(
    'CiBNYW5hZ2VDaGFubmVsU3Vic2NyaXB0aW9uUmVxdWVzdBIYCgdjaGFubmVsGAEgASgJUgdjaG'
    'FubmVsEhIKBHVzZXIYAiABKAlSBHVzZXISFAoFdG9rZW4YAyABKAlSBXRva2VuEhYKBmFjY2Vw'
    'dBgEIAEoCFIGYWNjZXB0');

@$core.Deprecated('Use channelSubscriptionListDescriptor instead')
const ChannelSubscriptionList$json = {
  '1': 'ChannelSubscriptionList',
  '2': [
    {'1': 'subscriptions', '3': 1, '4': 3, '5': 11, '6': '.qreeket.ChannelSubscription', '10': 'subscriptions'},
  ],
};

/// Descriptor for `ChannelSubscriptionList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelSubscriptionListDescriptor = $convert.base64Decode(
    'ChdDaGFubmVsU3Vic2NyaXB0aW9uTGlzdBJCCg1zdWJzY3JpcHRpb25zGAEgAygLMhwucXJlZW'
    'tldC5DaGFubmVsU3Vic2NyaXB0aW9uUg1zdWJzY3JpcHRpb25z');

@$core.Deprecated('Use channelSubscriptionDescriptor instead')
const ChannelSubscription$json = {
  '1': 'ChannelSubscription',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'channel', '3': 2, '4': 1, '5': 11, '6': '.qreeket.Channel', '10': 'channel'},
    {'1': 'user', '3': 3, '4': 1, '5': 9, '10': 'user'},
    {'1': 'token', '3': 4, '4': 1, '5': 9, '10': 'token'},
    {'1': 'status', '3': 5, '4': 1, '5': 14, '6': '.qreeket.ChannelOrGroupInviteStatus', '10': 'status'},
  ],
};

/// Descriptor for `ChannelSubscription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelSubscriptionDescriptor = $convert.base64Decode(
    'ChNDaGFubmVsU3Vic2NyaXB0aW9uEg4KAmlkGAEgASgJUgJpZBIqCgdjaGFubmVsGAIgASgLMh'
    'AucXJlZWtldC5DaGFubmVsUgdjaGFubmVsEhIKBHVzZXIYAyABKAlSBHVzZXISFAoFdG9rZW4Y'
    'BCABKAlSBXRva2VuEjsKBnN0YXR1cxgFIAEoDjIjLnFyZWVrZXQuQ2hhbm5lbE9yR3JvdXBJbn'
    'ZpdGVTdGF0dXNSBnN0YXR1cw==');

@$core.Deprecated('Use revokeGroupInviteRequestDescriptor instead')
const RevokeGroupInviteRequest$json = {
  '1': 'RevokeGroupInviteRequest',
  '2': [
    {'1': 'inviteId', '3': 1, '4': 1, '5': 9, '10': 'inviteId'},
    {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    {'1': 'admin', '3': 3, '4': 1, '5': 9, '10': 'admin'},
  ],
};

/// Descriptor for `RevokeGroupInviteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List revokeGroupInviteRequestDescriptor = $convert.base64Decode(
    'ChhSZXZva2VHcm91cEludml0ZVJlcXVlc3QSGgoIaW52aXRlSWQYASABKAlSCGludml0ZUlkEh'
    'QKBXRva2VuGAIgASgJUgV0b2tlbhIUCgVhZG1pbhgDIAEoCVIFYWRtaW4=');

@$core.Deprecated('Use channelSubscriptionRequestDescriptor instead')
const ChannelSubscriptionRequest$json = {
  '1': 'ChannelSubscriptionRequest',
  '2': [
    {'1': 'channel', '3': 1, '4': 1, '5': 9, '10': 'channel'},
    {'1': 'user', '3': 2, '4': 1, '5': 9, '10': 'user'},
  ],
};

/// Descriptor for `ChannelSubscriptionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelSubscriptionRequestDescriptor = $convert.base64Decode(
    'ChpDaGFubmVsU3Vic2NyaXB0aW9uUmVxdWVzdBIYCgdjaGFubmVsGAEgASgJUgdjaGFubmVsEh'
    'IKBHVzZXIYAiABKAlSBHVzZXI=');

@$core.Deprecated('Use groupInviteRequestDescriptor instead')
const GroupInviteRequest$json = {
  '1': 'GroupInviteRequest',
  '2': [
    {'1': 'group', '3': 1, '4': 1, '5': 9, '10': 'group'},
    {'1': 'user', '3': 2, '4': 1, '5': 9, '10': 'user'},
    {'1': 'channels', '3': 3, '4': 3, '5': 9, '10': 'channels'},
    {'1': 'admin', '3': 4, '4': 1, '5': 9, '10': 'admin'},
  ],
};

/// Descriptor for `GroupInviteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupInviteRequestDescriptor = $convert.base64Decode(
    'ChJHcm91cEludml0ZVJlcXVlc3QSFAoFZ3JvdXAYASABKAlSBWdyb3VwEhIKBHVzZXIYAiABKA'
    'lSBHVzZXISGgoIY2hhbm5lbHMYAyADKAlSCGNoYW5uZWxzEhQKBWFkbWluGAQgASgJUgVhZG1p'
    'bg==');

@$core.Deprecated('Use manageGroupInviteRequestDescriptor instead')
const ManageGroupInviteRequest$json = {
  '1': 'ManageGroupInviteRequest',
  '2': [
    {'1': 'inviteId', '3': 1, '4': 1, '5': 9, '10': 'inviteId'},
    {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    {'1': 'accept', '3': 3, '4': 1, '5': 8, '10': 'accept'},
    {'1': 'channels', '3': 4, '4': 3, '5': 9, '10': 'channels'},
  ],
};

/// Descriptor for `ManageGroupInviteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List manageGroupInviteRequestDescriptor = $convert.base64Decode(
    'ChhNYW5hZ2VHcm91cEludml0ZVJlcXVlc3QSGgoIaW52aXRlSWQYASABKAlSCGludml0ZUlkEh'
    'QKBXRva2VuGAIgASgJUgV0b2tlbhIWCgZhY2NlcHQYAyABKAhSBmFjY2VwdBIaCghjaGFubmVs'
    'cxgEIAMoCVIIY2hhbm5lbHM=');

@$core.Deprecated('Use groupListDescriptor instead')
const GroupList$json = {
  '1': 'GroupList',
  '2': [
    {'1': 'groups', '3': 1, '4': 3, '5': 11, '6': '.qreeket.Group', '10': 'groups'},
  ],
};

/// Descriptor for `GroupList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupListDescriptor = $convert.base64Decode(
    'CglHcm91cExpc3QSJgoGZ3JvdXBzGAEgAygLMg4ucXJlZWtldC5Hcm91cFIGZ3JvdXBz');

@$core.Deprecated('Use channelDescriptor instead')
const Channel$json = {
  '1': 'Channel',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
    {'1': 'owner', '3': 11, '4': 1, '5': 9, '10': 'owner'},
    {'1': 'subscribers', '3': 6, '4': 3, '5': 11, '6': '.qreeket.Subscriber', '10': 'subscribers'},
    {'1': 'muted', '3': 9, '4': 3, '5': 9, '10': 'muted'},
    {'1': 'type', '3': 10, '4': 1, '5': 14, '6': '.qreeket.ChannelType', '10': 'type'},
    {'1': 'created', '3': 12, '4': 1, '5': 11, '6': '.qreeket.Timestamp', '10': 'created'},
    {'1': 'updated', '3': 13, '4': 1, '5': 11, '6': '.qreeket.Timestamp', '10': 'updated'},
    {'1': 'id', '3': 14, '4': 1, '5': 9, '10': 'id'},
    {'1': 'group', '3': 15, '4': 1, '5': 9, '10': 'group'},
    {'1': 'icon', '3': 16, '4': 1, '5': 9, '9': 1, '10': 'icon', '17': true},
  ],
  '8': [
    {'1': '_description'},
    {'1': '_icon'},
  ],
};

/// Descriptor for `Channel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelDescriptor = $convert.base64Decode(
    'CgdDaGFubmVsEhIKBG5hbWUYASABKAlSBG5hbWUSJQoLZGVzY3JpcHRpb24YAiABKAlIAFILZG'
    'VzY3JpcHRpb26IAQESFAoFb3duZXIYCyABKAlSBW93bmVyEjUKC3N1YnNjcmliZXJzGAYgAygL'
    'MhMucXJlZWtldC5TdWJzY3JpYmVyUgtzdWJzY3JpYmVycxIUCgVtdXRlZBgJIAMoCVIFbXV0ZW'
    'QSKAoEdHlwZRgKIAEoDjIULnFyZWVrZXQuQ2hhbm5lbFR5cGVSBHR5cGUSLAoHY3JlYXRlZBgM'
    'IAEoCzISLnFyZWVrZXQuVGltZXN0YW1wUgdjcmVhdGVkEiwKB3VwZGF0ZWQYDSABKAsyEi5xcm'
    'Vla2V0LlRpbWVzdGFtcFIHdXBkYXRlZBIOCgJpZBgOIAEoCVICaWQSFAoFZ3JvdXAYDyABKAlS'
    'BWdyb3VwEhcKBGljb24YECABKAlIAVIEaWNvbogBAUIOCgxfZGVzY3JpcHRpb25CBwoFX2ljb2'
    '4=');

@$core.Deprecated('Use channelListDescriptor instead')
const ChannelList$json = {
  '1': 'ChannelList',
  '2': [
    {'1': 'channels', '3': 1, '4': 3, '5': 11, '6': '.qreeket.Channel', '10': 'channels'},
  ],
};

/// Descriptor for `ChannelList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelListDescriptor = $convert.base64Decode(
    'CgtDaGFubmVsTGlzdBIsCghjaGFubmVscxgBIAMoCzIQLnFyZWVrZXQuQ2hhbm5lbFIIY2hhbm'
    '5lbHM=');

@$core.Deprecated('Use groupInviteDescriptor instead')
const GroupInvite$json = {
  '1': 'GroupInvite',
  '2': [
    {'1': 'channels', '3': 1, '4': 3, '5': 9, '10': 'channels'},
    {'1': 'admin', '3': 2, '4': 1, '5': 9, '10': 'admin'},
    {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
    {'1': 'id', '3': 4, '4': 1, '5': 9, '10': 'id'},
    {'1': 'status', '3': 5, '4': 1, '5': 14, '6': '.qreeket.ChannelOrGroupInviteStatus', '10': 'status'},
    {'1': 'group', '3': 6, '4': 1, '5': 11, '6': '.qreeket.Group', '10': 'group'},
    {'1': 'user', '3': 7, '4': 1, '5': 9, '10': 'user'},
  ],
};

/// Descriptor for `GroupInvite`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupInviteDescriptor = $convert.base64Decode(
    'CgtHcm91cEludml0ZRIaCghjaGFubmVscxgBIAMoCVIIY2hhbm5lbHMSFAoFYWRtaW4YAiABKA'
    'lSBWFkbWluEhQKBXRva2VuGAMgASgJUgV0b2tlbhIOCgJpZBgEIAEoCVICaWQSOwoGc3RhdHVz'
    'GAUgASgOMiMucXJlZWtldC5DaGFubmVsT3JHcm91cEludml0ZVN0YXR1c1IGc3RhdHVzEiQKBW'
    'dyb3VwGAYgASgLMg4ucXJlZWtldC5Hcm91cFIFZ3JvdXASEgoEdXNlchgHIAEoCVIEdXNlcg==');

@$core.Deprecated('Use groupInviteListDescriptor instead')
const GroupInviteList$json = {
  '1': 'GroupInviteList',
  '2': [
    {'1': 'invites', '3': 1, '4': 3, '5': 11, '6': '.qreeket.GroupInvite', '10': 'invites'},
  ],
};

/// Descriptor for `GroupInviteList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupInviteListDescriptor = $convert.base64Decode(
    'Cg9Hcm91cEludml0ZUxpc3QSLgoHaW52aXRlcxgBIAMoCzIULnFyZWVrZXQuR3JvdXBJbnZpdG'
    'VSB2ludml0ZXM=');

@$core.Deprecated('Use createChannelRequestDescriptor instead')
const CreateChannelRequest$json = {
  '1': 'CreateChannelRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
    {'1': 'icon', '3': 3, '4': 1, '5': 12, '9': 1, '10': 'icon', '17': true},
    {'1': 'tags', '3': 5, '4': 3, '5': 9, '10': 'tags'},
    {'1': 'subscribers', '3': 6, '4': 3, '5': 11, '6': '.qreeket.Subscriber', '10': 'subscribers'},
    {'1': 'owner', '3': 7, '4': 1, '5': 9, '10': 'owner'},
    {'1': 'group', '3': 8, '4': 1, '5': 9, '10': 'group'},
    {'1': 'type', '3': 9, '4': 1, '5': 14, '6': '.qreeket.ChannelType', '10': 'type'},
  ],
  '8': [
    {'1': '_description'},
    {'1': '_icon'},
  ],
};

/// Descriptor for `CreateChannelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createChannelRequestDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVDaGFubmVsUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEiUKC2Rlc2NyaXB0aW'
    '9uGAIgASgJSABSC2Rlc2NyaXB0aW9uiAEBEhcKBGljb24YAyABKAxIAVIEaWNvbogBARISCgR0'
    'YWdzGAUgAygJUgR0YWdzEjUKC3N1YnNjcmliZXJzGAYgAygLMhMucXJlZWtldC5TdWJzY3JpYm'
    'VyUgtzdWJzY3JpYmVycxIUCgVvd25lchgHIAEoCVIFb3duZXISFAoFZ3JvdXAYCCABKAlSBWdy'
    'b3VwEigKBHR5cGUYCSABKA4yFC5xcmVla2V0LkNoYW5uZWxUeXBlUgR0eXBlQg4KDF9kZXNjcm'
    'lwdGlvbkIHCgVfaWNvbg==');

@$core.Deprecated('Use groupDescriptor instead')
const Group$json = {
  '1': 'Group',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
    {'1': 'icon', '3': 4, '4': 1, '5': 9, '9': 1, '10': 'icon', '17': true},
    {'1': 'channels', '3': 5, '4': 3, '5': 11, '6': '.qreeket.Channel', '10': 'channels'},
    {'1': 'subscribers', '3': 6, '4': 3, '5': 11, '6': '.qreeket.Subscriber', '10': 'subscribers'},
    {'1': 'admins', '3': 7, '4': 3, '5': 9, '10': 'admins'},
    {'1': 'banned', '3': 8, '4': 3, '5': 9, '10': 'banned'},
    {'1': 'muted', '3': 9, '4': 3, '5': 9, '10': 'muted'},
    {'1': 'link', '3': 10, '4': 1, '5': 9, '9': 2, '10': 'link', '17': true},
    {'1': 'tags', '3': 11, '4': 3, '5': 9, '10': 'tags'},
    {'1': 'created', '3': 13, '4': 1, '5': 11, '6': '.qreeket.Timestamp', '10': 'created'},
    {'1': 'updated', '3': 14, '4': 1, '5': 11, '6': '.qreeket.Timestamp', '10': 'updated'},
  ],
  '8': [
    {'1': '_description'},
    {'1': '_icon'},
    {'1': '_link'},
  ],
};

/// Descriptor for `Group`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupDescriptor = $convert.base64Decode(
    'CgVHcm91cBIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIlCgtkZXNjcmlwdG'
    'lvbhgDIAEoCUgAUgtkZXNjcmlwdGlvbogBARIXCgRpY29uGAQgASgJSAFSBGljb26IAQESLAoI'
    'Y2hhbm5lbHMYBSADKAsyEC5xcmVla2V0LkNoYW5uZWxSCGNoYW5uZWxzEjUKC3N1YnNjcmliZX'
    'JzGAYgAygLMhMucXJlZWtldC5TdWJzY3JpYmVyUgtzdWJzY3JpYmVycxIWCgZhZG1pbnMYByAD'
    'KAlSBmFkbWlucxIWCgZiYW5uZWQYCCADKAlSBmJhbm5lZBIUCgVtdXRlZBgJIAMoCVIFbXV0ZW'
    'QSFwoEbGluaxgKIAEoCUgCUgRsaW5riAEBEhIKBHRhZ3MYCyADKAlSBHRhZ3MSLAoHY3JlYXRl'
    'ZBgNIAEoCzISLnFyZWVrZXQuVGltZXN0YW1wUgdjcmVhdGVkEiwKB3VwZGF0ZWQYDiABKAsyEi'
    '5xcmVla2V0LlRpbWVzdGFtcFIHdXBkYXRlZEIOCgxfZGVzY3JpcHRpb25CBwoFX2ljb25CBwoF'
    'X2xpbms=');

@$core.Deprecated('Use subscriberDescriptor instead')
const Subscriber$json = {
  '1': 'Subscriber',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'online', '3': 4, '4': 1, '5': 8, '10': 'online'},
  ],
};

/// Descriptor for `Subscriber`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscriberDescriptor = $convert.base64Decode(
    'CgpTdWJzY3JpYmVyEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhYKBmF2YX'
    'RhchgDIAEoCVIGYXZhdGFyEhYKBm9ubGluZRgEIAEoCFIGb25saW5l');

@$core.Deprecated('Use createGroupRequestDescriptor instead')
const CreateGroupRequest$json = {
  '1': 'CreateGroupRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
    {'1': 'icon', '3': 3, '4': 1, '5': 12, '9': 1, '10': 'icon', '17': true},
    {'1': 'tags', '3': 4, '4': 3, '5': 9, '10': 'tags'},
    {'1': 'admin', '3': 6, '4': 1, '5': 9, '10': 'admin'},
  ],
  '8': [
    {'1': '_description'},
    {'1': '_icon'},
  ],
};

/// Descriptor for `CreateGroupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createGroupRequestDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVHcm91cFJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRIlCgtkZXNjcmlwdGlvbh'
    'gCIAEoCUgAUgtkZXNjcmlwdGlvbogBARIXCgRpY29uGAMgASgMSAFSBGljb26IAQESEgoEdGFn'
    'cxgEIAMoCVIEdGFncxIUCgVhZG1pbhgGIAEoCVIFYWRtaW5CDgoMX2Rlc2NyaXB0aW9uQgcKBV'
    '9pY29u');

