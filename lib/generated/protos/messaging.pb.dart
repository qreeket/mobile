///
//  Generated code. Do not modify.
//  source: messaging.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'package:protobuf_google/protobuf_google.dart' as $10;

import 'messaging.pbenum.dart';

export 'messaging.pbenum.dart';

class MessageChat extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageChat', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sender')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recipient')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body')
    ..e<MessageStatus>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: MessageStatus.MESSAGE_STATUS_UNSPECIFIED, valueOf: MessageStatus.valueOf, enumValues: MessageStatus.values)
    ..aOM<$10.Timestamp>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', protoName: 'createdAt', subBuilder: $10.Timestamp.create)
    ..aOM<$10.Timestamp>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', protoName: 'updatedAt', subBuilder: $10.Timestamp.create)
    ..aOM<$10.Timestamp>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sentAt', protoName: 'sentAt', subBuilder: $10.Timestamp.create)
    ..aOM<$10.Timestamp>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'receivedAt', protoName: 'receivedAt', subBuilder: $10.Timestamp.create)
    ..aOM<$10.Timestamp>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'readAt', protoName: 'readAt', subBuilder: $10.Timestamp.create)
    ..aOM<$10.Timestamp>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deletedAt', protoName: 'deletedAt', subBuilder: $10.Timestamp.create)
    ..pPS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'readBy', protoName: 'readBy')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'attachment')
    ..e<MessageAttachmentType>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'attachmentType', $pb.PbFieldType.OE, protoName: 'attachmentType', defaultOrMaker: MessageAttachmentType.MESSAGE_ATTACHMENT_TYPE_UNSPECIFIED, valueOf: MessageAttachmentType.valueOf, enumValues: MessageAttachmentType.values)
    ..pPS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reactions')
    ..pPS(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mentions')
    ..hasRequiredFields = false
  ;

  MessageChat._() : super();
  factory MessageChat({
    $core.String? id,
    $core.String? sender,
    $core.String? recipient,
    $core.String? body,
    MessageStatus? status,
    $10.Timestamp? createdAt,
    $10.Timestamp? updatedAt,
    $10.Timestamp? sentAt,
    $10.Timestamp? receivedAt,
    $10.Timestamp? readAt,
    $10.Timestamp? deletedAt,
    $core.Iterable<$core.String>? readBy,
    $core.String? attachment,
    MessageAttachmentType? attachmentType,
    $core.Iterable<$core.String>? reactions,
    $core.Iterable<$core.String>? mentions,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (sender != null) {
      _result.sender = sender;
    }
    if (recipient != null) {
      _result.recipient = recipient;
    }
    if (body != null) {
      _result.body = body;
    }
    if (status != null) {
      _result.status = status;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    if (sentAt != null) {
      _result.sentAt = sentAt;
    }
    if (receivedAt != null) {
      _result.receivedAt = receivedAt;
    }
    if (readAt != null) {
      _result.readAt = readAt;
    }
    if (deletedAt != null) {
      _result.deletedAt = deletedAt;
    }
    if (readBy != null) {
      _result.readBy.addAll(readBy);
    }
    if (attachment != null) {
      _result.attachment = attachment;
    }
    if (attachmentType != null) {
      _result.attachmentType = attachmentType;
    }
    if (reactions != null) {
      _result.reactions.addAll(reactions);
    }
    if (mentions != null) {
      _result.mentions.addAll(mentions);
    }
    return _result;
  }
  factory MessageChat.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageChat.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageChat clone() => MessageChat()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageChat copyWith(void Function(MessageChat) updates) => super.copyWith((message) => updates(message as MessageChat)) as MessageChat; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageChat create() => MessageChat._();
  MessageChat createEmptyInstance() => create();
  static $pb.PbList<MessageChat> createRepeated() => $pb.PbList<MessageChat>();
  @$core.pragma('dart2js:noInline')
  static MessageChat getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageChat>(create);
  static MessageChat? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get sender => $_getSZ(1);
  @$pb.TagNumber(2)
  set sender($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSender() => $_has(1);
  @$pb.TagNumber(2)
  void clearSender() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get recipient => $_getSZ(2);
  @$pb.TagNumber(3)
  set recipient($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRecipient() => $_has(2);
  @$pb.TagNumber(3)
  void clearRecipient() => clearField(3);

  @$pb.TagNumber(5)
  $core.String get body => $_getSZ(3);
  @$pb.TagNumber(5)
  set body($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasBody() => $_has(3);
  @$pb.TagNumber(5)
  void clearBody() => clearField(5);

  @$pb.TagNumber(6)
  MessageStatus get status => $_getN(4);
  @$pb.TagNumber(6)
  set status(MessageStatus v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(6)
  void clearStatus() => clearField(6);

  @$pb.TagNumber(7)
  $10.Timestamp get createdAt => $_getN(5);
  @$pb.TagNumber(7)
  set createdAt($10.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasCreatedAt() => $_has(5);
  @$pb.TagNumber(7)
  void clearCreatedAt() => clearField(7);
  @$pb.TagNumber(7)
  $10.Timestamp ensureCreatedAt() => $_ensure(5);

  @$pb.TagNumber(8)
  $10.Timestamp get updatedAt => $_getN(6);
  @$pb.TagNumber(8)
  set updatedAt($10.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasUpdatedAt() => $_has(6);
  @$pb.TagNumber(8)
  void clearUpdatedAt() => clearField(8);
  @$pb.TagNumber(8)
  $10.Timestamp ensureUpdatedAt() => $_ensure(6);

  @$pb.TagNumber(9)
  $10.Timestamp get sentAt => $_getN(7);
  @$pb.TagNumber(9)
  set sentAt($10.Timestamp v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasSentAt() => $_has(7);
  @$pb.TagNumber(9)
  void clearSentAt() => clearField(9);
  @$pb.TagNumber(9)
  $10.Timestamp ensureSentAt() => $_ensure(7);

  @$pb.TagNumber(10)
  $10.Timestamp get receivedAt => $_getN(8);
  @$pb.TagNumber(10)
  set receivedAt($10.Timestamp v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasReceivedAt() => $_has(8);
  @$pb.TagNumber(10)
  void clearReceivedAt() => clearField(10);
  @$pb.TagNumber(10)
  $10.Timestamp ensureReceivedAt() => $_ensure(8);

  @$pb.TagNumber(11)
  $10.Timestamp get readAt => $_getN(9);
  @$pb.TagNumber(11)
  set readAt($10.Timestamp v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasReadAt() => $_has(9);
  @$pb.TagNumber(11)
  void clearReadAt() => clearField(11);
  @$pb.TagNumber(11)
  $10.Timestamp ensureReadAt() => $_ensure(9);

  @$pb.TagNumber(12)
  $10.Timestamp get deletedAt => $_getN(10);
  @$pb.TagNumber(12)
  set deletedAt($10.Timestamp v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasDeletedAt() => $_has(10);
  @$pb.TagNumber(12)
  void clearDeletedAt() => clearField(12);
  @$pb.TagNumber(12)
  $10.Timestamp ensureDeletedAt() => $_ensure(10);

  @$pb.TagNumber(13)
  $core.List<$core.String> get readBy => $_getList(11);

  @$pb.TagNumber(14)
  $core.String get attachment => $_getSZ(12);
  @$pb.TagNumber(14)
  set attachment($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(14)
  $core.bool hasAttachment() => $_has(12);
  @$pb.TagNumber(14)
  void clearAttachment() => clearField(14);

  @$pb.TagNumber(15)
  MessageAttachmentType get attachmentType => $_getN(13);
  @$pb.TagNumber(15)
  set attachmentType(MessageAttachmentType v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasAttachmentType() => $_has(13);
  @$pb.TagNumber(15)
  void clearAttachmentType() => clearField(15);

  @$pb.TagNumber(16)
  $core.List<$core.String> get reactions => $_getList(14);

  @$pb.TagNumber(17)
  $core.List<$core.String> get mentions => $_getList(15);
}

class MessageThread extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageThread', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sender')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recipient')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body')
    ..e<MessageStatus>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: MessageStatus.MESSAGE_STATUS_UNSPECIFIED, valueOf: MessageStatus.valueOf, enumValues: MessageStatus.values)
    ..aOM<$10.Timestamp>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', protoName: 'createdAt', subBuilder: $10.Timestamp.create)
    ..aOM<$10.Timestamp>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', protoName: 'updatedAt', subBuilder: $10.Timestamp.create)
    ..aOM<$10.Timestamp>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sentAt', protoName: 'sentAt', subBuilder: $10.Timestamp.create)
    ..aOM<$10.Timestamp>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'receivedAt', protoName: 'receivedAt', subBuilder: $10.Timestamp.create)
    ..aOM<$10.Timestamp>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'readAt', protoName: 'readAt', subBuilder: $10.Timestamp.create)
    ..aOM<$10.Timestamp>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deletedAt', protoName: 'deletedAt', subBuilder: $10.Timestamp.create)
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subject')
    ..pPS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'readBy', protoName: 'readBy')
    ..pPS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reactions')
    ..pPS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mentions')
    ..pc<MessageChat>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messages', $pb.PbFieldType.PM, subBuilder: MessageChat.create)
    ..hasRequiredFields = false
  ;

  MessageThread._() : super();
  factory MessageThread({
    $core.String? id,
    $core.String? sender,
    $core.String? recipient,
    $core.String? body,
    MessageStatus? status,
    $10.Timestamp? createdAt,
    $10.Timestamp? updatedAt,
    $10.Timestamp? sentAt,
    $10.Timestamp? receivedAt,
    $10.Timestamp? readAt,
    $10.Timestamp? deletedAt,
    $core.String? subject,
    $core.Iterable<$core.String>? readBy,
    $core.Iterable<$core.String>? reactions,
    $core.Iterable<$core.String>? mentions,
    $core.Iterable<MessageChat>? messages,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (sender != null) {
      _result.sender = sender;
    }
    if (recipient != null) {
      _result.recipient = recipient;
    }
    if (body != null) {
      _result.body = body;
    }
    if (status != null) {
      _result.status = status;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    if (sentAt != null) {
      _result.sentAt = sentAt;
    }
    if (receivedAt != null) {
      _result.receivedAt = receivedAt;
    }
    if (readAt != null) {
      _result.readAt = readAt;
    }
    if (deletedAt != null) {
      _result.deletedAt = deletedAt;
    }
    if (subject != null) {
      _result.subject = subject;
    }
    if (readBy != null) {
      _result.readBy.addAll(readBy);
    }
    if (reactions != null) {
      _result.reactions.addAll(reactions);
    }
    if (mentions != null) {
      _result.mentions.addAll(mentions);
    }
    if (messages != null) {
      _result.messages.addAll(messages);
    }
    return _result;
  }
  factory MessageThread.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageThread.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageThread clone() => MessageThread()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageThread copyWith(void Function(MessageThread) updates) => super.copyWith((message) => updates(message as MessageThread)) as MessageThread; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageThread create() => MessageThread._();
  MessageThread createEmptyInstance() => create();
  static $pb.PbList<MessageThread> createRepeated() => $pb.PbList<MessageThread>();
  @$core.pragma('dart2js:noInline')
  static MessageThread getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageThread>(create);
  static MessageThread? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get sender => $_getSZ(1);
  @$pb.TagNumber(2)
  set sender($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSender() => $_has(1);
  @$pb.TagNumber(2)
  void clearSender() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get recipient => $_getSZ(2);
  @$pb.TagNumber(3)
  set recipient($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRecipient() => $_has(2);
  @$pb.TagNumber(3)
  void clearRecipient() => clearField(3);

  @$pb.TagNumber(5)
  $core.String get body => $_getSZ(3);
  @$pb.TagNumber(5)
  set body($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasBody() => $_has(3);
  @$pb.TagNumber(5)
  void clearBody() => clearField(5);

  @$pb.TagNumber(6)
  MessageStatus get status => $_getN(4);
  @$pb.TagNumber(6)
  set status(MessageStatus v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(6)
  void clearStatus() => clearField(6);

  @$pb.TagNumber(7)
  $10.Timestamp get createdAt => $_getN(5);
  @$pb.TagNumber(7)
  set createdAt($10.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasCreatedAt() => $_has(5);
  @$pb.TagNumber(7)
  void clearCreatedAt() => clearField(7);
  @$pb.TagNumber(7)
  $10.Timestamp ensureCreatedAt() => $_ensure(5);

  @$pb.TagNumber(8)
  $10.Timestamp get updatedAt => $_getN(6);
  @$pb.TagNumber(8)
  set updatedAt($10.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasUpdatedAt() => $_has(6);
  @$pb.TagNumber(8)
  void clearUpdatedAt() => clearField(8);
  @$pb.TagNumber(8)
  $10.Timestamp ensureUpdatedAt() => $_ensure(6);

  @$pb.TagNumber(9)
  $10.Timestamp get sentAt => $_getN(7);
  @$pb.TagNumber(9)
  set sentAt($10.Timestamp v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasSentAt() => $_has(7);
  @$pb.TagNumber(9)
  void clearSentAt() => clearField(9);
  @$pb.TagNumber(9)
  $10.Timestamp ensureSentAt() => $_ensure(7);

  @$pb.TagNumber(10)
  $10.Timestamp get receivedAt => $_getN(8);
  @$pb.TagNumber(10)
  set receivedAt($10.Timestamp v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasReceivedAt() => $_has(8);
  @$pb.TagNumber(10)
  void clearReceivedAt() => clearField(10);
  @$pb.TagNumber(10)
  $10.Timestamp ensureReceivedAt() => $_ensure(8);

  @$pb.TagNumber(11)
  $10.Timestamp get readAt => $_getN(9);
  @$pb.TagNumber(11)
  set readAt($10.Timestamp v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasReadAt() => $_has(9);
  @$pb.TagNumber(11)
  void clearReadAt() => clearField(11);
  @$pb.TagNumber(11)
  $10.Timestamp ensureReadAt() => $_ensure(9);

  @$pb.TagNumber(12)
  $10.Timestamp get deletedAt => $_getN(10);
  @$pb.TagNumber(12)
  set deletedAt($10.Timestamp v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasDeletedAt() => $_has(10);
  @$pb.TagNumber(12)
  void clearDeletedAt() => clearField(12);
  @$pb.TagNumber(12)
  $10.Timestamp ensureDeletedAt() => $_ensure(10);

  @$pb.TagNumber(13)
  $core.String get subject => $_getSZ(11);
  @$pb.TagNumber(13)
  set subject($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(13)
  $core.bool hasSubject() => $_has(11);
  @$pb.TagNumber(13)
  void clearSubject() => clearField(13);

  @$pb.TagNumber(14)
  $core.List<$core.String> get readBy => $_getList(12);

  @$pb.TagNumber(15)
  $core.List<$core.String> get reactions => $_getList(13);

  @$pb.TagNumber(16)
  $core.List<$core.String> get mentions => $_getList(14);

  @$pb.TagNumber(17)
  $core.List<MessageChat> get messages => $_getList(15);
}

enum MessageListItem_Item {
  message, 
  thread, 
  notSet
}

class MessageListItem extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, MessageListItem_Item> _MessageListItem_ItemByTag = {
    1 : MessageListItem_Item.message,
    2 : MessageListItem_Item.thread,
    0 : MessageListItem_Item.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageListItem', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<MessageChat>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message', subBuilder: MessageChat.create)
    ..aOM<MessageThread>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'thread', subBuilder: MessageThread.create)
    ..hasRequiredFields = false
  ;

  MessageListItem._() : super();
  factory MessageListItem({
    MessageChat? message,
    MessageThread? thread,
  }) {
    final _result = create();
    if (message != null) {
      _result.message = message;
    }
    if (thread != null) {
      _result.thread = thread;
    }
    return _result;
  }
  factory MessageListItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageListItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageListItem clone() => MessageListItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageListItem copyWith(void Function(MessageListItem) updates) => super.copyWith((message) => updates(message as MessageListItem)) as MessageListItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageListItem create() => MessageListItem._();
  MessageListItem createEmptyInstance() => create();
  static $pb.PbList<MessageListItem> createRepeated() => $pb.PbList<MessageListItem>();
  @$core.pragma('dart2js:noInline')
  static MessageListItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageListItem>(create);
  static MessageListItem? _defaultInstance;

  MessageListItem_Item whichItem() => _MessageListItem_ItemByTag[$_whichOneof(0)]!;
  void clearItem() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  MessageChat get message => $_getN(0);
  @$pb.TagNumber(1)
  set message(MessageChat v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
  @$pb.TagNumber(1)
  MessageChat ensureMessage() => $_ensure(0);

  @$pb.TagNumber(2)
  MessageThread get thread => $_getN(1);
  @$pb.TagNumber(2)
  set thread(MessageThread v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasThread() => $_has(1);
  @$pb.TagNumber(2)
  void clearThread() => clearField(2);
  @$pb.TagNumber(2)
  MessageThread ensureThread() => $_ensure(1);
}

class MessageList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..pc<MessageListItem>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messages', $pb.PbFieldType.PM, subBuilder: MessageListItem.create)
    ..hasRequiredFields = false
  ;

  MessageList._() : super();
  factory MessageList({
    $core.Iterable<MessageListItem>? messages,
  }) {
    final _result = create();
    if (messages != null) {
      _result.messages.addAll(messages);
    }
    return _result;
  }
  factory MessageList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageList clone() => MessageList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageList copyWith(void Function(MessageList) updates) => super.copyWith((message) => updates(message as MessageList)) as MessageList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageList create() => MessageList._();
  MessageList createEmptyInstance() => create();
  static $pb.PbList<MessageList> createRepeated() => $pb.PbList<MessageList>();
  @$core.pragma('dart2js:noInline')
  static MessageList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageList>(create);
  static MessageList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MessageListItem> get messages => $_getList(0);
}

enum GetMessagesRequest_Recipient {
  dm, 
  channel, 
  notSet
}

class GetMessagesRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GetMessagesRequest_Recipient> _GetMessagesRequest_RecipientByTag = {
    3 : GetMessagesRequest_Recipient.dm,
    4 : GetMessagesRequest_Recipient.channel,
    0 : GetMessagesRequest_Recipient.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetMessagesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..oo(0, [3, 4])
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sender')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dm')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channel')
    ..hasRequiredFields = false
  ;

  GetMessagesRequest._() : super();
  factory GetMessagesRequest({
    $core.String? sender,
    $core.String? dm,
    $core.String? channel,
  }) {
    final _result = create();
    if (sender != null) {
      _result.sender = sender;
    }
    if (dm != null) {
      _result.dm = dm;
    }
    if (channel != null) {
      _result.channel = channel;
    }
    return _result;
  }
  factory GetMessagesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMessagesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMessagesRequest clone() => GetMessagesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMessagesRequest copyWith(void Function(GetMessagesRequest) updates) => super.copyWith((message) => updates(message as GetMessagesRequest)) as GetMessagesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMessagesRequest create() => GetMessagesRequest._();
  GetMessagesRequest createEmptyInstance() => create();
  static $pb.PbList<GetMessagesRequest> createRepeated() => $pb.PbList<GetMessagesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetMessagesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMessagesRequest>(create);
  static GetMessagesRequest? _defaultInstance;

  GetMessagesRequest_Recipient whichRecipient() => _GetMessagesRequest_RecipientByTag[$_whichOneof(0)]!;
  void clearRecipient() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get sender => $_getSZ(0);
  @$pb.TagNumber(1)
  set sender($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSender() => $_has(0);
  @$pb.TagNumber(1)
  void clearSender() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get dm => $_getSZ(1);
  @$pb.TagNumber(3)
  set dm($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasDm() => $_has(1);
  @$pb.TagNumber(3)
  void clearDm() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get channel => $_getSZ(2);
  @$pb.TagNumber(4)
  set channel($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasChannel() => $_has(2);
  @$pb.TagNumber(4)
  void clearChannel() => clearField(4);
}

class DirectMessenger extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DirectMessenger', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avatar')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'online')
    ..aOM<$10.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', protoName: 'createdAt', subBuilder: $10.Timestamp.create)
    ..aOM<$10.Timestamp>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', protoName: 'updatedAt', subBuilder: $10.Timestamp.create)
    ..aOM<$10.Timestamp>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastSeen', protoName: 'lastSeen', subBuilder: $10.Timestamp.create)
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'muted')
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blocked')
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'archived')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bio')
    ..hasRequiredFields = false
  ;

  DirectMessenger._() : super();
  factory DirectMessenger({
    $core.String? id,
    $core.String? name,
    $core.String? avatar,
    $core.bool? online,
    $10.Timestamp? createdAt,
    $10.Timestamp? updatedAt,
    $10.Timestamp? lastSeen,
    $core.bool? muted,
    $core.bool? blocked,
    $core.bool? archived,
    $core.String? bio,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (avatar != null) {
      _result.avatar = avatar;
    }
    if (online != null) {
      _result.online = online;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    if (lastSeen != null) {
      _result.lastSeen = lastSeen;
    }
    if (muted != null) {
      _result.muted = muted;
    }
    if (blocked != null) {
      _result.blocked = blocked;
    }
    if (archived != null) {
      _result.archived = archived;
    }
    if (bio != null) {
      _result.bio = bio;
    }
    return _result;
  }
  factory DirectMessenger.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DirectMessenger.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DirectMessenger clone() => DirectMessenger()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DirectMessenger copyWith(void Function(DirectMessenger) updates) => super.copyWith((message) => updates(message as DirectMessenger)) as DirectMessenger; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DirectMessenger create() => DirectMessenger._();
  DirectMessenger createEmptyInstance() => create();
  static $pb.PbList<DirectMessenger> createRepeated() => $pb.PbList<DirectMessenger>();
  @$core.pragma('dart2js:noInline')
  static DirectMessenger getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DirectMessenger>(create);
  static DirectMessenger? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get avatar => $_getSZ(2);
  @$pb.TagNumber(3)
  set avatar($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAvatar() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatar() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get online => $_getBF(3);
  @$pb.TagNumber(4)
  set online($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOnline() => $_has(3);
  @$pb.TagNumber(4)
  void clearOnline() => clearField(4);

  @$pb.TagNumber(5)
  $10.Timestamp get createdAt => $_getN(4);
  @$pb.TagNumber(5)
  set createdAt($10.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => clearField(5);
  @$pb.TagNumber(5)
  $10.Timestamp ensureCreatedAt() => $_ensure(4);

  @$pb.TagNumber(6)
  $10.Timestamp get updatedAt => $_getN(5);
  @$pb.TagNumber(6)
  set updatedAt($10.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasUpdatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdatedAt() => clearField(6);
  @$pb.TagNumber(6)
  $10.Timestamp ensureUpdatedAt() => $_ensure(5);

  @$pb.TagNumber(7)
  $10.Timestamp get lastSeen => $_getN(6);
  @$pb.TagNumber(7)
  set lastSeen($10.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasLastSeen() => $_has(6);
  @$pb.TagNumber(7)
  void clearLastSeen() => clearField(7);
  @$pb.TagNumber(7)
  $10.Timestamp ensureLastSeen() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.bool get muted => $_getBF(7);
  @$pb.TagNumber(8)
  set muted($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasMuted() => $_has(7);
  @$pb.TagNumber(8)
  void clearMuted() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get blocked => $_getBF(8);
  @$pb.TagNumber(9)
  set blocked($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasBlocked() => $_has(8);
  @$pb.TagNumber(9)
  void clearBlocked() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get archived => $_getBF(9);
  @$pb.TagNumber(10)
  set archived($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasArchived() => $_has(9);
  @$pb.TagNumber(10)
  void clearArchived() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get bio => $_getSZ(10);
  @$pb.TagNumber(11)
  set bio($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasBio() => $_has(10);
  @$pb.TagNumber(11)
  void clearBio() => clearField(11);
}

class DirectMessengerList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DirectMessengerList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..pc<DirectMessenger>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messengers', $pb.PbFieldType.PM, subBuilder: DirectMessenger.create)
    ..hasRequiredFields = false
  ;

  DirectMessengerList._() : super();
  factory DirectMessengerList({
    $core.Iterable<DirectMessenger>? messengers,
  }) {
    final _result = create();
    if (messengers != null) {
      _result.messengers.addAll(messengers);
    }
    return _result;
  }
  factory DirectMessengerList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DirectMessengerList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DirectMessengerList clone() => DirectMessengerList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DirectMessengerList copyWith(void Function(DirectMessengerList) updates) => super.copyWith((message) => updates(message as DirectMessengerList)) as DirectMessengerList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DirectMessengerList create() => DirectMessengerList._();
  DirectMessengerList createEmptyInstance() => create();
  static $pb.PbList<DirectMessengerList> createRepeated() => $pb.PbList<DirectMessengerList>();
  @$core.pragma('dart2js:noInline')
  static DirectMessengerList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DirectMessengerList>(create);
  static DirectMessengerList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<DirectMessenger> get messengers => $_getList(0);
}

