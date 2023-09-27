//
//  Generated code. Do not modify.
//  source: media.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'media.pbenum.dart';

export 'media.pbenum.dart';

/// UploadMediaRequest is the request for uploading media
class UploadMediaRequest extends $pb.GeneratedMessage {
  factory UploadMediaRequest({
    $core.List<$core.int>? media,
    MediaType? type,
    $core.String? name,
    $core.String? owner,
  }) {
    final $result = create();
    if (media != null) {
      $result.media = media;
    }
    if (type != null) {
      $result.type = type;
    }
    if (name != null) {
      $result.name = name;
    }
    if (owner != null) {
      $result.owner = owner;
    }
    return $result;
  }
  UploadMediaRequest._() : super();
  factory UploadMediaRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadMediaRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UploadMediaRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'media', $pb.PbFieldType.OY)
    ..e<MediaType>(2, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: MediaType.IMAGE, valueOf: MediaType.valueOf, enumValues: MediaType.values)
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'owner')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadMediaRequest clone() => UploadMediaRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadMediaRequest copyWith(void Function(UploadMediaRequest) updates) => super.copyWith((message) => updates(message as UploadMediaRequest)) as UploadMediaRequest;

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
  factory UploadMediaResponse({
    $core.String? url,
    $core.int? size,
  }) {
    final $result = create();
    if (url != null) {
      $result.url = url;
    }
    if (size != null) {
      $result.size = size;
    }
    return $result;
  }
  UploadMediaResponse._() : super();
  factory UploadMediaResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadMediaResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UploadMediaResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'url')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'size', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadMediaResponse clone() => UploadMediaResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadMediaResponse copyWith(void Function(UploadMediaResponse) updates) => super.copyWith((message) => updates(message as UploadMediaResponse)) as UploadMediaResponse;

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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
