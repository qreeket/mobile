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

/// MediaType is the type of media
class MediaType extends $pb.ProtobufEnum {
  static const MediaType IMAGE = MediaType._(0, _omitEnumNames ? '' : 'IMAGE');
  static const MediaType VIDEO = MediaType._(1, _omitEnumNames ? '' : 'VIDEO');

  static const $core.List<MediaType> values = <MediaType> [
    IMAGE,
    VIDEO,
  ];

  static final $core.Map<$core.int, MediaType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MediaType? valueOf($core.int value) => _byValue[value];

  const MediaType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
