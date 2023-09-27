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

import 'common.pb.dart' as $0;
import 'messaging.pbenum.dart';

export 'messaging.pbenum.dart';

class MessageChat extends $pb.GeneratedMessage {
  factory MessageChat({
    $core.String? id,
    $core.String? sender,
    $core.String? recipient,
    $core.String? body,
    MessageStatus? status,
    $0.Timestamp? createdAt,
    $0.Timestamp? updatedAt,
    $0.Timestamp? sentAt,
    $0.Timestamp? receivedAt,
    $0.Timestamp? readAt,
    $0.Timestamp? deletedAt,
    $core.Iterable<$core.String>? readBy,
    $core.String? attachment,
    MessageAttachmentType? attachmentType,
    $core.Iterable<$core.String>? reactions,
    $core.Iterable<$core.String>? mentions,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (sender != null) {
      $result.sender = sender;
    }
    if (recipient != null) {
      $result.recipient = recipient;
    }
    if (body != null) {
      $result.body = body;
    }
    if (status != null) {
      $result.status = status;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    if (sentAt != null) {
      $result.sentAt = sentAt;
    }
    if (receivedAt != null) {
      $result.receivedAt = receivedAt;
    }
    if (readAt != null) {
      $result.readAt = readAt;
    }
    if (deletedAt != null) {
      $result.deletedAt = deletedAt;
    }
    if (readBy != null) {
      $result.readBy.addAll(readBy);
    }
    if (attachment != null) {
      $result.attachment = attachment;
    }
    if (attachmentType != null) {
      $result.attachmentType = attachmentType;
    }
    if (reactions != null) {
      $result.reactions.addAll(reactions);
    }
    if (mentions != null) {
      $result.mentions.addAll(mentions);
    }
    return $result;
  }
  MessageChat._() : super();
  factory MessageChat.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageChat.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MessageChat', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'sender')
    ..aOS(3, _omitFieldNames ? '' : 'recipient')
    ..aOS(5, _omitFieldNames ? '' : 'body')
    ..e<MessageStatus>(6, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: MessageStatus.MESSAGE_STATUS_UNSPECIFIED, valueOf: MessageStatus.valueOf, enumValues: MessageStatus.values)
    ..aOM<$0.Timestamp>(7, _omitFieldNames ? '' : 'createdAt', protoName: 'createdAt', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(8, _omitFieldNames ? '' : 'updatedAt', protoName: 'updatedAt', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(9, _omitFieldNames ? '' : 'sentAt', protoName: 'sentAt', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(10, _omitFieldNames ? '' : 'receivedAt', protoName: 'receivedAt', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(11, _omitFieldNames ? '' : 'readAt', protoName: 'readAt', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(12, _omitFieldNames ? '' : 'deletedAt', protoName: 'deletedAt', subBuilder: $0.Timestamp.create)
    ..pPS(13, _omitFieldNames ? '' : 'readBy', protoName: 'readBy')
    ..aOS(14, _omitFieldNames ? '' : 'attachment')
    ..e<MessageAttachmentType>(15, _omitFieldNames ? '' : 'attachmentType', $pb.PbFieldType.OE, protoName: 'attachmentType', defaultOrMaker: MessageAttachmentType.MESSAGE_ATTACHMENT_TYPE_UNSPECIFIED, valueOf: MessageAttachmentType.valueOf, enumValues: MessageAttachmentType.values)
    ..pPS(16, _omitFieldNames ? '' : 'reactions')
    ..pPS(17, _omitFieldNames ? '' : 'mentions')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageChat clone() => MessageChat()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageChat copyWith(void Function(MessageChat) updates) => super.copyWith((message) => updates(message as MessageChat)) as MessageChat;

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
  $0.Timestamp get createdAt => $_getN(5);
  @$pb.TagNumber(7)
  set createdAt($0.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasCreatedAt() => $_has(5);
  @$pb.TagNumber(7)
  void clearCreatedAt() => clearField(7);
  @$pb.TagNumber(7)
  $0.Timestamp ensureCreatedAt() => $_ensure(5);

  @$pb.TagNumber(8)
  $0.Timestamp get updatedAt => $_getN(6);
  @$pb.TagNumber(8)
  set updatedAt($0.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasUpdatedAt() => $_has(6);
  @$pb.TagNumber(8)
  void clearUpdatedAt() => clearField(8);
  @$pb.TagNumber(8)
  $0.Timestamp ensureUpdatedAt() => $_ensure(6);

  @$pb.TagNumber(9)
  $0.Timestamp get sentAt => $_getN(7);
  @$pb.TagNumber(9)
  set sentAt($0.Timestamp v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasSentAt() => $_has(7);
  @$pb.TagNumber(9)
  void clearSentAt() => clearField(9);
  @$pb.TagNumber(9)
  $0.Timestamp ensureSentAt() => $_ensure(7);

  @$pb.TagNumber(10)
  $0.Timestamp get receivedAt => $_getN(8);
  @$pb.TagNumber(10)
  set receivedAt($0.Timestamp v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasReceivedAt() => $_has(8);
  @$pb.TagNumber(10)
  void clearReceivedAt() => clearField(10);
  @$pb.TagNumber(10)
  $0.Timestamp ensureReceivedAt() => $_ensure(8);

  @$pb.TagNumber(11)
  $0.Timestamp get readAt => $_getN(9);
  @$pb.TagNumber(11)
  set readAt($0.Timestamp v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasReadAt() => $_has(9);
  @$pb.TagNumber(11)
  void clearReadAt() => clearField(11);
  @$pb.TagNumber(11)
  $0.Timestamp ensureReadAt() => $_ensure(9);

  @$pb.TagNumber(12)
  $0.Timestamp get deletedAt => $_getN(10);
  @$pb.TagNumber(12)
  set deletedAt($0.Timestamp v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasDeletedAt() => $_has(10);
  @$pb.TagNumber(12)
  void clearDeletedAt() => clearField(12);
  @$pb.TagNumber(12)
  $0.Timestamp ensureDeletedAt() => $_ensure(10);

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
  factory MessageThread({
    $core.String? id,
    $core.String? sender,
    $core.String? recipient,
    $core.String? body,
    MessageStatus? status,
    $0.Timestamp? createdAt,
    $0.Timestamp? updatedAt,
    $0.Timestamp? sentAt,
    $0.Timestamp? receivedAt,
    $0.Timestamp? readAt,
    $0.Timestamp? deletedAt,
    $core.String? subject,
    $core.Iterable<$core.String>? readBy,
    $core.Iterable<$core.String>? reactions,
    $core.Iterable<$core.String>? mentions,
    $core.Iterable<MessageChat>? messages,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (sender != null) {
      $result.sender = sender;
    }
    if (recipient != null) {
      $result.recipient = recipient;
    }
    if (body != null) {
      $result.body = body;
    }
    if (status != null) {
      $result.status = status;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    if (sentAt != null) {
      $result.sentAt = sentAt;
    }
    if (receivedAt != null) {
      $result.receivedAt = receivedAt;
    }
    if (readAt != null) {
      $result.readAt = readAt;
    }
    if (deletedAt != null) {
      $result.deletedAt = deletedAt;
    }
    if (subject != null) {
      $result.subject = subject;
    }
    if (readBy != null) {
      $result.readBy.addAll(readBy);
    }
    if (reactions != null) {
      $result.reactions.addAll(reactions);
    }
    if (mentions != null) {
      $result.mentions.addAll(mentions);
    }
    if (messages != null) {
      $result.messages.addAll(messages);
    }
    return $result;
  }
  MessageThread._() : super();
  factory MessageThread.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageThread.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MessageThread', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'sender')
    ..aOS(3, _omitFieldNames ? '' : 'recipient')
    ..aOS(5, _omitFieldNames ? '' : 'body')
    ..e<MessageStatus>(6, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: MessageStatus.MESSAGE_STATUS_UNSPECIFIED, valueOf: MessageStatus.valueOf, enumValues: MessageStatus.values)
    ..aOM<$0.Timestamp>(7, _omitFieldNames ? '' : 'createdAt', protoName: 'createdAt', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(8, _omitFieldNames ? '' : 'updatedAt', protoName: 'updatedAt', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(9, _omitFieldNames ? '' : 'sentAt', protoName: 'sentAt', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(10, _omitFieldNames ? '' : 'receivedAt', protoName: 'receivedAt', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(11, _omitFieldNames ? '' : 'readAt', protoName: 'readAt', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(12, _omitFieldNames ? '' : 'deletedAt', protoName: 'deletedAt', subBuilder: $0.Timestamp.create)
    ..aOS(13, _omitFieldNames ? '' : 'subject')
    ..pPS(14, _omitFieldNames ? '' : 'readBy', protoName: 'readBy')
    ..pPS(15, _omitFieldNames ? '' : 'reactions')
    ..pPS(16, _omitFieldNames ? '' : 'mentions')
    ..pc<MessageChat>(17, _omitFieldNames ? '' : 'messages', $pb.PbFieldType.PM, subBuilder: MessageChat.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageThread clone() => MessageThread()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageThread copyWith(void Function(MessageThread) updates) => super.copyWith((message) => updates(message as MessageThread)) as MessageThread;

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
  $0.Timestamp get createdAt => $_getN(5);
  @$pb.TagNumber(7)
  set createdAt($0.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasCreatedAt() => $_has(5);
  @$pb.TagNumber(7)
  void clearCreatedAt() => clearField(7);
  @$pb.TagNumber(7)
  $0.Timestamp ensureCreatedAt() => $_ensure(5);

  @$pb.TagNumber(8)
  $0.Timestamp get updatedAt => $_getN(6);
  @$pb.TagNumber(8)
  set updatedAt($0.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasUpdatedAt() => $_has(6);
  @$pb.TagNumber(8)
  void clearUpdatedAt() => clearField(8);
  @$pb.TagNumber(8)
  $0.Timestamp ensureUpdatedAt() => $_ensure(6);

  @$pb.TagNumber(9)
  $0.Timestamp get sentAt => $_getN(7);
  @$pb.TagNumber(9)
  set sentAt($0.Timestamp v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasSentAt() => $_has(7);
  @$pb.TagNumber(9)
  void clearSentAt() => clearField(9);
  @$pb.TagNumber(9)
  $0.Timestamp ensureSentAt() => $_ensure(7);

  @$pb.TagNumber(10)
  $0.Timestamp get receivedAt => $_getN(8);
  @$pb.TagNumber(10)
  set receivedAt($0.Timestamp v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasReceivedAt() => $_has(8);
  @$pb.TagNumber(10)
  void clearReceivedAt() => clearField(10);
  @$pb.TagNumber(10)
  $0.Timestamp ensureReceivedAt() => $_ensure(8);

  @$pb.TagNumber(11)
  $0.Timestamp get readAt => $_getN(9);
  @$pb.TagNumber(11)
  set readAt($0.Timestamp v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasReadAt() => $_has(9);
  @$pb.TagNumber(11)
  void clearReadAt() => clearField(11);
  @$pb.TagNumber(11)
  $0.Timestamp ensureReadAt() => $_ensure(9);

  @$pb.TagNumber(12)
  $0.Timestamp get deletedAt => $_getN(10);
  @$pb.TagNumber(12)
  set deletedAt($0.Timestamp v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasDeletedAt() => $_has(10);
  @$pb.TagNumber(12)
  void clearDeletedAt() => clearField(12);
  @$pb.TagNumber(12)
  $0.Timestamp ensureDeletedAt() => $_ensure(10);

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
  factory MessageListItem({
    MessageChat? message,
    MessageThread? thread,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    if (thread != null) {
      $result.thread = thread;
    }
    return $result;
  }
  MessageListItem._() : super();
  factory MessageListItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageListItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, MessageListItem_Item> _MessageListItem_ItemByTag = {
    1 : MessageListItem_Item.message,
    2 : MessageListItem_Item.thread,
    0 : MessageListItem_Item.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MessageListItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<MessageChat>(1, _omitFieldNames ? '' : 'message', subBuilder: MessageChat.create)
    ..aOM<MessageThread>(2, _omitFieldNames ? '' : 'thread', subBuilder: MessageThread.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageListItem clone() => MessageListItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageListItem copyWith(void Function(MessageListItem) updates) => super.copyWith((message) => updates(message as MessageListItem)) as MessageListItem;

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
  factory MessageList({
    $core.Iterable<MessageListItem>? messages,
  }) {
    final $result = create();
    if (messages != null) {
      $result.messages.addAll(messages);
    }
    return $result;
  }
  MessageList._() : super();
  factory MessageList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MessageList', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..pc<MessageListItem>(1, _omitFieldNames ? '' : 'messages', $pb.PbFieldType.PM, subBuilder: MessageListItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageList clone() => MessageList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageList copyWith(void Function(MessageList) updates) => super.copyWith((message) => updates(message as MessageList)) as MessageList;

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
  factory GetMessagesRequest({
    $core.String? sender,
    $core.String? dm,
    $core.String? channel,
  }) {
    final $result = create();
    if (sender != null) {
      $result.sender = sender;
    }
    if (dm != null) {
      $result.dm = dm;
    }
    if (channel != null) {
      $result.channel = channel;
    }
    return $result;
  }
  GetMessagesRequest._() : super();
  factory GetMessagesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMessagesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, GetMessagesRequest_Recipient> _GetMessagesRequest_RecipientByTag = {
    3 : GetMessagesRequest_Recipient.dm,
    4 : GetMessagesRequest_Recipient.channel,
    0 : GetMessagesRequest_Recipient.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetMessagesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..oo(0, [3, 4])
    ..aOS(1, _omitFieldNames ? '' : 'sender')
    ..aOS(3, _omitFieldNames ? '' : 'dm')
    ..aOS(4, _omitFieldNames ? '' : 'channel')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMessagesRequest clone() => GetMessagesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMessagesRequest copyWith(void Function(GetMessagesRequest) updates) => super.copyWith((message) => updates(message as GetMessagesRequest)) as GetMessagesRequest;

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
  factory DirectMessenger({
    $core.String? id,
    $core.String? name,
    $core.String? avatar,
    $core.bool? online,
    $0.Timestamp? createdAt,
    $0.Timestamp? updatedAt,
    $0.Timestamp? lastSeen,
    $core.bool? muted,
    $core.bool? blocked,
    $core.bool? archived,
    $core.String? bio,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (online != null) {
      $result.online = online;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    if (lastSeen != null) {
      $result.lastSeen = lastSeen;
    }
    if (muted != null) {
      $result.muted = muted;
    }
    if (blocked != null) {
      $result.blocked = blocked;
    }
    if (archived != null) {
      $result.archived = archived;
    }
    if (bio != null) {
      $result.bio = bio;
    }
    return $result;
  }
  DirectMessenger._() : super();
  factory DirectMessenger.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DirectMessenger.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DirectMessenger', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'avatar')
    ..aOB(4, _omitFieldNames ? '' : 'online')
    ..aOM<$0.Timestamp>(5, _omitFieldNames ? '' : 'createdAt', protoName: 'createdAt', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(6, _omitFieldNames ? '' : 'updatedAt', protoName: 'updatedAt', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(7, _omitFieldNames ? '' : 'lastSeen', protoName: 'lastSeen', subBuilder: $0.Timestamp.create)
    ..aOB(8, _omitFieldNames ? '' : 'muted')
    ..aOB(9, _omitFieldNames ? '' : 'blocked')
    ..aOB(10, _omitFieldNames ? '' : 'archived')
    ..aOS(11, _omitFieldNames ? '' : 'bio')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DirectMessenger clone() => DirectMessenger()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DirectMessenger copyWith(void Function(DirectMessenger) updates) => super.copyWith((message) => updates(message as DirectMessenger)) as DirectMessenger;

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
  $0.Timestamp get createdAt => $_getN(4);
  @$pb.TagNumber(5)
  set createdAt($0.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => clearField(5);
  @$pb.TagNumber(5)
  $0.Timestamp ensureCreatedAt() => $_ensure(4);

  @$pb.TagNumber(6)
  $0.Timestamp get updatedAt => $_getN(5);
  @$pb.TagNumber(6)
  set updatedAt($0.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasUpdatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdatedAt() => clearField(6);
  @$pb.TagNumber(6)
  $0.Timestamp ensureUpdatedAt() => $_ensure(5);

  @$pb.TagNumber(7)
  $0.Timestamp get lastSeen => $_getN(6);
  @$pb.TagNumber(7)
  set lastSeen($0.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasLastSeen() => $_has(6);
  @$pb.TagNumber(7)
  void clearLastSeen() => clearField(7);
  @$pb.TagNumber(7)
  $0.Timestamp ensureLastSeen() => $_ensure(6);

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
  factory DirectMessengerList({
    $core.Iterable<DirectMessenger>? messengers,
  }) {
    final $result = create();
    if (messengers != null) {
      $result.messengers.addAll(messengers);
    }
    return $result;
  }
  DirectMessengerList._() : super();
  factory DirectMessengerList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DirectMessengerList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DirectMessengerList', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..pc<DirectMessenger>(1, _omitFieldNames ? '' : 'messengers', $pb.PbFieldType.PM, subBuilder: DirectMessenger.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DirectMessengerList clone() => DirectMessengerList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DirectMessengerList copyWith(void Function(DirectMessengerList) updates) => super.copyWith((message) => updates(message as DirectMessengerList)) as DirectMessengerList;

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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
