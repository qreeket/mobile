///
//  Generated code. Do not modify.
//  source: media.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'media.pbenum.dart';

export 'media.pbenum.dart';

class UploadMediaRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UploadMediaRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'media', $pb.PbFieldType.OY)
    ..e<MediaType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: MediaType.IMAGE, valueOf: MediaType.valueOf, enumValues: MediaType.values)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'owner')
    ..hasRequiredFields = false
  ;

  UploadMediaRequest._() : super();
  factory UploadMediaRequest({
    $core.List<$core.int>? media,
    MediaType? type,
    $core.String? name,
    $core.String? owner,
  }) {
    final _result = create();
    if (media != null) {
      _result.media = media;
    }
    if (type != null) {
      _result.type = type;
    }
    if (name != null) {
      _result.name = name;
    }
    if (owner != null) {
      _result.owner = owner;
    }
    return _result;
  }
  factory UploadMediaRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadMediaRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadMediaRequest clone() => UploadMediaRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadMediaRequest copyWith(void Function(UploadMediaRequest) updates) => super.copyWith((message) => updates(message as UploadMediaRequest)) as UploadMediaRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadMediaRequest create() => UploadMediaRequest._();
  UploadMediaRequest createEmptyInstance() => create();
  static $pb.PbList<UploadMediaRequest> createRepeated() => $pb.PbList<UploadMediaRequest>();
  @$core.pragma('dart2js:noInline')
  static UploadMediaRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadMediaRequest>(create);
  static UploadMediaRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get media => $_getN(0);
  @$pb.TagNumber(1)
  set media($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMedia() => $_has(0);
  @$pb.TagNumber(1)
  void clearMedia() => clearField(1);

  @$pb.TagNumber(2)
  MediaType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(MediaType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get owner => $_getSZ(3);
  @$pb.TagNumber(4)
  set owner($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOwner() => $_has(3);
  @$pb.TagNumber(4)
  void clearOwner() => clearField(4);
}

class UploadMediaResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UploadMediaResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'size', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  UploadMediaResponse._() : super();
  factory UploadMediaResponse({
    $core.String? url,
    $core.int? size,
  }) {
    final _result = create();
    if (url != null) {
      _result.url = url;
    }
    if (size != null) {
      _result.size = size;
    }
    return _result;
  }
  factory UploadMediaResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadMediaResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadMediaResponse clone() => UploadMediaResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadMediaResponse copyWith(void Function(UploadMediaResponse) updates) => super.copyWith((message) => updates(message as UploadMediaResponse)) as UploadMediaResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadMediaResponse create() => UploadMediaResponse._();
  UploadMediaResponse createEmptyInstance() => create();
  static $pb.PbList<UploadMediaResponse> createRepeated() => $pb.PbList<UploadMediaResponse>();
  @$core.pragma('dart2js:noInline')
  static UploadMediaResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadMediaResponse>(create);
  static UploadMediaResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get size => $_getIZ(1);
  @$pb.TagNumber(2)
  set size($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearSize() => clearField(2);
}

