///
//  Generated code. Do not modify.
//  source: group.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'package:protobuf_google/protobuf_google.dart' as $10;

import 'group.pbenum.dart';

export 'group.pbenum.dart';

class DeleteGroupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteGroupRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'group')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'admin')
    ..hasRequiredFields = false
  ;

  DeleteGroupRequest._() : super();
  factory DeleteGroupRequest({
    $core.String? group,
    $core.String? admin,
  }) {
    final _result = create();
    if (group != null) {
      _result.group = group;
    }
    if (admin != null) {
      _result.admin = admin;
    }
    return _result;
  }
  factory DeleteGroupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteGroupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteGroupRequest clone() => DeleteGroupRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteGroupRequest copyWith(void Function(DeleteGroupRequest) updates) => super.copyWith((message) => updates(message as DeleteGroupRequest)) as DeleteGroupRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteGroupRequest create() => DeleteGroupRequest._();
  DeleteGroupRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteGroupRequest> createRepeated() => $pb.PbList<DeleteGroupRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteGroupRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteGroupRequest>(create);
  static DeleteGroupRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get group => $_getSZ(0);
  @$pb.TagNumber(1)
  set group($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroup() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroup() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get admin => $_getSZ(1);
  @$pb.TagNumber(2)
  set admin($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAdmin() => $_has(1);
  @$pb.TagNumber(2)
  void clearAdmin() => clearField(2);
}

class ManageAdminRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ManageAdminRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'group')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'admin')
    ..hasRequiredFields = false
  ;

  ManageAdminRequest._() : super();
  factory ManageAdminRequest({
    $core.String? group,
    $core.String? user,
    $core.String? admin,
  }) {
    final _result = create();
    if (group != null) {
      _result.group = group;
    }
    if (user != null) {
      _result.user = user;
    }
    if (admin != null) {
      _result.admin = admin;
    }
    return _result;
  }
  factory ManageAdminRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ManageAdminRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ManageAdminRequest clone() => ManageAdminRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ManageAdminRequest copyWith(void Function(ManageAdminRequest) updates) => super.copyWith((message) => updates(message as ManageAdminRequest)) as ManageAdminRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ManageAdminRequest create() => ManageAdminRequest._();
  ManageAdminRequest createEmptyInstance() => create();
  static $pb.PbList<ManageAdminRequest> createRepeated() => $pb.PbList<ManageAdminRequest>();
  @$core.pragma('dart2js:noInline')
  static ManageAdminRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ManageAdminRequest>(create);
  static ManageAdminRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get group => $_getSZ(0);
  @$pb.TagNumber(1)
  set group($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroup() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroup() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get user => $_getSZ(1);
  @$pb.TagNumber(2)
  set user($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearUser() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get admin => $_getSZ(2);
  @$pb.TagNumber(3)
  set admin($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAdmin() => $_has(2);
  @$pb.TagNumber(3)
  void clearAdmin() => clearField(3);
}

enum ManageGroupOrChannel_Payload {
  channel, 
  group, 
  notSet
}

class ManageGroupOrChannel extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ManageGroupOrChannel_Payload> _ManageGroupOrChannel_PayloadByTag = {
    2 : ManageGroupOrChannel_Payload.channel,
    3 : ManageGroupOrChannel_Payload.group,
    0 : ManageGroupOrChannel_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ManageGroupOrChannel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channel')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'group')
    ..hasRequiredFields = false
  ;

  ManageGroupOrChannel._() : super();
  factory ManageGroupOrChannel({
    $core.String? user,
    $core.String? channel,
    $core.String? group,
  }) {
    final _result = create();
    if (user != null) {
      _result.user = user;
    }
    if (channel != null) {
      _result.channel = channel;
    }
    if (group != null) {
      _result.group = group;
    }
    return _result;
  }
  factory ManageGroupOrChannel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ManageGroupOrChannel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ManageGroupOrChannel clone() => ManageGroupOrChannel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ManageGroupOrChannel copyWith(void Function(ManageGroupOrChannel) updates) => super.copyWith((message) => updates(message as ManageGroupOrChannel)) as ManageGroupOrChannel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ManageGroupOrChannel create() => ManageGroupOrChannel._();
  ManageGroupOrChannel createEmptyInstance() => create();
  static $pb.PbList<ManageGroupOrChannel> createRepeated() => $pb.PbList<ManageGroupOrChannel>();
  @$core.pragma('dart2js:noInline')
  static ManageGroupOrChannel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ManageGroupOrChannel>(create);
  static ManageGroupOrChannel? _defaultInstance;

  ManageGroupOrChannel_Payload whichPayload() => _ManageGroupOrChannel_PayloadByTag[$_whichOneof(0)]!;
  void clearPayload() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get user => $_getSZ(0);
  @$pb.TagNumber(1)
  set user($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get channel => $_getSZ(1);
  @$pb.TagNumber(2)
  set channel($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChannel() => $_has(1);
  @$pb.TagNumber(2)
  void clearChannel() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get group => $_getSZ(2);
  @$pb.TagNumber(3)
  set group($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGroup() => $_has(2);
  @$pb.TagNumber(3)
  void clearGroup() => clearField(3);
}

enum ManageGroupOrChannelRequest_Payload {
  channel, 
  group, 
  notSet
}

class ManageGroupOrChannelRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ManageGroupOrChannelRequest_Payload> _ManageGroupOrChannelRequest_PayloadByTag = {
    1 : ManageGroupOrChannelRequest_Payload.channel,
    2 : ManageGroupOrChannelRequest_Payload.group,
    0 : ManageGroupOrChannelRequest_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ManageGroupOrChannelRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channel')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'group')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'admin')
    ..hasRequiredFields = false
  ;

  ManageGroupOrChannelRequest._() : super();
  factory ManageGroupOrChannelRequest({
    $core.String? channel,
    $core.String? group,
    $core.String? user,
    $core.String? admin,
  }) {
    final _result = create();
    if (channel != null) {
      _result.channel = channel;
    }
    if (group != null) {
      _result.group = group;
    }
    if (user != null) {
      _result.user = user;
    }
    if (admin != null) {
      _result.admin = admin;
    }
    return _result;
  }
  factory ManageGroupOrChannelRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ManageGroupOrChannelRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ManageGroupOrChannelRequest clone() => ManageGroupOrChannelRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ManageGroupOrChannelRequest copyWith(void Function(ManageGroupOrChannelRequest) updates) => super.copyWith((message) => updates(message as ManageGroupOrChannelRequest)) as ManageGroupOrChannelRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ManageGroupOrChannelRequest create() => ManageGroupOrChannelRequest._();
  ManageGroupOrChannelRequest createEmptyInstance() => create();
  static $pb.PbList<ManageGroupOrChannelRequest> createRepeated() => $pb.PbList<ManageGroupOrChannelRequest>();
  @$core.pragma('dart2js:noInline')
  static ManageGroupOrChannelRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ManageGroupOrChannelRequest>(create);
  static ManageGroupOrChannelRequest? _defaultInstance;

  ManageGroupOrChannelRequest_Payload whichPayload() => _ManageGroupOrChannelRequest_PayloadByTag[$_whichOneof(0)]!;
  void clearPayload() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get channel => $_getSZ(0);
  @$pb.TagNumber(1)
  set channel($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChannel() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannel() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get group => $_getSZ(1);
  @$pb.TagNumber(2)
  set group($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroup() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroup() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get user => $_getSZ(2);
  @$pb.TagNumber(3)
  set user($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUser() => $_has(2);
  @$pb.TagNumber(3)
  void clearUser() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get admin => $_getSZ(3);
  @$pb.TagNumber(4)
  set admin($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAdmin() => $_has(3);
  @$pb.TagNumber(4)
  void clearAdmin() => clearField(4);
}

class ManageChannelSubscriptionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ManageChannelSubscriptionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channel')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accept')
    ..hasRequiredFields = false
  ;

  ManageChannelSubscriptionRequest._() : super();
  factory ManageChannelSubscriptionRequest({
    $core.String? channel,
    $core.String? user,
    $core.String? token,
    $core.bool? accept,
  }) {
    final _result = create();
    if (channel != null) {
      _result.channel = channel;
    }
    if (user != null) {
      _result.user = user;
    }
    if (token != null) {
      _result.token = token;
    }
    if (accept != null) {
      _result.accept = accept;
    }
    return _result;
  }
  factory ManageChannelSubscriptionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ManageChannelSubscriptionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ManageChannelSubscriptionRequest clone() => ManageChannelSubscriptionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ManageChannelSubscriptionRequest copyWith(void Function(ManageChannelSubscriptionRequest) updates) => super.copyWith((message) => updates(message as ManageChannelSubscriptionRequest)) as ManageChannelSubscriptionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ManageChannelSubscriptionRequest create() => ManageChannelSubscriptionRequest._();
  ManageChannelSubscriptionRequest createEmptyInstance() => create();
  static $pb.PbList<ManageChannelSubscriptionRequest> createRepeated() => $pb.PbList<ManageChannelSubscriptionRequest>();
  @$core.pragma('dart2js:noInline')
  static ManageChannelSubscriptionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ManageChannelSubscriptionRequest>(create);
  static ManageChannelSubscriptionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get channel => $_getSZ(0);
  @$pb.TagNumber(1)
  set channel($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChannel() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannel() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get user => $_getSZ(1);
  @$pb.TagNumber(2)
  set user($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearUser() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get token => $_getSZ(2);
  @$pb.TagNumber(3)
  set token($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearToken() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get accept => $_getBF(3);
  @$pb.TagNumber(4)
  set accept($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAccept() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccept() => clearField(4);
}

class ChannelSubscriptionList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelSubscriptionList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..pc<ChannelSubscription>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subscriptions', $pb.PbFieldType.PM, subBuilder: ChannelSubscription.create)
    ..hasRequiredFields = false
  ;

  ChannelSubscriptionList._() : super();
  factory ChannelSubscriptionList({
    $core.Iterable<ChannelSubscription>? subscriptions,
  }) {
    final _result = create();
    if (subscriptions != null) {
      _result.subscriptions.addAll(subscriptions);
    }
    return _result;
  }
  factory ChannelSubscriptionList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelSubscriptionList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelSubscriptionList clone() => ChannelSubscriptionList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelSubscriptionList copyWith(void Function(ChannelSubscriptionList) updates) => super.copyWith((message) => updates(message as ChannelSubscriptionList)) as ChannelSubscriptionList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelSubscriptionList create() => ChannelSubscriptionList._();
  ChannelSubscriptionList createEmptyInstance() => create();
  static $pb.PbList<ChannelSubscriptionList> createRepeated() => $pb.PbList<ChannelSubscriptionList>();
  @$core.pragma('dart2js:noInline')
  static ChannelSubscriptionList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelSubscriptionList>(create);
  static ChannelSubscriptionList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ChannelSubscription> get subscriptions => $_getList(0);
}

class ChannelSubscription extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelSubscription', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOM<Channel>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channel', subBuilder: Channel.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..e<ChannelOrGroupInviteStatus>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: ChannelOrGroupInviteStatus.pending, valueOf: ChannelOrGroupInviteStatus.valueOf, enumValues: ChannelOrGroupInviteStatus.values)
    ..hasRequiredFields = false
  ;

  ChannelSubscription._() : super();
  factory ChannelSubscription({
    $core.String? id,
    Channel? channel,
    $core.String? user,
    $core.String? token,
    ChannelOrGroupInviteStatus? status,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (channel != null) {
      _result.channel = channel;
    }
    if (user != null) {
      _result.user = user;
    }
    if (token != null) {
      _result.token = token;
    }
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory ChannelSubscription.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelSubscription.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelSubscription clone() => ChannelSubscription()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelSubscription copyWith(void Function(ChannelSubscription) updates) => super.copyWith((message) => updates(message as ChannelSubscription)) as ChannelSubscription; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelSubscription create() => ChannelSubscription._();
  ChannelSubscription createEmptyInstance() => create();
  static $pb.PbList<ChannelSubscription> createRepeated() => $pb.PbList<ChannelSubscription>();
  @$core.pragma('dart2js:noInline')
  static ChannelSubscription getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelSubscription>(create);
  static ChannelSubscription? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  Channel get channel => $_getN(1);
  @$pb.TagNumber(2)
  set channel(Channel v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasChannel() => $_has(1);
  @$pb.TagNumber(2)
  void clearChannel() => clearField(2);
  @$pb.TagNumber(2)
  Channel ensureChannel() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get user => $_getSZ(2);
  @$pb.TagNumber(3)
  set user($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUser() => $_has(2);
  @$pb.TagNumber(3)
  void clearUser() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get token => $_getSZ(3);
  @$pb.TagNumber(4)
  set token($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearToken() => clearField(4);

  @$pb.TagNumber(5)
  ChannelOrGroupInviteStatus get status => $_getN(4);
  @$pb.TagNumber(5)
  set status(ChannelOrGroupInviteStatus v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => clearField(5);
}

class RevokeGroupInviteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RevokeGroupInviteRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inviteId', protoName: 'inviteId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'admin')
    ..hasRequiredFields = false
  ;

  RevokeGroupInviteRequest._() : super();
  factory RevokeGroupInviteRequest({
    $core.String? inviteId,
    $core.String? token,
    $core.String? admin,
  }) {
    final _result = create();
    if (inviteId != null) {
      _result.inviteId = inviteId;
    }
    if (token != null) {
      _result.token = token;
    }
    if (admin != null) {
      _result.admin = admin;
    }
    return _result;
  }
  factory RevokeGroupInviteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RevokeGroupInviteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RevokeGroupInviteRequest clone() => RevokeGroupInviteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RevokeGroupInviteRequest copyWith(void Function(RevokeGroupInviteRequest) updates) => super.copyWith((message) => updates(message as RevokeGroupInviteRequest)) as RevokeGroupInviteRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RevokeGroupInviteRequest create() => RevokeGroupInviteRequest._();
  RevokeGroupInviteRequest createEmptyInstance() => create();
  static $pb.PbList<RevokeGroupInviteRequest> createRepeated() => $pb.PbList<RevokeGroupInviteRequest>();
  @$core.pragma('dart2js:noInline')
  static RevokeGroupInviteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RevokeGroupInviteRequest>(create);
  static RevokeGroupInviteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get inviteId => $_getSZ(0);
  @$pb.TagNumber(1)
  set inviteId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInviteId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInviteId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get admin => $_getSZ(2);
  @$pb.TagNumber(3)
  set admin($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAdmin() => $_has(2);
  @$pb.TagNumber(3)
  void clearAdmin() => clearField(3);
}

class ChannelSubscriptionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelSubscriptionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channel')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user')
    ..hasRequiredFields = false
  ;

  ChannelSubscriptionRequest._() : super();
  factory ChannelSubscriptionRequest({
    $core.String? channel,
    $core.String? user,
  }) {
    final _result = create();
    if (channel != null) {
      _result.channel = channel;
    }
    if (user != null) {
      _result.user = user;
    }
    return _result;
  }
  factory ChannelSubscriptionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelSubscriptionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelSubscriptionRequest clone() => ChannelSubscriptionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelSubscriptionRequest copyWith(void Function(ChannelSubscriptionRequest) updates) => super.copyWith((message) => updates(message as ChannelSubscriptionRequest)) as ChannelSubscriptionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelSubscriptionRequest create() => ChannelSubscriptionRequest._();
  ChannelSubscriptionRequest createEmptyInstance() => create();
  static $pb.PbList<ChannelSubscriptionRequest> createRepeated() => $pb.PbList<ChannelSubscriptionRequest>();
  @$core.pragma('dart2js:noInline')
  static ChannelSubscriptionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelSubscriptionRequest>(create);
  static ChannelSubscriptionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get channel => $_getSZ(0);
  @$pb.TagNumber(1)
  set channel($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChannel() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannel() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get user => $_getSZ(1);
  @$pb.TagNumber(2)
  set user($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearUser() => clearField(2);
}

class GroupInviteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GroupInviteRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'group')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user')
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channels')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'admin')
    ..hasRequiredFields = false
  ;

  GroupInviteRequest._() : super();
  factory GroupInviteRequest({
    $core.String? group,
    $core.String? user,
    $core.Iterable<$core.String>? channels,
    $core.String? admin,
  }) {
    final _result = create();
    if (group != null) {
      _result.group = group;
    }
    if (user != null) {
      _result.user = user;
    }
    if (channels != null) {
      _result.channels.addAll(channels);
    }
    if (admin != null) {
      _result.admin = admin;
    }
    return _result;
  }
  factory GroupInviteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupInviteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupInviteRequest clone() => GroupInviteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupInviteRequest copyWith(void Function(GroupInviteRequest) updates) => super.copyWith((message) => updates(message as GroupInviteRequest)) as GroupInviteRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GroupInviteRequest create() => GroupInviteRequest._();
  GroupInviteRequest createEmptyInstance() => create();
  static $pb.PbList<GroupInviteRequest> createRepeated() => $pb.PbList<GroupInviteRequest>();
  @$core.pragma('dart2js:noInline')
  static GroupInviteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupInviteRequest>(create);
  static GroupInviteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get group => $_getSZ(0);
  @$pb.TagNumber(1)
  set group($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroup() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroup() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get user => $_getSZ(1);
  @$pb.TagNumber(2)
  set user($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearUser() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get channels => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get admin => $_getSZ(3);
  @$pb.TagNumber(4)
  set admin($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAdmin() => $_has(3);
  @$pb.TagNumber(4)
  void clearAdmin() => clearField(4);
}

class ManageGroupInviteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ManageGroupInviteRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inviteId', protoName: 'inviteId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accept')
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channels')
    ..hasRequiredFields = false
  ;

  ManageGroupInviteRequest._() : super();
  factory ManageGroupInviteRequest({
    $core.String? inviteId,
    $core.String? token,
    $core.bool? accept,
    $core.Iterable<$core.String>? channels,
  }) {
    final _result = create();
    if (inviteId != null) {
      _result.inviteId = inviteId;
    }
    if (token != null) {
      _result.token = token;
    }
    if (accept != null) {
      _result.accept = accept;
    }
    if (channels != null) {
      _result.channels.addAll(channels);
    }
    return _result;
  }
  factory ManageGroupInviteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ManageGroupInviteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ManageGroupInviteRequest clone() => ManageGroupInviteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ManageGroupInviteRequest copyWith(void Function(ManageGroupInviteRequest) updates) => super.copyWith((message) => updates(message as ManageGroupInviteRequest)) as ManageGroupInviteRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ManageGroupInviteRequest create() => ManageGroupInviteRequest._();
  ManageGroupInviteRequest createEmptyInstance() => create();
  static $pb.PbList<ManageGroupInviteRequest> createRepeated() => $pb.PbList<ManageGroupInviteRequest>();
  @$core.pragma('dart2js:noInline')
  static ManageGroupInviteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ManageGroupInviteRequest>(create);
  static ManageGroupInviteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get inviteId => $_getSZ(0);
  @$pb.TagNumber(1)
  set inviteId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInviteId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInviteId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get accept => $_getBF(2);
  @$pb.TagNumber(3)
  set accept($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccept() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccept() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get channels => $_getList(3);
}

class GroupList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GroupList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..pc<Group>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'groups', $pb.PbFieldType.PM, subBuilder: Group.create)
    ..hasRequiredFields = false
  ;

  GroupList._() : super();
  factory GroupList({
    $core.Iterable<Group>? groups,
  }) {
    final _result = create();
    if (groups != null) {
      _result.groups.addAll(groups);
    }
    return _result;
  }
  factory GroupList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupList clone() => GroupList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupList copyWith(void Function(GroupList) updates) => super.copyWith((message) => updates(message as GroupList)) as GroupList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GroupList create() => GroupList._();
  GroupList createEmptyInstance() => create();
  static $pb.PbList<GroupList> createRepeated() => $pb.PbList<GroupList>();
  @$core.pragma('dart2js:noInline')
  static GroupList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupList>(create);
  static GroupList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Group> get groups => $_getList(0);
}

class Channel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Channel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..pc<Subscriber>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subscribers', $pb.PbFieldType.PM, subBuilder: Subscriber.create)
    ..pPS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'muted')
    ..e<ChannelType>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: ChannelType.public, valueOf: ChannelType.valueOf, enumValues: ChannelType.values)
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'owner')
    ..aOM<$10.Timestamp>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'created', subBuilder: $10.Timestamp.create)
    ..aOM<$10.Timestamp>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updated', subBuilder: $10.Timestamp.create)
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'group')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'icon')
    ..hasRequiredFields = false
  ;

  Channel._() : super();
  factory Channel({
    $core.String? name,
    $core.String? description,
    $core.Iterable<Subscriber>? subscribers,
    $core.Iterable<$core.String>? muted,
    ChannelType? type,
    $core.String? owner,
    $10.Timestamp? created,
    $10.Timestamp? updated,
    $core.String? id,
    $core.String? group,
    $core.String? icon,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (subscribers != null) {
      _result.subscribers.addAll(subscribers);
    }
    if (muted != null) {
      _result.muted.addAll(muted);
    }
    if (type != null) {
      _result.type = type;
    }
    if (owner != null) {
      _result.owner = owner;
    }
    if (created != null) {
      _result.created = created;
    }
    if (updated != null) {
      _result.updated = updated;
    }
    if (id != null) {
      _result.id = id;
    }
    if (group != null) {
      _result.group = group;
    }
    if (icon != null) {
      _result.icon = icon;
    }
    return _result;
  }
  factory Channel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Channel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Channel clone() => Channel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Channel copyWith(void Function(Channel) updates) => super.copyWith((message) => updates(message as Channel)) as Channel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Channel create() => Channel._();
  Channel createEmptyInstance() => create();
  static $pb.PbList<Channel> createRepeated() => $pb.PbList<Channel>();
  @$core.pragma('dart2js:noInline')
  static Channel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Channel>(create);
  static Channel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(6)
  $core.List<Subscriber> get subscribers => $_getList(2);

  @$pb.TagNumber(9)
  $core.List<$core.String> get muted => $_getList(3);

  @$pb.TagNumber(10)
  ChannelType get type => $_getN(4);
  @$pb.TagNumber(10)
  set type(ChannelType v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(10)
  void clearType() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get owner => $_getSZ(5);
  @$pb.TagNumber(11)
  set owner($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(11)
  $core.bool hasOwner() => $_has(5);
  @$pb.TagNumber(11)
  void clearOwner() => clearField(11);

  @$pb.TagNumber(12)
  $10.Timestamp get created => $_getN(6);
  @$pb.TagNumber(12)
  set created($10.Timestamp v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasCreated() => $_has(6);
  @$pb.TagNumber(12)
  void clearCreated() => clearField(12);
  @$pb.TagNumber(12)
  $10.Timestamp ensureCreated() => $_ensure(6);

  @$pb.TagNumber(13)
  $10.Timestamp get updated => $_getN(7);
  @$pb.TagNumber(13)
  set updated($10.Timestamp v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasUpdated() => $_has(7);
  @$pb.TagNumber(13)
  void clearUpdated() => clearField(13);
  @$pb.TagNumber(13)
  $10.Timestamp ensureUpdated() => $_ensure(7);

  @$pb.TagNumber(14)
  $core.String get id => $_getSZ(8);
  @$pb.TagNumber(14)
  set id($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(14)
  $core.bool hasId() => $_has(8);
  @$pb.TagNumber(14)
  void clearId() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get group => $_getSZ(9);
  @$pb.TagNumber(15)
  set group($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(15)
  $core.bool hasGroup() => $_has(9);
  @$pb.TagNumber(15)
  void clearGroup() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get icon => $_getSZ(10);
  @$pb.TagNumber(16)
  set icon($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(16)
  $core.bool hasIcon() => $_has(10);
  @$pb.TagNumber(16)
  void clearIcon() => clearField(16);
}

class ChannelList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..pc<Channel>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channels', $pb.PbFieldType.PM, subBuilder: Channel.create)
    ..hasRequiredFields = false
  ;

  ChannelList._() : super();
  factory ChannelList({
    $core.Iterable<Channel>? channels,
  }) {
    final _result = create();
    if (channels != null) {
      _result.channels.addAll(channels);
    }
    return _result;
  }
  factory ChannelList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelList clone() => ChannelList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelList copyWith(void Function(ChannelList) updates) => super.copyWith((message) => updates(message as ChannelList)) as ChannelList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelList create() => ChannelList._();
  ChannelList createEmptyInstance() => create();
  static $pb.PbList<ChannelList> createRepeated() => $pb.PbList<ChannelList>();
  @$core.pragma('dart2js:noInline')
  static ChannelList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelList>(create);
  static ChannelList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Channel> get channels => $_getList(0);
}

class GroupInvite extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GroupInvite', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channels')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'admin')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..e<ChannelOrGroupInviteStatus>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: ChannelOrGroupInviteStatus.pending, valueOf: ChannelOrGroupInviteStatus.valueOf, enumValues: ChannelOrGroupInviteStatus.values)
    ..aOM<Group>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'group', subBuilder: Group.create)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user')
    ..hasRequiredFields = false
  ;

  GroupInvite._() : super();
  factory GroupInvite({
    $core.Iterable<$core.String>? channels,
    $core.String? admin,
    $core.String? token,
    $core.String? id,
    ChannelOrGroupInviteStatus? status,
    Group? group,
    $core.String? user,
  }) {
    final _result = create();
    if (channels != null) {
      _result.channels.addAll(channels);
    }
    if (admin != null) {
      _result.admin = admin;
    }
    if (token != null) {
      _result.token = token;
    }
    if (id != null) {
      _result.id = id;
    }
    if (status != null) {
      _result.status = status;
    }
    if (group != null) {
      _result.group = group;
    }
    if (user != null) {
      _result.user = user;
    }
    return _result;
  }
  factory GroupInvite.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupInvite.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupInvite clone() => GroupInvite()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupInvite copyWith(void Function(GroupInvite) updates) => super.copyWith((message) => updates(message as GroupInvite)) as GroupInvite; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GroupInvite create() => GroupInvite._();
  GroupInvite createEmptyInstance() => create();
  static $pb.PbList<GroupInvite> createRepeated() => $pb.PbList<GroupInvite>();
  @$core.pragma('dart2js:noInline')
  static GroupInvite getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupInvite>(create);
  static GroupInvite? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get channels => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get admin => $_getSZ(1);
  @$pb.TagNumber(2)
  set admin($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAdmin() => $_has(1);
  @$pb.TagNumber(2)
  void clearAdmin() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get token => $_getSZ(2);
  @$pb.TagNumber(3)
  set token($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearToken() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get id => $_getSZ(3);
  @$pb.TagNumber(4)
  set id($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasId() => $_has(3);
  @$pb.TagNumber(4)
  void clearId() => clearField(4);

  @$pb.TagNumber(5)
  ChannelOrGroupInviteStatus get status => $_getN(4);
  @$pb.TagNumber(5)
  set status(ChannelOrGroupInviteStatus v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => clearField(5);

  @$pb.TagNumber(6)
  Group get group => $_getN(5);
  @$pb.TagNumber(6)
  set group(Group v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasGroup() => $_has(5);
  @$pb.TagNumber(6)
  void clearGroup() => clearField(6);
  @$pb.TagNumber(6)
  Group ensureGroup() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.String get user => $_getSZ(6);
  @$pb.TagNumber(7)
  set user($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasUser() => $_has(6);
  @$pb.TagNumber(7)
  void clearUser() => clearField(7);
}

class GroupInviteList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GroupInviteList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..pc<GroupInvite>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'invites', $pb.PbFieldType.PM, subBuilder: GroupInvite.create)
    ..hasRequiredFields = false
  ;

  GroupInviteList._() : super();
  factory GroupInviteList({
    $core.Iterable<GroupInvite>? invites,
  }) {
    final _result = create();
    if (invites != null) {
      _result.invites.addAll(invites);
    }
    return _result;
  }
  factory GroupInviteList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupInviteList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupInviteList clone() => GroupInviteList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupInviteList copyWith(void Function(GroupInviteList) updates) => super.copyWith((message) => updates(message as GroupInviteList)) as GroupInviteList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GroupInviteList create() => GroupInviteList._();
  GroupInviteList createEmptyInstance() => create();
  static $pb.PbList<GroupInviteList> createRepeated() => $pb.PbList<GroupInviteList>();
  @$core.pragma('dart2js:noInline')
  static GroupInviteList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupInviteList>(create);
  static GroupInviteList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GroupInvite> get invites => $_getList(0);
}

class CreateChannelRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateChannelRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'icon', $pb.PbFieldType.OY)
    ..pPS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tags')
    ..pc<Subscriber>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subscribers', $pb.PbFieldType.PM, subBuilder: Subscriber.create)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'owner')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'group')
    ..e<ChannelType>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: ChannelType.public, valueOf: ChannelType.valueOf, enumValues: ChannelType.values)
    ..hasRequiredFields = false
  ;

  CreateChannelRequest._() : super();
  factory CreateChannelRequest({
    $core.String? name,
    $core.String? description,
    $core.List<$core.int>? icon,
    $core.Iterable<$core.String>? tags,
    $core.Iterable<Subscriber>? subscribers,
    $core.String? owner,
    $core.String? group,
    ChannelType? type,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (icon != null) {
      _result.icon = icon;
    }
    if (tags != null) {
      _result.tags.addAll(tags);
    }
    if (subscribers != null) {
      _result.subscribers.addAll(subscribers);
    }
    if (owner != null) {
      _result.owner = owner;
    }
    if (group != null) {
      _result.group = group;
    }
    if (type != null) {
      _result.type = type;
    }
    return _result;
  }
  factory CreateChannelRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateChannelRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateChannelRequest clone() => CreateChannelRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateChannelRequest copyWith(void Function(CreateChannelRequest) updates) => super.copyWith((message) => updates(message as CreateChannelRequest)) as CreateChannelRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateChannelRequest create() => CreateChannelRequest._();
  CreateChannelRequest createEmptyInstance() => create();
  static $pb.PbList<CreateChannelRequest> createRepeated() => $pb.PbList<CreateChannelRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateChannelRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateChannelRequest>(create);
  static CreateChannelRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get icon => $_getN(2);
  @$pb.TagNumber(3)
  set icon($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIcon() => $_has(2);
  @$pb.TagNumber(3)
  void clearIcon() => clearField(3);

  @$pb.TagNumber(5)
  $core.List<$core.String> get tags => $_getList(3);

  @$pb.TagNumber(6)
  $core.List<Subscriber> get subscribers => $_getList(4);

  @$pb.TagNumber(7)
  $core.String get owner => $_getSZ(5);
  @$pb.TagNumber(7)
  set owner($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasOwner() => $_has(5);
  @$pb.TagNumber(7)
  void clearOwner() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get group => $_getSZ(6);
  @$pb.TagNumber(8)
  set group($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasGroup() => $_has(6);
  @$pb.TagNumber(8)
  void clearGroup() => clearField(8);

  @$pb.TagNumber(9)
  ChannelType get type => $_getN(7);
  @$pb.TagNumber(9)
  set type(ChannelType v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasType() => $_has(7);
  @$pb.TagNumber(9)
  void clearType() => clearField(9);
}

class Group extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Group', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'icon')
    ..pc<Channel>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channels', $pb.PbFieldType.PM, subBuilder: Channel.create)
    ..pc<Subscriber>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subscribers', $pb.PbFieldType.PM, subBuilder: Subscriber.create)
    ..pPS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'admins')
    ..pPS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'banned')
    ..pPS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'muted')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'link')
    ..pPS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tags')
    ..aOM<$10.Timestamp>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'created', subBuilder: $10.Timestamp.create)
    ..aOM<$10.Timestamp>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updated', subBuilder: $10.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Group._() : super();
  factory Group({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $core.String? icon,
    $core.Iterable<Channel>? channels,
    $core.Iterable<Subscriber>? subscribers,
    $core.Iterable<$core.String>? admins,
    $core.Iterable<$core.String>? banned,
    $core.Iterable<$core.String>? muted,
    $core.String? link,
    $core.Iterable<$core.String>? tags,
    $10.Timestamp? created,
    $10.Timestamp? updated,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (icon != null) {
      _result.icon = icon;
    }
    if (channels != null) {
      _result.channels.addAll(channels);
    }
    if (subscribers != null) {
      _result.subscribers.addAll(subscribers);
    }
    if (admins != null) {
      _result.admins.addAll(admins);
    }
    if (banned != null) {
      _result.banned.addAll(banned);
    }
    if (muted != null) {
      _result.muted.addAll(muted);
    }
    if (link != null) {
      _result.link = link;
    }
    if (tags != null) {
      _result.tags.addAll(tags);
    }
    if (created != null) {
      _result.created = created;
    }
    if (updated != null) {
      _result.updated = updated;
    }
    return _result;
  }
  factory Group.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Group.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Group clone() => Group()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Group copyWith(void Function(Group) updates) => super.copyWith((message) => updates(message as Group)) as Group; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Group create() => Group._();
  Group createEmptyInstance() => create();
  static $pb.PbList<Group> createRepeated() => $pb.PbList<Group>();
  @$core.pragma('dart2js:noInline')
  static Group getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Group>(create);
  static Group? _defaultInstance;

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
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get icon => $_getSZ(3);
  @$pb.TagNumber(4)
  set icon($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIcon() => $_has(3);
  @$pb.TagNumber(4)
  void clearIcon() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<Channel> get channels => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<Subscriber> get subscribers => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<$core.String> get admins => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<$core.String> get banned => $_getList(7);

  @$pb.TagNumber(9)
  $core.List<$core.String> get muted => $_getList(8);

  @$pb.TagNumber(10)
  $core.String get link => $_getSZ(9);
  @$pb.TagNumber(10)
  set link($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasLink() => $_has(9);
  @$pb.TagNumber(10)
  void clearLink() => clearField(10);

  @$pb.TagNumber(11)
  $core.List<$core.String> get tags => $_getList(10);

  @$pb.TagNumber(13)
  $10.Timestamp get created => $_getN(11);
  @$pb.TagNumber(13)
  set created($10.Timestamp v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasCreated() => $_has(11);
  @$pb.TagNumber(13)
  void clearCreated() => clearField(13);
  @$pb.TagNumber(13)
  $10.Timestamp ensureCreated() => $_ensure(11);

  @$pb.TagNumber(14)
  $10.Timestamp get updated => $_getN(12);
  @$pb.TagNumber(14)
  set updated($10.Timestamp v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasUpdated() => $_has(12);
  @$pb.TagNumber(14)
  void clearUpdated() => clearField(14);
  @$pb.TagNumber(14)
  $10.Timestamp ensureUpdated() => $_ensure(12);
}

class Subscriber extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Subscriber', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avatar')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'online')
    ..hasRequiredFields = false
  ;

  Subscriber._() : super();
  factory Subscriber({
    $core.String? id,
    $core.String? name,
    $core.String? avatar,
    $core.bool? online,
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
    return _result;
  }
  factory Subscriber.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Subscriber.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Subscriber clone() => Subscriber()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Subscriber copyWith(void Function(Subscriber) updates) => super.copyWith((message) => updates(message as Subscriber)) as Subscriber; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Subscriber create() => Subscriber._();
  Subscriber createEmptyInstance() => create();
  static $pb.PbList<Subscriber> createRepeated() => $pb.PbList<Subscriber>();
  @$core.pragma('dart2js:noInline')
  static Subscriber getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Subscriber>(create);
  static Subscriber? _defaultInstance;

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
}

class CreateGroupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateGroupRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'icon', $pb.PbFieldType.OY)
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tags')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'admin')
    ..hasRequiredFields = false
  ;

  CreateGroupRequest._() : super();
  factory CreateGroupRequest({
    $core.String? name,
    $core.String? description,
    $core.List<$core.int>? icon,
    $core.Iterable<$core.String>? tags,
    $core.String? admin,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (icon != null) {
      _result.icon = icon;
    }
    if (tags != null) {
      _result.tags.addAll(tags);
    }
    if (admin != null) {
      _result.admin = admin;
    }
    return _result;
  }
  factory CreateGroupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateGroupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateGroupRequest clone() => CreateGroupRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateGroupRequest copyWith(void Function(CreateGroupRequest) updates) => super.copyWith((message) => updates(message as CreateGroupRequest)) as CreateGroupRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateGroupRequest create() => CreateGroupRequest._();
  CreateGroupRequest createEmptyInstance() => create();
  static $pb.PbList<CreateGroupRequest> createRepeated() => $pb.PbList<CreateGroupRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateGroupRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateGroupRequest>(create);
  static CreateGroupRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get icon => $_getN(2);
  @$pb.TagNumber(3)
  set icon($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIcon() => $_has(2);
  @$pb.TagNumber(3)
  void clearIcon() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get tags => $_getList(3);

  @$pb.TagNumber(6)
  $core.String get admin => $_getSZ(4);
  @$pb.TagNumber(6)
  set admin($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasAdmin() => $_has(4);
  @$pb.TagNumber(6)
  void clearAdmin() => clearField(6);
}

