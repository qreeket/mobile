///
//  Generated code. Do not modify.
//  source: group.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use channelTypeDescriptor instead')
const ChannelType$json = const {
  '1': 'ChannelType',
  '2': const [
    const {'1': 'public', '2': 0},
    const {'1': 'private', '2': 1},
  ],
};

/// Descriptor for `ChannelType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List channelTypeDescriptor = $convert.base64Decode('CgtDaGFubmVsVHlwZRIKCgZwdWJsaWMQABILCgdwcml2YXRlEAE=');
@$core.Deprecated('Use channelOrGroupInviteStatusDescriptor instead')
const ChannelOrGroupInviteStatus$json = const {
  '1': 'ChannelOrGroupInviteStatus',
  '2': const [
    const {'1': 'pending', '2': 0},
    const {'1': 'accepted', '2': 1},
    const {'1': 'declined', '2': 2},
  ],
};

/// Descriptor for `ChannelOrGroupInviteStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List channelOrGroupInviteStatusDescriptor = $convert.base64Decode('ChpDaGFubmVsT3JHcm91cEludml0ZVN0YXR1cxILCgdwZW5kaW5nEAASDAoIYWNjZXB0ZWQQARIMCghkZWNsaW5lZBAC');
@$core.Deprecated('Use deleteGroupRequestDescriptor instead')
const DeleteGroupRequest$json = const {
  '1': 'DeleteGroupRequest',
  '2': const [
    const {'1': 'group', '3': 1, '4': 1, '5': 9, '10': 'group'},
    const {'1': 'admin', '3': 2, '4': 1, '5': 9, '10': 'admin'},
  ],
};

/// Descriptor for `DeleteGroupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteGroupRequestDescriptor = $convert.base64Decode('ChJEZWxldGVHcm91cFJlcXVlc3QSFAoFZ3JvdXAYASABKAlSBWdyb3VwEhQKBWFkbWluGAIgASgJUgVhZG1pbg==');
@$core.Deprecated('Use manageAdminRequestDescriptor instead')
const ManageAdminRequest$json = const {
  '1': 'ManageAdminRequest',
  '2': const [
    const {'1': 'group', '3': 1, '4': 1, '5': 9, '10': 'group'},
    const {'1': 'user', '3': 2, '4': 1, '5': 9, '10': 'user'},
    const {'1': 'admin', '3': 3, '4': 1, '5': 9, '10': 'admin'},
  ],
};

/// Descriptor for `ManageAdminRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List manageAdminRequestDescriptor = $convert.base64Decode('ChJNYW5hZ2VBZG1pblJlcXVlc3QSFAoFZ3JvdXAYASABKAlSBWdyb3VwEhIKBHVzZXIYAiABKAlSBHVzZXISFAoFYWRtaW4YAyABKAlSBWFkbWlu');
@$core.Deprecated('Use manageGroupOrChannelDescriptor instead')
const ManageGroupOrChannel$json = const {
  '1': 'ManageGroupOrChannel',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 9, '10': 'user'},
    const {'1': 'channel', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'channel'},
    const {'1': 'group', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'group'},
  ],
  '8': const [
    const {'1': 'payload'},
  ],
};

/// Descriptor for `ManageGroupOrChannel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List manageGroupOrChannelDescriptor = $convert.base64Decode('ChRNYW5hZ2VHcm91cE9yQ2hhbm5lbBISCgR1c2VyGAEgASgJUgR1c2VyEhoKB2NoYW5uZWwYAiABKAlIAFIHY2hhbm5lbBIWCgVncm91cBgDIAEoCUgAUgVncm91cEIJCgdwYXlsb2Fk');
@$core.Deprecated('Use manageGroupOrChannelRequestDescriptor instead')
const ManageGroupOrChannelRequest$json = const {
  '1': 'ManageGroupOrChannelRequest',
  '2': const [
    const {'1': 'channel', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'channel'},
    const {'1': 'group', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'group'},
    const {'1': 'user', '3': 3, '4': 1, '5': 9, '10': 'user'},
    const {'1': 'admin', '3': 4, '4': 1, '5': 9, '10': 'admin'},
  ],
  '8': const [
    const {'1': 'payload'},
  ],
};

