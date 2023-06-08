///
//  Generated code. Do not modify.
//  source: announcement.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'package:protobuf_google/protobuf_google.dart' as $2;
import 'package:protobuf_google/protobuf_google.dart' as $10;

class CreateAnnouncementRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateAnnouncementRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOM<Announcement>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'announcement', subBuilder: Announcement.create)
    ..hasRequiredFields = false
  ;

  CreateAnnouncementRequest._() : super();
  factory CreateAnnouncementRequest({
    Announcement? announcement,
  }) {
    final _result = create();
    if (announcement != null) {
      _result.announcement = announcement;
    }
    return _result;
  }
  factory CreateAnnouncementRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateAnnouncementRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateAnnouncementRequest clone() => CreateAnnouncementRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateAnnouncementRequest copyWith(void Function(CreateAnnouncementRequest) updates) => super.copyWith((message) => updates(message as CreateAnnouncementRequest)) as CreateAnnouncementRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateAnnouncementRequest create() => CreateAnnouncementRequest._();
  CreateAnnouncementRequest createEmptyInstance() => create();
  static $pb.PbList<CreateAnnouncementRequest> createRepeated() => $pb.PbList<CreateAnnouncementRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateAnnouncementRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateAnnouncementRequest>(create);
  static CreateAnnouncementRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Announcement get announcement => $_getN(0);
  @$pb.TagNumber(1)
  set announcement(Announcement v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAnnouncement() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnnouncement() => clearField(1);
  @$pb.TagNumber(1)
  Announcement ensureAnnouncement() => $_ensure(0);
}

class UpdateAnnouncementRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateAnnouncementRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOM<Announcement>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'announcement', subBuilder: Announcement.create)
    ..hasRequiredFields = false
  ;

  UpdateAnnouncementRequest._() : super();
  factory UpdateAnnouncementRequest({
    $core.String? id,
    Announcement? announcement,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (announcement != null) {
      _result.announcement = announcement;
    }
    return _result;
  }
  factory UpdateAnnouncementRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateAnnouncementRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateAnnouncementRequest clone() => UpdateAnnouncementRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateAnnouncementRequest copyWith(void Function(UpdateAnnouncementRequest) updates) => super.copyWith((message) => updates(message as UpdateAnnouncementRequest)) as UpdateAnnouncementRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateAnnouncementRequest create() => UpdateAnnouncementRequest._();
  UpdateAnnouncementRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateAnnouncementRequest> createRepeated() => $pb.PbList<UpdateAnnouncementRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateAnnouncementRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateAnnouncementRequest>(create);
  static UpdateAnnouncementRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  Announcement get announcement => $_getN(1);
  @$pb.TagNumber(2)
  set announcement(Announcement v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAnnouncement() => $_has(1);
  @$pb.TagNumber(2)
  void clearAnnouncement() => clearField(2);
  @$pb.TagNumber(2)
  Announcement ensureAnnouncement() => $_ensure(1);
}

class AnnouncementsList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AnnouncementsList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..pc<Announcement>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'announcements', $pb.PbFieldType.PM, subBuilder: Announcement.create)
    ..hasRequiredFields = false
  ;

  AnnouncementsList._() : super();
  factory AnnouncementsList({
    $core.Iterable<Announcement>? announcements,
  }) {
    final _result = create();
    if (announcements != null) {
      _result.announcements.addAll(announcements);
    }
    return _result;
  }
  factory AnnouncementsList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnnouncementsList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AnnouncementsList clone() => AnnouncementsList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AnnouncementsList copyWith(void Function(AnnouncementsList) updates) => super.copyWith((message) => updates(message as AnnouncementsList)) as AnnouncementsList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AnnouncementsList create() => AnnouncementsList._();
  AnnouncementsList createEmptyInstance() => create();
  static $pb.PbList<AnnouncementsList> createRepeated() => $pb.PbList<AnnouncementsList>();
  @$core.pragma('dart2js:noInline')
  static AnnouncementsList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnnouncementsList>(create);
  static AnnouncementsList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Announcement> get announcements => $_getList(0);
}

class Announcement extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Announcement', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'author')
    ..aOM<$2.StringValue>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imageUrl', subBuilder: $2.StringValue.create)
    ..aOM<$2.StringValue>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkUrl', subBuilder: $2.StringValue.create)
    ..aOM<$10.Timestamp>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $10.Timestamp.create)
    ..aOM<$10.Timestamp>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $10.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Announcement._() : super();
  factory Announcement({
    $core.String? id,
    $core.String? title,
    $core.String? body,
    $core.String? author,
    $2.StringValue? imageUrl,
    $2.StringValue? linkUrl,
    $10.Timestamp? createdAt,
    $10.Timestamp? updatedAt,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (title != null) {
      _result.title = title;
    }
    if (body != null) {
      _result.body = body;
    }
    if (author != null) {
      _result.author = author;
    }
    if (imageUrl != null) {
      _result.imageUrl = imageUrl;
    }
    if (linkUrl != null) {
      _result.linkUrl = linkUrl;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    return _result;
  }
  factory Announcement.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Announcement.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Announcement clone() => Announcement()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Announcement copyWith(void Function(Announcement) updates) => super.copyWith((message) => updates(message as Announcement)) as Announcement; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Announcement create() => Announcement._();
  Announcement createEmptyInstance() => create();
  static $pb.PbList<Announcement> createRepeated() => $pb.PbList<Announcement>();
  @$core.pragma('dart2js:noInline')
  static Announcement getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Announcement>(create);
  static Announcement? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get body => $_getSZ(2);
  @$pb.TagNumber(3)
  set body($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBody() => $_has(2);
  @$pb.TagNumber(3)
  void clearBody() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get author => $_getSZ(3);
  @$pb.TagNumber(4)
  set author($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAuthor() => $_has(3);
  @$pb.TagNumber(4)
  void clearAuthor() => clearField(4);

  @$pb.TagNumber(5)
  $2.StringValue get imageUrl => $_getN(4);
  @$pb.TagNumber(5)
  set imageUrl($2.StringValue v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasImageUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearImageUrl() => clearField(5);
  @$pb.TagNumber(5)
  $2.StringValue ensureImageUrl() => $_ensure(4);

  @$pb.TagNumber(6)
  $2.StringValue get linkUrl => $_getN(5);
  @$pb.TagNumber(6)
  set linkUrl($2.StringValue v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasLinkUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearLinkUrl() => clearField(6);
  @$pb.TagNumber(6)
  $2.StringValue ensureLinkUrl() => $_ensure(5);

  @$pb.TagNumber(7)
  $10.Timestamp get createdAt => $_getN(6);
  @$pb.TagNumber(7)
  set createdAt($10.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreatedAt() => clearField(7);
  @$pb.TagNumber(7)
  $10.Timestamp ensureCreatedAt() => $_ensure(6);

  @$pb.TagNumber(8)
  $10.Timestamp get updatedAt => $_getN(7);
  @$pb.TagNumber(8)
  set updatedAt($10.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasUpdatedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearUpdatedAt() => clearField(8);
  @$pb.TagNumber(8)
  $10.Timestamp ensureUpdatedAt() => $_ensure(7);
}

