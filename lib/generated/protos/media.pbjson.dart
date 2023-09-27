//
//  Generated code. Do not modify.
//  source: media.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use mediaTypeDescriptor instead')
const MediaType$json = {
  '1': 'MediaType',
  '2': [
    {'1': 'IMAGE', '2': 0},
    {'1': 'VIDEO', '2': 1},
  ],
};

/// Descriptor for `MediaType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List mediaTypeDescriptor = $convert.base64Decode(
    'CglNZWRpYVR5cGUSCQoFSU1BR0UQABIJCgVWSURFTxAB');

@$core.Deprecated('Use uploadMediaRequestDescriptor instead')
const UploadMediaRequest$json = {
  '1': 'UploadMediaRequest',
  '2': [
    {'1': 'media', '3': 1, '4': 1, '5': 12, '10': 'media'},
    {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.qreeket.MediaType', '10': 'type'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    {'1': 'owner', '3': 4, '4': 1, '5': 9, '9': 1, '10': 'owner', '17': true},
  ],
  '8': [
    {'1': '_name'},
    {'1': '_owner'},
  ],
};

/// Descriptor for `UploadMediaRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadMediaRequestDescriptor = $convert.base64Decode(
    'ChJVcGxvYWRNZWRpYVJlcXVlc3QSFAoFbWVkaWEYASABKAxSBW1lZGlhEiYKBHR5cGUYAiABKA'
    '4yEi5xcmVla2V0Lk1lZGlhVHlwZVIEdHlwZRIXCgRuYW1lGAMgASgJSABSBG5hbWWIAQESGQoF'
    'b3duZXIYBCABKAlIAVIFb3duZXKIAQFCBwoFX25hbWVCCAoGX293bmVy');

@$core.Deprecated('Use uploadMediaResponseDescriptor instead')
const UploadMediaResponse$json = {
  '1': 'UploadMediaResponse',
  '2': [
    {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
    {'1': 'size', '3': 2, '4': 1, '5': 13, '10': 'size'},
  ],
};

/// Descriptor for `UploadMediaResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadMediaResponseDescriptor = $convert.base64Decode(
    'ChNVcGxvYWRNZWRpYVJlc3BvbnNlEhAKA3VybBgBIAEoCVIDdXJsEhIKBHNpemUYAiABKA1SBH'
    'NpemU=');

