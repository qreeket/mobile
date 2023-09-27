//
//  Generated code. Do not modify.
//  source: messaging.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class MessageStatus extends $pb.ProtobufEnum {
  static const MessageStatus MESSAGE_STATUS_UNSPECIFIED = MessageStatus._(0, _omitEnumNames ? '' : 'MESSAGE_STATUS_UNSPECIFIED');
  static const MessageStatus MESSAGE_STATUS_DRAFT = MessageStatus._(1, _omitEnumNames ? '' : 'MESSAGE_STATUS_DRAFT');
  static const MessageStatus MESSAGE_STATUS_SENT = MessageStatus._(2, _omitEnumNames ? '' : 'MESSAGE_STATUS_SENT');
  static const MessageStatus MESSAGE_STATUS_RECEIVED = MessageStatus._(3, _omitEnumNames ? '' : 'MESSAGE_STATUS_RECEIVED');
  static const MessageStatus MESSAGE_STATUS_READ = MessageStatus._(4, _omitEnumNames ? '' : 'MESSAGE_STATUS_READ');
  static const MessageStatus MESSAGE_STATUS_DELETED = MessageStatus._(5, _omitEnumNames ? '' : 'MESSAGE_STATUS_DELETED');

  static const $core.List<MessageStatus> values = <MessageStatus> [
    MESSAGE_STATUS_UNSPECIFIED,
    MESSAGE_STATUS_DRAFT,
    MESSAGE_STATUS_SENT,
    MESSAGE_STATUS_RECEIVED,
    MESSAGE_STATUS_READ,
    MESSAGE_STATUS_DELETED,
  ];

  static final $core.Map<$core.int, MessageStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MessageStatus? valueOf($core.int value) => _byValue[value];

  const MessageStatus._($core.int v, $core.String n) : super(v, n);
}

class MessageAttachmentType extends $pb.ProtobufEnum {
  static const MessageAttachmentType MESSAGE_ATTACHMENT_TYPE_UNSPECIFIED = MessageAttachmentType._(0, _omitEnumNames ? '' : 'MESSAGE_ATTACHMENT_TYPE_UNSPECIFIED');
  static const MessageAttachmentType MESSAGE_ATTACHMENT_TYPE_IMAGE = MessageAttachmentType._(1, _omitEnumNames ? '' : 'MESSAGE_ATTACHMENT_TYPE_IMAGE');
  static const MessageAttachmentType MESSAGE_ATTACHMENT_TYPE_VIDEO = MessageAttachmentType._(2, _omitEnumNames ? '' : 'MESSAGE_ATTACHMENT_TYPE_VIDEO');
  static const MessageAttachmentType MESSAGE_ATTACHMENT_TYPE_AUDIO = MessageAttachmentType._(3, _omitEnumNames ? '' : 'MESSAGE_ATTACHMENT_TYPE_AUDIO');
  static const MessageAttachmentType MESSAGE_ATTACHMENT_TYPE_FILE = MessageAttachmentType._(4, _omitEnumNames ? '' : 'MESSAGE_ATTACHMENT_TYPE_FILE');
  static const MessageAttachmentType MESSAGE_ATTACHMENT_TYPE_LINK = MessageAttachmentType._(5, _omitEnumNames ? '' : 'MESSAGE_ATTACHMENT_TYPE_LINK');
  static const MessageAttachmentType MESSAGE_ATTACHMENT_TYPE_GIF = MessageAttachmentType._(6, _omitEnumNames ? '' : 'MESSAGE_ATTACHMENT_TYPE_GIF');
  static const MessageAttachmentType MESSAGE_ATTACHMENT_TYPE_STICKER = MessageAttachmentType._(7, _omitEnumNames ? '' : 'MESSAGE_ATTACHMENT_TYPE_STICKER');
  static const MessageAttachmentType MESSAGE_ATTACHMENT_TYPE_LOCATION = MessageAttachmentType._(8, _omitEnumNames ? '' : 'MESSAGE_ATTACHMENT_TYPE_LOCATION');

  static const $core.List<MessageAttachmentType> values = <MessageAttachmentType> [
    MESSAGE_ATTACHMENT_TYPE_UNSPECIFIED,
    MESSAGE_ATTACHMENT_TYPE_IMAGE,
    MESSAGE_ATTACHMENT_TYPE_VIDEO,
    MESSAGE_ATTACHMENT_TYPE_AUDIO,
    MESSAGE_ATTACHMENT_TYPE_FILE,
    MESSAGE_ATTACHMENT_TYPE_LINK,
    MESSAGE_ATTACHMENT_TYPE_GIF,
    MESSAGE_ATTACHMENT_TYPE_STICKER,
    MESSAGE_ATTACHMENT_TYPE_LOCATION,
  ];

  static final $core.Map<$core.int, MessageAttachmentType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MessageAttachmentType? valueOf($core.int value) => _byValue[value];

  const MessageAttachmentType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
