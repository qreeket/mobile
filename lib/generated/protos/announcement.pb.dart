//
//  Generated code. Do not modify.
//  source: announcement.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pb.dart' as $0;

class CreateAnnouncementRequest extends $pb.GeneratedMessage {
  factory CreateAnnouncementRequest({
    Announcement? announcement,
  }) {
    final $result = create();
    if (announcement != null) {
      $result.announcement = announcement;
    }
    return $result;
  }
  CreateAnnouncementRequest._() : super();
  factory CreateAnnouncementRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateAnnouncementRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateAnnouncementRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOM<Announcement>(1, _omitFieldNames ? '' : 'announcement', subBuilder: Announcement.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateAnnouncementRequest clone() => CreateAnnouncementRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateAnnouncementRequest copyWith(void Function(CreateAnnouncementRequest) updates) => super.copyWith((message) => updates(message as CreateAnnouncementRequest)) as CreateAnnouncementRequest;

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
  factory UpdateAnnouncementRequest({
    $core.String? id,
    Announcement? announcement,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (announcement != null) {
      $result.announcement = announcement;
    }
    return $result;
  }
  UpdateAnnouncementRequest._() : super();
  factory UpdateAnnouncementRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateAnnouncementRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateAnnouncementRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<Announcement>(2, _omitFieldNames ? '' : 'announcement', subBuilder: Announcement.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateAnnouncementRequest clone() => UpdateAnnouncementRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateAnnouncementRequest copyWith(void Function(UpdateAnnouncementRequest) updates) => super.copyWith((message) => updates(message as UpdateAnnouncementRequest)) as UpdateAnnouncementRequest;

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
  factory AnnouncementsList({
    $core.Iterable<Announcement>? announcements,
  }) {
    final $result = create();
    if (announcements != null) {
      $result.announcements.addAll(announcements);
    }
    return $result;
  }
  AnnouncementsList._() : super();
  factory AnnouncementsList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnnouncementsList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AnnouncementsList', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..pc<Announcement>(1, _omitFieldNames ? '' : 'announcements', $pb.PbFieldType.PM, subBuilder: Announcement.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AnnouncementsList clone() => AnnouncementsList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AnnouncementsList copyWith(void Function(AnnouncementsList) updates) => super.copyWith((message) => updates(message as AnnouncementsList)) as AnnouncementsList;

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
  factory Announcement({
    $core.String? id,
    $core.String? title,
    $core.String? body,
    $core.String? author,
    $0.StringValue? imageUrl,
    $0.StringValue? linkUrl,
    $0.Timestamp? createdAt,
    $0.Timestamp? updatedAt,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (title != null) {
      $result.title = title;
    }
    if (body != null) {
      $result.body = body;
    }
    if (author != null) {
      $result.author = author;
    }
    if (imageUrl != null) {
      $result.imageUrl = imageUrl;
    }
    if (linkUrl != null) {
      $result.linkUrl = linkUrl;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    return $result;
  }
  Announcement._() : super();
  factory Announcement.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Announcement.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Announcement', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'body')
    ..aOS(4, _omitFieldNames ? '' : 'author')
    ..aOM<$0.StringValue>(5, _omitFieldNames ? '' : 'imageUrl', subBuilder: $0.StringValue.create)
    ..aOM<$0.StringValue>(6, _omitFieldNames ? '' : 'linkUrl', subBuilder: $0.StringValue.create)
    ..aOM<$0.Timestamp>(7, _omitFieldNames ? '' : 'createdAt', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(8, _omitFieldNames ? '' : 'updatedAt', subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Announcement clone() => Announcement()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Announcement copyWith(void Function(Announcement) updates) => super.copyWith((message) => updates(message as Announcement)) as Announcement;

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
  $0.StringValue get imageUrl => $_getN(4);
  @$pb.TagNumber(5)
  set imageUrl($0.StringValue v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasImageUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearImageUrl() => clearField(5);
  @$pb.TagNumber(5)
  $0.StringValue ensureImageUrl() => $_ensure(4);

  @$pb.TagNumber(6)
  $0.StringValue get linkUrl => $_getN(5);
  @$pb.TagNumber(6)
  set linkUrl($0.StringValue v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasLinkUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearLinkUrl() => clearField(6);
  @$pb.TagNumber(6)
  $0.StringValue ensureLinkUrl() => $_ensure(5);

  @$pb.TagNumber(7)
  $0.Timestamp get createdAt => $_getN(6);
  @$pb.TagNumber(7)
  set createdAt($0.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreatedAt() => clearField(7);
  @$pb.TagNumber(7)
  $0.Timestamp ensureCreatedAt() => $_ensure(6);

  @$pb.TagNumber(8)
  $0.Timestamp get updatedAt => $_getN(7);
  @$pb.TagNumber(8)
  set updatedAt($0.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasUpdatedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearUpdatedAt() => clearField(8);
  @$pb.TagNumber(8)
  $0.Timestamp ensureUpdatedAt() => $_ensure(7);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