/// Descriptor for `ManageGroupOrChannelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List manageGroupOrChannelRequestDescriptor = $convert.base64Decode('ChtNYW5hZ2VHcm91cE9yQ2hhbm5lbFJlcXVlc3QSGgoHY2hhbm5lbBgBIAEoCUgAUgdjaGFubmVsEhYKBWdyb3VwGAIgASgJSABSBWdyb3VwEhIKBHVzZXIYAyABKAlSBHVzZXISFAoFYWRtaW4YBCABKAlSBWFkbWluQgkKB3BheWxvYWQ=');
@$core.Deprecated('Use manageChannelSubscriptionRequestDescriptor instead')
const ManageChannelSubscriptionRequest$json = const {
  '1': 'ManageChannelSubscriptionRequest',
  '2': const [
    const {'1': 'channel', '3': 1, '4': 1, '5': 9, '10': 'channel'},
    const {'1': 'user', '3': 2, '4': 1, '5': 9, '10': 'user'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'accept', '3': 4, '4': 1, '5': 8, '10': 'accept'},
  ],
};

/// Descriptor for `ManageChannelSubscriptionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List manageChannelSubscriptionRequestDescriptor = $convert.base64Decode('CiBNYW5hZ2VDaGFubmVsU3Vic2NyaXB0aW9uUmVxdWVzdBIYCgdjaGFubmVsGAEgASgJUgdjaGFubmVsEhIKBHVzZXIYAiABKAlSBHVzZXISFAoFdG9rZW4YAyABKAlSBXRva2VuEhYKBmFjY2VwdBgEIAEoCFIGYWNjZXB0');
@$core.Deprecated('Use channelSubscriptionListDescriptor instead')
const ChannelSubscriptionList$json = const {
  '1': 'ChannelSubscriptionList',
  '2': const [
    const {'1': 'subscriptions', '3': 1, '4': 3, '5': 11, '6': '.qreeket.ChannelSubscription', '10': 'subscriptions'},
  ],
};

/// Descriptor for `ChannelSubscriptionList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelSubscriptionListDescriptor = $convert.base64Decode('ChdDaGFubmVsU3Vic2NyaXB0aW9uTGlzdBJCCg1zdWJzY3JpcHRpb25zGAEgAygLMhwucXJlZWtldC5DaGFubmVsU3Vic2NyaXB0aW9uUg1zdWJzY3JpcHRpb25z');
@$core.Deprecated('Use channelSubscriptionDescriptor instead')
const ChannelSubscription$json = const {
  '1': 'ChannelSubscription',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'channel', '3': 2, '4': 1, '5': 11, '6': '.qreeket.Channel', '10': 'channel'},
    const {'1': 'user', '3': 3, '4': 1, '5': 9, '10': 'user'},
    const {'1': 'token', '3': 4, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'status', '3': 5, '4': 1, '5': 14, '6': '.qreeket.ChannelOrGroupInviteStatus', '10': 'status'},
  ],
};

/// Descriptor for `ChannelSubscription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelSubscriptionDescriptor = $convert.base64Decode('ChNDaGFubmVsU3Vic2NyaXB0aW9uEg4KAmlkGAEgASgJUgJpZBIqCgdjaGFubmVsGAIgASgLMhAucXJlZWtldC5DaGFubmVsUgdjaGFubmVsEhIKBHVzZXIYAyABKAlSBHVzZXISFAoFdG9rZW4YBCABKAlSBXRva2VuEjsKBnN0YXR1cxgFIAEoDjIjLnFyZWVrZXQuQ2hhbm5lbE9yR3JvdXBJbnZpdGVTdGF0dXNSBnN0YXR1cw==');
@$core.Deprecated('Use revokeGroupInviteRequestDescriptor instead')
const RevokeGroupInviteRequest$json = const {
  '1': 'RevokeGroupInviteRequest',
  '2': const [
    const {'1': 'inviteId', '3': 1, '4': 1, '5': 9, '10': 'inviteId'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'admin', '3': 3, '4': 1, '5': 9, '10': 'admin'},
  ],
};

/// Descriptor for `RevokeGroupInviteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List revokeGroupInviteRequestDescriptor = $convert.base64Decode('ChhSZXZva2VHcm91cEludml0ZVJlcXVlc3QSGgoIaW52aXRlSWQYASABKAlSCGludml0ZUlkEhQKBXRva2VuGAIgASgJUgV0b2tlbhIUCgVhZG1pbhgDIAEoCVIFYWRtaW4=');
@$core.Deprecated('Use channelSubscriptionRequestDescriptor instead')
const ChannelSubscriptionRequest$json = const {
  '1': 'ChannelSubscriptionRequest',
  '2': const [
    const {'1': 'channel', '3': 1, '4': 1, '5': 9, '10': 'channel'},
    const {'1': 'user', '3': 2, '4': 1, '5': 9, '10': 'user'},
  ],
};

