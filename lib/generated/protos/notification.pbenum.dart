//
//  Generated code. Do not modify.
//  source: notification.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class NotificationChannelType extends $pb.ProtobufEnum {
  static const NotificationChannelType UNKNOWN = NotificationChannelType._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const NotificationChannelType E2E_PERSONAL_CHAT = NotificationChannelType._(1, _omitEnumNames ? '' : 'E2E_PERSONAL_CHAT');
  static const NotificationChannelType E2E_GROUP_CHAT = NotificationChannelType._(2, _omitEnumNames ? '' : 'E2E_GROUP_CHAT');
  static const NotificationChannelType CHANNEL_INVITATION = NotificationChannelType._(3, _omitEnumNames ? '' : 'CHANNEL_INVITATION');
  static const NotificationChannelType TOPIC = NotificationChannelType._(4, _omitEnumNames ? '' : 'TOPIC');
  static const NotificationChannelType SUBSCRIPTION = NotificationChannelType._(5, _omitEnumNames ? '' : 'SUBSCRIPTION');
  static const NotificationChannelType ACCOUNT = NotificationChannelType._(6, _omitEnumNames ? '' : 'ACCOUNT');
  static const NotificationChannelType UPDATE = NotificationChannelType._(7, _omitEnumNames ? '' : 'UPDATE');
  static const NotificationChannelType BROADCAST = NotificationChannelType._(8, _omitEnumNames ? '' : 'BROADCAST');

  static const $core.List<NotificationChannelType> values = <NotificationChannelType> [
    UNKNOWN,
    E2E_PERSONAL_CHAT,
    E2E_GROUP_CHAT,
    CHANNEL_INVITATION,
    TOPIC,
    SUBSCRIPTION,
    ACCOUNT,
    UPDATE,
    BROADCAST,
  ];

  static final $core.Map<$core.int, NotificationChannelType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static NotificationChannelType? valueOf($core.int value) => _byValue[value];

  const NotificationChannelType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
