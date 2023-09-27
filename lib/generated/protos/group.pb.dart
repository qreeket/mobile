//
//  Generated code. Do not modify.
//  source: group.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pb.dart' as $0;
import 'group.pbenum.dart';

export 'group.pbenum.dart';

class DeleteGroupRequest extends $pb.GeneratedMessage {
  factory DeleteGroupRequest({
    $core.String? group,
    $core.String? admin,
  }) {
    final $result = create();
    if (group != null) {
      $result.group = group;
    }
    if (admin != null) {
      $result.admin = admin;
    }
    return $result;
  }
  DeleteGroupRequest._() : super();
  factory DeleteGroupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteGroupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteGroupRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'group')
    ..aOS(2, _omitFieldNames ? '' : 'admin')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteGroupRequest clone() => DeleteGroupRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteGroupRequest copyWith(void Function(DeleteGroupRequest) updates) => super.copyWith((message) => updates(message as DeleteGroupRequest)) as DeleteGroupRequest;

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
  factory ManageAdminRequest({
    $core.String? group,
    $core.String? user,
    $core.String? admin,
  }) {
    final $result = create();
    if (group != null) {
      $result.group = group;
    }
    if (user != null) {
      $result.user = user;
    }
    if (admin != null) {
      $result.admin = admin;
    }
    return $result;
  }
  ManageAdminRequest._() : super();
  factory ManageAdminRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ManageAdminRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ManageAdminRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'group')
    ..aOS(2, _omitFieldNames ? '' : 'user')
    ..aOS(3, _omitFieldNames ? '' : 'admin')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ManageAdminRequest clone() => ManageAdminRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ManageAdminRequest copyWith(void Function(ManageAdminRequest) updates) => super.copyWith((message) => updates(message as ManageAdminRequest)) as ManageAdminRequest;

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
  factory ManageGroupOrChannel({
    $core.String? user,
    $core.String? channel,
    $core.String? group,
  }) {
    final $result = create();
    if (user != null) {
      $result.user = user;
    }
    if (channel != null) {
      $result.channel = channel;
    }
    if (group != null) {
      $result.group = group;
    }
    return $result;
  }
  ManageGroupOrChannel._() : super();
  factory ManageGroupOrChannel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ManageGroupOrChannel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ManageGroupOrChannel_Payload> _ManageGroupOrChannel_PayloadByTag = {
    2 : ManageGroupOrChannel_Payload.channel,
    3 : ManageGroupOrChannel_Payload.group,
    0 : ManageGroupOrChannel_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ManageGroupOrChannel', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOS(1, _omitFieldNames ? '' : 'user')
    ..aOS(2, _omitFieldNames ? '' : 'channel')
    ..aOS(3, _omitFieldNames ? '' : 'group')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ManageGroupOrChannel clone() => ManageGroupOrChannel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ManageGroupOrChannel copyWith(void Function(ManageGroupOrChannel) updates) => super.copyWith((message) => updates(message as ManageGroupOrChannel)) as ManageGroupOrChannel;

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
  factory ManageGroupOrChannelRequest({
    $core.String? channel,
    $core.String? group,
    $core.String? user,
    $core.String? admin,
  }) {
    final $result = create();
    if (channel != null) {
      $result.channel = channel;
    }
    if (group != null) {
      $result.group = group;
    }
    if (user != null) {
      $result.user = user;
    }
    if (admin != null) {
      $result.admin = admin;
    }
    return $result;
  }
  ManageGroupOrChannelRequest._() : super();
  factory ManageGroupOrChannelRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ManageGroupOrChannelRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ManageGroupOrChannelRequest_Payload> _ManageGroupOrChannelRequest_PayloadByTag = {
    1 : ManageGroupOrChannelRequest_Payload.channel,
    2 : ManageGroupOrChannelRequest_Payload.group,
    0 : ManageGroupOrChannelRequest_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ManageGroupOrChannelRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOS(1, _omitFieldNames ? '' : 'channel')
    ..aOS(2, _omitFieldNames ? '' : 'group')
    ..aOS(3, _omitFieldNames ? '' : 'user')
    ..aOS(4, _omitFieldNames ? '' : 'admin')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ManageGroupOrChannelRequest clone() => ManageGroupOrChannelRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ManageGroupOrChannelRequest copyWith(void Function(ManageGroupOrChannelRequest) updates) => super.copyWith((message) => updates(message as ManageGroupOrChannelRequest)) as ManageGroupOrChannelRequest;

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
  factory ManageChannelSubscriptionRequest({
    $core.String? channel,
    $core.String? user,
    $core.String? token,
    $core.bool? accept,
  }) {
    final $result = create();
    if (channel != null) {
      $result.channel = channel;
    }
    if (user != null) {
      $result.user = user;
    }
    if (token != null) {
      $result.token = token;
    }
    if (accept != null) {
      $result.accept = accept;
    }
    return $result;
  }
  ManageChannelSubscriptionRequest._() : super();
  factory ManageChannelSubscriptionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ManageChannelSubscriptionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ManageChannelSubscriptionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'channel')
    ..aOS(2, _omitFieldNames ? '' : 'user')
    ..aOS(3, _omitFieldNames ? '' : 'token')
    ..aOB(4, _omitFieldNames ? '' : 'accept')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ManageChannelSubscriptionRequest clone() => ManageChannelSubscriptionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ManageChannelSubscriptionRequest copyWith(void Function(ManageChannelSubscriptionRequest) updates) => super.copyWith((message) => updates(message as ManageChannelSubscriptionRequest)) as ManageChannelSubscriptionRequest;

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
  factory ChannelSubscriptionList({
    $core.Iterable<ChannelSubscription>? subscriptions,
  }) {
    final $result = create();
    if (subscriptions != null) {
      $result.subscriptions.addAll(subscriptions);
    }
    return $result;
  }
  ChannelSubscriptionList._() : super();
  factory ChannelSubscriptionList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelSubscriptionList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChannelSubscriptionList', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..pc<ChannelSubscription>(1, _omitFieldNames ? '' : 'subscriptions', $pb.PbFieldType.PM, subBuilder: ChannelSubscription.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelSubscriptionList clone() => ChannelSubscriptionList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelSubscriptionList copyWith(void Function(ChannelSubscriptionList) updates) => super.copyWith((message) => updates(message as ChannelSubscriptionList)) as ChannelSubscriptionList;

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
  factory ChannelSubscription({
    $core.String? id,
    Channel? channel,
    $core.String? user,
    $core.String? token,
    ChannelOrGroupInviteStatus? status,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (channel != null) {
      $result.channel = channel;
    }
    if (user != null) {
      $result.user = user;
    }
    if (token != null) {
      $result.token = token;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  ChannelSubscription._() : super();
  factory ChannelSubscription.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelSubscription.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChannelSubscription', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<Channel>(2, _omitFieldNames ? '' : 'channel', subBuilder: Channel.create)
    ..aOS(3, _omitFieldNames ? '' : 'user')
    ..aOS(4, _omitFieldNames ? '' : 'token')
    ..e<ChannelOrGroupInviteStatus>(5, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: ChannelOrGroupInviteStatus.pending, valueOf: ChannelOrGroupInviteStatus.valueOf, enumValues: ChannelOrGroupInviteStatus.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelSubscription clone() => ChannelSubscription()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelSubscription copyWith(void Function(ChannelSubscription) updates) => super.copyWith((message) => updates(message as ChannelSubscription)) as ChannelSubscription;

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
  factory RevokeGroupInviteRequest({
    $core.String? inviteId,
    $core.String? token,
    $core.String? admin,
  }) {
    final $result = create();
    if (inviteId != null) {
      $result.inviteId = inviteId;
    }
    if (token != null) {
      $result.token = token;
    }
    if (admin != null) {
      $result.admin = admin;
    }
    return $result;
  }
  RevokeGroupInviteRequest._() : super();
  factory RevokeGroupInviteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RevokeGroupInviteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RevokeGroupInviteRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'inviteId', protoName: 'inviteId')
    ..aOS(2, _omitFieldNames ? '' : 'token')
    ..aOS(3, _omitFieldNames ? '' : 'admin')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RevokeGroupInviteRequest clone() => RevokeGroupInviteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RevokeGroupInviteRequest copyWith(void Function(RevokeGroupInviteRequest) updates) => super.copyWith((message) => updates(message as RevokeGroupInviteRequest)) as RevokeGroupInviteRequest;

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
  factory ChannelSubscriptionRequest({
    $core.String? channel,
    $core.String? user,
  }) {
    final $result = create();
    if (channel != null) {
      $result.channel = channel;
    }
    if (user != null) {
      $result.user = user;
    }
    return $result;
  }
  ChannelSubscriptionRequest._() : super();
  factory ChannelSubscriptionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelSubscriptionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChannelSubscriptionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'channel')
    ..aOS(2, _omitFieldNames ? '' : 'user')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelSubscriptionRequest clone() => ChannelSubscriptionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelSubscriptionRequest copyWith(void Function(ChannelSubscriptionRequest) updates) => super.copyWith((message) => updates(message as ChannelSubscriptionRequest)) as ChannelSubscriptionRequest;

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
  factory GroupInviteRequest({
    $core.String? group,
    $core.String? user,
    $core.Iterable<$core.String>? channels,
    $core.String? admin,
  }) {
    final $result = create();
    if (group != null) {
      $result.group = group;
    }
    if (user != null) {
      $result.user = user;
    }
    if (channels != null) {
      $result.channels.addAll(channels);
    }
    if (admin != null) {
      $result.admin = admin;
    }
    return $result;
  }
  GroupInviteRequest._() : super();
  factory GroupInviteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupInviteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupInviteRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'group')
    ..aOS(2, _omitFieldNames ? '' : 'user')
    ..pPS(3, _omitFieldNames ? '' : 'channels')
    ..aOS(4, _omitFieldNames ? '' : 'admin')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupInviteRequest clone() => GroupInviteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupInviteRequest copyWith(void Function(GroupInviteRequest) updates) => super.copyWith((message) => updates(message as GroupInviteRequest)) as GroupInviteRequest;

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
  factory ManageGroupInviteRequest({
    $core.String? inviteId,
    $core.String? token,
    $core.bool? accept,
    $core.Iterable<$core.String>? channels,
  }) {
    final $result = create();
    if (inviteId != null) {
      $result.inviteId = inviteId;
    }
    if (token != null) {
      $result.token = token;
    }
    if (accept != null) {
      $result.accept = accept;
    }
    if (channels != null) {
      $result.channels.addAll(channels);
    }
    return $result;
  }
  ManageGroupInviteRequest._() : super();
  factory ManageGroupInviteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ManageGroupInviteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ManageGroupInviteRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'inviteId', protoName: 'inviteId')
    ..aOS(2, _omitFieldNames ? '' : 'token')
    ..aOB(3, _omitFieldNames ? '' : 'accept')
    ..pPS(4, _omitFieldNames ? '' : 'channels')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ManageGroupInviteRequest clone() => ManageGroupInviteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ManageGroupInviteRequest copyWith(void Function(ManageGroupInviteRequest) updates) => super.copyWith((message) => updates(message as ManageGroupInviteRequest)) as ManageGroupInviteRequest;

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
  factory GroupList({
    $core.Iterable<Group>? groups,
  }) {
    final $result = create();
    if (groups != null) {
      $result.groups.addAll(groups);
    }
    return $result;
  }
  GroupList._() : super();
  factory GroupList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupList', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..pc<Group>(1, _omitFieldNames ? '' : 'groups', $pb.PbFieldType.PM, subBuilder: Group.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupList clone() => GroupList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupList copyWith(void Function(GroupList) updates) => super.copyWith((message) => updates(message as GroupList)) as GroupList;

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
  factory Channel({
    $core.String? name,
    $core.String? description,
    $core.Iterable<Subscriber>? subscribers,
    $core.Iterable<$core.String>? muted,
    ChannelType? type,
    $core.String? owner,
    $0.Timestamp? created,
    $0.Timestamp? updated,
    $core.String? id,
    $core.String? group,
    $core.String? icon,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (subscribers != null) {
      $result.subscribers.addAll(subscribers);
    }
    if (muted != null) {
      $result.muted.addAll(muted);
    }
    if (type != null) {
      $result.type = type;
    }
    if (owner != null) {
      $result.owner = owner;
    }
    if (created != null) {
      $result.created = created;
    }
    if (updated != null) {
      $result.updated = updated;
    }
    if (id != null) {
      $result.id = id;
    }
    if (group != null) {
      $result.group = group;
    }
    if (icon != null) {
      $result.icon = icon;
    }
    return $result;
  }
  Channel._() : super();
  factory Channel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Channel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Channel', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..pc<Subscriber>(6, _omitFieldNames ? '' : 'subscribers', $pb.PbFieldType.PM, subBuilder: Subscriber.create)
    ..pPS(9, _omitFieldNames ? '' : 'muted')
    ..e<ChannelType>(10, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: ChannelType.public, valueOf: ChannelType.valueOf, enumValues: ChannelType.values)
    ..aOS(11, _omitFieldNames ? '' : 'owner')
    ..aOM<$0.Timestamp>(12, _omitFieldNames ? '' : 'created', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(13, _omitFieldNames ? '' : 'updated', subBuilder: $0.Timestamp.create)
    ..aOS(14, _omitFieldNames ? '' : 'id')
    ..aOS(15, _omitFieldNames ? '' : 'group')
    ..aOS(16, _omitFieldNames ? '' : 'icon')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Channel clone() => Channel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Channel copyWith(void Function(Channel) updates) => super.copyWith((message) => updates(message as Channel)) as Channel;

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
  $0.Timestamp get created => $_getN(6);
  @$pb.TagNumber(12)
  set created($0.Timestamp v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasCreated() => $_has(6);
  @$pb.TagNumber(12)
  void clearCreated() => clearField(12);
  @$pb.TagNumber(12)
  $0.Timestamp ensureCreated() => $_ensure(6);

  @$pb.TagNumber(13)
  $0.Timestamp get updated => $_getN(7);
  @$pb.TagNumber(13)
  set updated($0.Timestamp v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasUpdated() => $_has(7);
  @$pb.TagNumber(13)
  void clearUpdated() => clearField(13);
  @$pb.TagNumber(13)
  $0.Timestamp ensureUpdated() => $_ensure(7);

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
  factory ChannelList({
    $core.Iterable<Channel>? channels,
  }) {
    final $result = create();
    if (channels != null) {
      $result.channels.addAll(channels);
    }
    return $result;
  }
  ChannelList._() : super();
  factory ChannelList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChannelList', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..pc<Channel>(1, _omitFieldNames ? '' : 'channels', $pb.PbFieldType.PM, subBuilder: Channel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelList clone() => ChannelList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelList copyWith(void Function(ChannelList) updates) => super.copyWith((message) => updates(message as ChannelList)) as ChannelList;

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
  factory GroupInvite({
    $core.Iterable<$core.String>? channels,
    $core.String? admin,
    $core.String? token,
    $core.String? id,
    ChannelOrGroupInviteStatus? status,
    Group? group,
    $core.String? user,
  }) {
    final $result = create();
    if (channels != null) {
      $result.channels.addAll(channels);
    }
    if (admin != null) {
      $result.admin = admin;
    }
    if (token != null) {
      $result.token = token;
    }
    if (id != null) {
      $result.id = id;
    }
    if (status != null) {
      $result.status = status;
    }
    if (group != null) {
      $result.group = group;
    }
    if (user != null) {
      $result.user = user;
    }
    return $result;
  }
  GroupInvite._() : super();
  factory GroupInvite.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupInvite.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupInvite', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'channels')
    ..aOS(2, _omitFieldNames ? '' : 'admin')
    ..aOS(3, _omitFieldNames ? '' : 'token')
    ..aOS(4, _omitFieldNames ? '' : 'id')
    ..e<ChannelOrGroupInviteStatus>(5, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: ChannelOrGroupInviteStatus.pending, valueOf: ChannelOrGroupInviteStatus.valueOf, enumValues: ChannelOrGroupInviteStatus.values)
    ..aOM<Group>(6, _omitFieldNames ? '' : 'group', subBuilder: Group.create)
    ..aOS(7, _omitFieldNames ? '' : 'user')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupInvite clone() => GroupInvite()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupInvite copyWith(void Function(GroupInvite) updates) => super.copyWith((message) => updates(message as GroupInvite)) as GroupInvite;

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
  factory GroupInviteList({
    $core.Iterable<GroupInvite>? invites,
  }) {
    final $result = create();
    if (invites != null) {
      $result.invites.addAll(invites);
    }
    return $result;
  }
  GroupInviteList._() : super();
  factory GroupInviteList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupInviteList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupInviteList', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..pc<GroupInvite>(1, _omitFieldNames ? '' : 'invites', $pb.PbFieldType.PM, subBuilder: GroupInvite.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupInviteList clone() => GroupInviteList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupInviteList copyWith(void Function(GroupInviteList) updates) => super.copyWith((message) => updates(message as GroupInviteList)) as GroupInviteList;

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
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (icon != null) {
      $result.icon = icon;
    }
    if (tags != null) {
      $result.tags.addAll(tags);
    }
    if (subscribers != null) {
      $result.subscribers.addAll(subscribers);
    }
    if (owner != null) {
      $result.owner = owner;
    }
    if (group != null) {
      $result.group = group;
    }
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  CreateChannelRequest._() : super();
  factory CreateChannelRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateChannelRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateChannelRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'icon', $pb.PbFieldType.OY)
    ..pPS(5, _omitFieldNames ? '' : 'tags')
    ..pc<Subscriber>(6, _omitFieldNames ? '' : 'subscribers', $pb.PbFieldType.PM, subBuilder: Subscriber.create)
    ..aOS(7, _omitFieldNames ? '' : 'owner')
    ..aOS(8, _omitFieldNames ? '' : 'group')
    ..e<ChannelType>(9, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: ChannelType.public, valueOf: ChannelType.valueOf, enumValues: ChannelType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateChannelRequest clone() => CreateChannelRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateChannelRequest copyWith(void Function(CreateChannelRequest) updates) => super.copyWith((message) => updates(message as CreateChannelRequest)) as CreateChannelRequest;

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
    $0.Timestamp? created,
    $0.Timestamp? updated,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (icon != null) {
      $result.icon = icon;
    }
    if (channels != null) {
      $result.channels.addAll(channels);
    }
    if (subscribers != null) {
      $result.subscribers.addAll(subscribers);
    }
    if (admins != null) {
      $result.admins.addAll(admins);
    }
    if (banned != null) {
      $result.banned.addAll(banned);
    }
    if (muted != null) {
      $result.muted.addAll(muted);
    }
    if (link != null) {
      $result.link = link;
    }
    if (tags != null) {
      $result.tags.addAll(tags);
    }
    if (created != null) {
      $result.created = created;
    }
    if (updated != null) {
      $result.updated = updated;
    }
    return $result;
  }
  Group._() : super();
  factory Group.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Group.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Group', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOS(4, _omitFieldNames ? '' : 'icon')
    ..pc<Channel>(5, _omitFieldNames ? '' : 'channels', $pb.PbFieldType.PM, subBuilder: Channel.create)
    ..pc<Subscriber>(6, _omitFieldNames ? '' : 'subscribers', $pb.PbFieldType.PM, subBuilder: Subscriber.create)
    ..pPS(7, _omitFieldNames ? '' : 'admins')
    ..pPS(8, _omitFieldNames ? '' : 'banned')
    ..pPS(9, _omitFieldNames ? '' : 'muted')
    ..aOS(10, _omitFieldNames ? '' : 'link')
    ..pPS(11, _omitFieldNames ? '' : 'tags')
    ..aOM<$0.Timestamp>(13, _omitFieldNames ? '' : 'created', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(14, _omitFieldNames ? '' : 'updated', subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Group clone() => Group()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Group copyWith(void Function(Group) updates) => super.copyWith((message) => updates(message as Group)) as Group;

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
  $0.Timestamp get created => $_getN(11);
  @$pb.TagNumber(13)
  set created($0.Timestamp v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasCreated() => $_has(11);
  @$pb.TagNumber(13)
  void clearCreated() => clearField(13);
  @$pb.TagNumber(13)
  $0.Timestamp ensureCreated() => $_ensure(11);

  @$pb.TagNumber(14)
  $0.Timestamp get updated => $_getN(12);
  @$pb.TagNumber(14)
  set updated($0.Timestamp v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasUpdated() => $_has(12);
  @$pb.TagNumber(14)
  void clearUpdated() => clearField(14);
  @$pb.TagNumber(14)
  $0.Timestamp ensureUpdated() => $_ensure(12);
}

class Subscriber extends $pb.GeneratedMessage {
  factory Subscriber({
    $core.String? id,
    $core.String? name,
    $core.String? avatar,
    $core.bool? online,
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
    return $result;
  }
  Subscriber._() : super();
  factory Subscriber.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Subscriber.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Subscriber', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'avatar')
    ..aOB(4, _omitFieldNames ? '' : 'online')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Subscriber clone() => Subscriber()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Subscriber copyWith(void Function(Subscriber) updates) => super.copyWith((message) => updates(message as Subscriber)) as Subscriber;

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
  factory CreateGroupRequest({
    $core.String? name,
    $core.String? description,
    $core.List<$core.int>? icon,
    $core.Iterable<$core.String>? tags,
    $core.String? admin,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (icon != null) {
      $result.icon = icon;
    }
    if (tags != null) {
      $result.tags.addAll(tags);
    }
    if (admin != null) {
      $result.admin = admin;
    }
    return $result;
  }
  CreateGroupRequest._() : super();
  factory CreateGroupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateGroupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateGroupRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'icon', $pb.PbFieldType.OY)
    ..pPS(4, _omitFieldNames ? '' : 'tags')
    ..aOS(6, _omitFieldNames ? '' : 'admin')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateGroupRequest clone() => CreateGroupRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateGroupRequest copyWith(void Function(CreateGroupRequest) updates) => super.copyWith((message) => updates(message as CreateGroupRequest)) as CreateGroupRequest;

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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
