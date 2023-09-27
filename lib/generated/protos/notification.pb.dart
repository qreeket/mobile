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

import 'notification.pbenum.dart';

export 'notification.pbenum.dart';

enum SendNotificationRequest_NotificationTarget {
  token, 
  topic, 
  notSet
}

class SendNotificationRequest extends $pb.GeneratedMessage {
  factory SendNotificationRequest({
    $core.String? title,
    $core.String? body,
    $core.String? token,
    $core.String? topic,
    $core.Map<$core.String, $core.String>? data,
    NotificationChannelType? channelType,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (body != null) {
      $result.body = body;
    }
    if (token != null) {
      $result.token = token;
    }
    if (topic != null) {
      $result.topic = topic;
    }
    if (data != null) {
      $result.data.addAll(data);
    }
    if (channelType != null) {
      $result.channelType = channelType;
    }
    return $result;
  }
  SendNotificationRequest._() : super();
  factory SendNotificationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendNotificationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SendNotificationRequest_NotificationTarget> _SendNotificationRequest_NotificationTargetByTag = {
    3 : SendNotificationRequest_NotificationTarget.token,
    4 : SendNotificationRequest_NotificationTarget.topic,
    0 : SendNotificationRequest_NotificationTarget.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SendNotificationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..oo(0, [3, 4])
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'body')
    ..aOS(3, _omitFieldNames ? '' : 'token')
    ..aOS(4, _omitFieldNames ? '' : 'topic')
    ..m<$core.String, $core.String>(5, _omitFieldNames ? '' : 'data', entryClassName: 'SendNotificationRequest.DataEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('qreeket'))
    ..e<NotificationChannelType>(6, _omitFieldNames ? '' : 'channelType', $pb.PbFieldType.OE, defaultOrMaker: NotificationChannelType.UNKNOWN, valueOf: NotificationChannelType.valueOf, enumValues: NotificationChannelType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendNotificationRequest clone() => SendNotificationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendNotificationRequest copyWith(void Function(SendNotificationRequest) updates) => super.copyWith((message) => updates(message as SendNotificationRequest)) as SendNotificationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendNotificationRequest create() => SendNotificationRequest._();
  SendNotificationRequest createEmptyInstance() => create();
  static $pb.PbList<SendNotificationRequest> createRepeated() => $pb.PbList<SendNotificationRequest>();
  @$core.pragma('dart2js:noInline')
  static SendNotificationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendNotificationRequest>(create);
  static SendNotificationRequest? _defaultInstance;

  SendNotificationRequest_NotificationTarget whichNotificationTarget() => _SendNotificationRequest_NotificationTargetByTag[$_whichOneof(0)]!;
  void clearNotificationTarget() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get body => $_getSZ(1);
  @$pb.TagNumber(2)
  set body($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBody() => $_has(1);
  @$pb.TagNumber(2)
  void clearBody() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get token => $_getSZ(2);
  @$pb.TagNumber(3)
  set token($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearToken() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get topic => $_getSZ(3);
  @$pb.TagNumber(4)
  set topic($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTopic() => $_has(3);
  @$pb.TagNumber(4)
  void clearTopic() => clearField(4);

  @$pb.TagNumber(5)
  $core.Map<$core.String, $core.String> get data => $_getMap(4);

  @$pb.TagNumber(6)
  NotificationChannelType get channelType => $_getN(5);
  @$pb.TagNumber(6)
  set channelType(NotificationChannelType v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasChannelType() => $_has(5);
  @$pb.TagNumber(6)
  void clearChannelType() => clearField(6);
}

class SendNotificationResponse extends $pb.GeneratedMessage {
  factory SendNotificationResponse({
    $core.String? messageId,
  }) {
    final $result = create();
    if (messageId != null) {
      $result.messageId = messageId;
    }
    return $result;
  }
  SendNotificationResponse._() : super();
  factory SendNotificationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendNotificationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SendNotificationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'messageId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendNotificationResponse clone() => SendNotificationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendNotificationResponse copyWith(void Function(SendNotificationResponse) updates) => super.copyWith((message) => updates(message as SendNotificationResponse)) as SendNotificationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendNotificationResponse create() => SendNotificationResponse._();
  SendNotificationResponse createEmptyInstance() => create();
  static $pb.PbList<SendNotificationResponse> createRepeated() => $pb.PbList<SendNotificationResponse>();
  @$core.pragma('dart2js:noInline')
  static SendNotificationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendNotificationResponse>(create);
  static SendNotificationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get messageId => $_getSZ(0);
  @$pb.TagNumber(1)
  set messageId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageId() => clearField(1);
}

class RegisterDeviceRequest extends $pb.GeneratedMessage {
  factory RegisterDeviceRequest({
    $core.String? token,
    $core.String? topic,
  }) {
    final $result = create();
    if (token != null) {
      $result.token = token;
    }
    if (topic != null) {
      $result.topic = topic;
    }
    return $result;
  }
  RegisterDeviceRequest._() : super();
  factory RegisterDeviceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterDeviceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegisterDeviceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..aOS(2, _omitFieldNames ? '' : 'topic')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterDeviceRequest clone() => RegisterDeviceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterDeviceRequest copyWith(void Function(RegisterDeviceRequest) updates) => super.copyWith((message) => updates(message as RegisterDeviceRequest)) as RegisterDeviceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterDeviceRequest create() => RegisterDeviceRequest._();
  RegisterDeviceRequest createEmptyInstance() => create();
  static $pb.PbList<RegisterDeviceRequest> createRepeated() => $pb.PbList<RegisterDeviceRequest>();
  @$core.pragma('dart2js:noInline')
  static RegisterDeviceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterDeviceRequest>(create);
  static RegisterDeviceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get topic => $_getSZ(1);
  @$pb.TagNumber(2)
  set topic($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTopic() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopic() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