/// Descriptor for `ChannelSubscriptionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelSubscriptionRequestDescriptor = $convert.base64Decode('ChpDaGFubmVsU3Vic2NyaXB0aW9uUmVxdWVzdBIYCgdjaGFubmVsGAEgASgJUgdjaGFubmVsEhIKBHVzZXIYAiABKAlSBHVzZXI=');
@$core.Deprecated('Use groupInviteRequestDescriptor instead')
const GroupInviteRequest$json = const {
  '1': 'GroupInviteRequest',
  '2': const [
    const {'1': 'group', '3': 1, '4': 1, '5': 9, '10': 'group'},
    const {'1': 'user', '3': 2, '4': 1, '5': 9, '10': 'user'},
    const {'1': 'channels', '3': 3, '4': 3, '5': 9, '10': 'channels'},
    const {'1': 'admin', '3': 4, '4': 1, '5': 9, '10': 'admin'},
  ],
};

/// Descriptor for `GroupInviteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupInviteRequestDescriptor = $convert.base64Decode('ChJHcm91cEludml0ZVJlcXVlc3QSFAoFZ3JvdXAYASABKAlSBWdyb3VwEhIKBHVzZXIYAiABKAlSBHVzZXISGgoIY2hhbm5lbHMYAyADKAlSCGNoYW5uZWxzEhQKBWFkbWluGAQgASgJUgVhZG1pbg==');
@$core.Deprecated('Use manageGroupInviteRequestDescriptor instead')
const ManageGroupInviteRequest$json = const {
  '1': 'ManageGroupInviteRequest',
  '2': const [
    const {'1': 'inviteId', '3': 1, '4': 1, '5': 9, '10': 'inviteId'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'accept', '3': 3, '4': 1, '5': 8, '10': 'accept'},
    const {'1': 'channels', '3': 4, '4': 3, '5': 9, '10': 'channels'},
  ],
};

/// Descriptor for `ManageGroupInviteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List manageGroupInviteRequestDescriptor = $convert.base64Decode('ChhNYW5hZ2VHcm91cEludml0ZVJlcXVlc3QSGgoIaW52aXRlSWQYASABKAlSCGludml0ZUlkEhQKBXRva2VuGAIgASgJUgV0b2tlbhIWCgZhY2NlcHQYAyABKAhSBmFjY2VwdBIaCghjaGFubmVscxgEIAMoCVIIY2hhbm5lbHM=');
@$core.Deprecated('Use groupListDescriptor instead')
const GroupList$json = const {
  '1': 'GroupList',
  '2': const [
    const {'1': 'groups', '3': 1, '4': 3, '5': 11, '6': '.qreeket.Group', '10': 'groups'},
  ],
};

/// Descriptor for `GroupList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupListDescriptor = $convert.base64Decode('CglHcm91cExpc3QSJgoGZ3JvdXBzGAEgAygLMg4ucXJlZWtldC5Hcm91cFIGZ3JvdXBz');
@$core.Deprecated('Use channelDescriptor instead')
const Channel$json = const {
  '1': 'Channel',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
    const {'1': 'owner', '3': 11, '4': 1, '5': 9, '10': 'owner'},
    const {'1': 'subscribers', '3': 6, '4': 3, '5': 11, '6': '.qreeket.Subscriber', '10': 'subscribers'},
    const {'1': 'muted', '3': 9, '4': 3, '5': 9, '10': 'muted'},
    const {'1': 'type', '3': 10, '4': 1, '5': 14, '6': '.qreeket.ChannelType', '10': 'type'},
    const {'1': 'created', '3': 12, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'created'},
    const {'1': 'updated', '3': 13, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updated'},
    const {'1': 'id', '3': 14, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'group', '3': 15, '4': 1, '5': 9, '10': 'group'},
    const {'1': 'icon', '3': 16, '4': 1, '5': 9, '9': 1, '10': 'icon', '17': true},
  ],
  '8': const [
    const {'1': '_description'},
    const {'1': '_icon'},
  ],
};

/// Descriptor for `Channel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelDescriptor = $convert.base64Decode('CgdDaGFubmVsEhIKBG5hbWUYASABKAlSBG5hbWUSJQoLZGVzY3JpcHRpb24YAiABKAlIAFILZGVzY3JpcHRpb26IAQESFAoFb3duZXIYCyABKAlSBW93bmVyEjUKC3N1YnNjcmliZXJzGAYgAygLMhMucXJlZWtldC5TdWJzY3JpYmVyUgtzdWJzY3JpYmVycxIUCgVtdXRlZBgJIAMoCVIFbXV0ZWQSKAoEdHlwZRgKIAEoDjIULnFyZWVrZXQuQ2hhbm5lbFR5cGVSBHR5cGUSNAoHY3JlYXRlZBgMIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSB2NyZWF0ZWQSNAoHdXBkYXRlZBgNIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSB3VwZGF0ZWQSDgoCaWQYDiABKAlSAmlkEhQKBWdyb3VwGA8gASgJUgVncm91cBIXCgRpY29uGBAgASgJSAFSBGljb26IAQFCDgoMX2Rlc2NyaXB0aW9uQgcKBV9pY29u');
@$core.Deprecated('Use channelListDescriptor instead')
const ChannelList$json = const {
  '1': 'ChannelList',
  '2': const [
    const {'1': 'channels', '3': 1, '4': 3, '5': 11, '6': '.qreeket.Channel', '10': 'channels'},
  ],
};

/// Descriptor for `ChannelList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelListDescriptor = $convert.base64Decode('CgtDaGFubmVsTGlzdBIsCghjaGFubmVscxgBIAMoCzIQLnFyZWVrZXQuQ2hhbm5lbFIIY2hhbm5lbHM=');
@$core.Deprecated('Use groupInviteDescriptor instead')
const GroupInvite$json = const {
  '1': 'GroupInvite',
  '2': const [
    const {'1': 'channels', '3': 1, '4': 3, '5': 9, '10': 'channels'},
    const {'1': 'admin', '3': 2, '4': 1, '5': 9, '10': 'admin'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'id', '3': 4, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'status', '3': 5, '4': 1, '5': 14, '6': '.qreeket.ChannelOrGroupInviteStatus', '10': 'status'},
    const {'1': 'group', '3': 6, '4': 1, '5': 11, '6': '.qreeket.Group', '10': 'group'},
    const {'1': 'user', '3': 7, '4': 1, '5': 9, '10': 'user'},
  ],
};

/// Descriptor for `GroupInvite`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupInviteDescriptor = $convert.base64Decode('CgtHcm91cEludml0ZRIaCghjaGFubmVscxgBIAMoCVIIY2hhbm5lbHMSFAoFYWRtaW4YAiABKAlSBWFkbWluEhQKBXRva2VuGAMgASgJUgV0b2tlbhIOCgJpZBgEIAEoCVICaWQSOwoGc3RhdHVzGAUgASgOMiMucXJlZWtldC5DaGFubmVsT3JHcm91cEludml0ZVN0YXR1c1IGc3RhdHVzEiQKBWdyb3VwGAYgASgLMg4ucXJlZWtldC5Hcm91cFIFZ3JvdXASEgoEdXNlchgHIAEoCVIEdXNlcg==');
@$core.Deprecated('Use groupInviteListDescriptor instead')
const GroupInviteList$json = const {
  '1': 'GroupInviteList',
  '2': const [
    const {'1': 'invites', '3': 1, '4': 3, '5': 11, '6': '.qreeket.GroupInvite', '10': 'invites'},
  ],
};

/// Descriptor for `GroupInviteList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupInviteListDescriptor = $convert.base64Decode('Cg9Hcm91cEludml0ZUxpc3QSLgoHaW52aXRlcxgBIAMoCzIULnFyZWVrZXQuR3JvdXBJbnZpdGVSB2ludml0ZXM=');
@$core.Deprecated('Use createChannelRequestDescriptor instead')
const CreateChannelRequest$json = const {
  '1': 'CreateChannelRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
    const {'1': 'icon', '3': 3, '4': 1, '5': 12, '9': 1, '10': 'icon', '17': true},
    const {'1': 'tags', '3': 5, '4': 3, '5': 9, '10': 'tags'},
    const {'1': 'subscribers', '3': 6, '4': 3, '5': 11, '6': '.qreeket.Subscriber', '10': 'subscribers'},
    const {'1': 'owner', '3': 7, '4': 1, '5': 9, '10': 'owner'},
    const {'1': 'group', '3': 8, '4': 1, '5': 9, '10': 'group'},
    const {'1': 'type', '3': 9, '4': 1, '5': 14, '6': '.qreeket.ChannelType', '10': 'type'},
  ],
  '8': const [
    const {'1': '_description'},
    const {'1': '_icon'},
  ],
};

/// Descriptor for `CreateChannelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createChannelRequestDescriptor = $convert.base64Decode('ChRDcmVhdGVDaGFubmVsUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEiUKC2Rlc2NyaXB0aW9uGAIgASgJSABSC2Rlc2NyaXB0aW9uiAEBEhcKBGljb24YAyABKAxIAVIEaWNvbogBARISCgR0YWdzGAUgAygJUgR0YWdzEjUKC3N1YnNjcmliZXJzGAYgAygLMhMucXJlZWtldC5TdWJzY3JpYmVyUgtzdWJzY3JpYmVycxIUCgVvd25lchgHIAEoCVIFb3duZXISFAoFZ3JvdXAYCCABKAlSBWdyb3VwEigKBHR5cGUYCSABKA4yFC5xcmVla2V0LkNoYW5uZWxUeXBlUgR0eXBlQg4KDF9kZXNjcmlwdGlvbkIHCgVfaWNvbg==');
@$core.Deprecated('Use groupDescriptor instead')
const Group$json = const {
  '1': 'Group',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
    const {'1': 'icon', '3': 4, '4': 1, '5': 9, '9': 1, '10': 'icon', '17': true},
    const {'1': 'channels', '3': 5, '4': 3, '5': 11, '6': '.qreeket.Channel', '10': 'channels'},
    const {'1': 'subscribers', '3': 6, '4': 3, '5': 11, '6': '.qreeket.Subscriber', '10': 'subscribers'},
    const {'1': 'admins', '3': 7, '4': 3, '5': 9, '10': 'admins'},
    const {'1': 'banned', '3': 8, '4': 3, '5': 9, '10': 'banned'},
    const {'1': 'muted', '3': 9, '4': 3, '5': 9, '10': 'muted'},
    const {'1': 'link', '3': 10, '4': 1, '5': 9, '9': 2, '10': 'link', '17': true},
    const {'1': 'tags', '3': 11, '4': 3, '5': 9, '10': 'tags'},
    const {'1': 'created', '3': 13, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'created'},
    const {'1': 'updated', '3': 14, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updated'},
  ],
  '8': const [
    const {'1': '_description'},
    const {'1': '_icon'},
    const {'1': '_link'},
  ],
};

/// Descriptor for `Group`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupDescriptor = $convert.base64Decode('CgVHcm91cBIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIlCgtkZXNjcmlwdGlvbhgDIAEoCUgAUgtkZXNjcmlwdGlvbogBARIXCgRpY29uGAQgASgJSAFSBGljb26IAQESLAoIY2hhbm5lbHMYBSADKAsyEC5xcmVla2V0LkNoYW5uZWxSCGNoYW5uZWxzEjUKC3N1YnNjcmliZXJzGAYgAygLMhMucXJlZWtldC5TdWJzY3JpYmVyUgtzdWJzY3JpYmVycxIWCgZhZG1pbnMYByADKAlSBmFkbWlucxIWCgZiYW5uZWQYCCADKAlSBmJhbm5lZBIUCgVtdXRlZBgJIAMoCVIFbXV0ZWQSFwoEbGluaxgKIAEoCUgCUgRsaW5riAEBEhIKBHRhZ3MYCyADKAlSBHRhZ3MSNAoHY3JlYXRlZBgNIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSB2NyZWF0ZWQSNAoHdXBkYXRlZBgOIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSB3VwZGF0ZWRCDgoMX2Rlc2NyaXB0aW9uQgcKBV9pY29uQgcKBV9saW5r');
@$core.Deprecated('Use subscriberDescriptor instead')
const Subscriber$json = const {
  '1': 'Subscriber',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
    const {'1': 'online', '3': 4, '4': 1, '5': 8, '10': 'online'},
  ],
};

/// Descriptor for `Subscriber`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscriberDescriptor = $convert.base64Decode('CgpTdWJzY3JpYmVyEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhYKBmF2YXRhchgDIAEoCVIGYXZhdGFyEhYKBm9ubGluZRgEIAEoCFIGb25saW5l');
@$core.Deprecated('Use createGroupRequestDescriptor instead')
const CreateGroupRequest$json = const {
  '1': 'CreateGroupRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
    const {'1': 'icon', '3': 3, '4': 1, '5': 12, '9': 1, '10': 'icon', '17': true},
    const {'1': 'tags', '3': 4, '4': 3, '5': 9, '10': 'tags'},
    const {'1': 'admin', '3': 6, '4': 1, '5': 9, '10': 'admin'},
  ],
  '8': const [
    const {'1': '_description'},
    const {'1': '_icon'},
  ],
};

/// Descriptor for `CreateGroupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createGroupRequestDescriptor = $convert.base64Decode('ChJDcmVhdGVHcm91cFJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRIlCgtkZXNjcmlwdGlvbhgCIAEoCUgAUgtkZXNjcmlwdGlvbogBARIXCgRpY29uGAMgASgMSAFSBGljb26IAQESEgoEdGFncxgEIAMoCVIEdGFncxIUCgVhZG1pbhgGIAEoCVIFYWRtaW5CDgoMX2Rlc2NyaXB0aW9uQgcKBV9pY29u');
