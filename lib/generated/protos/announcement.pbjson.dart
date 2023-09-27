//
//  Generated code. Do not modify.
//  source: announcement.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createAnnouncementRequestDescriptor instead')
const CreateAnnouncementRequest$json = {
  '1': 'CreateAnnouncementRequest',
  '2': [
    {'1': 'announcement', '3': 1, '4': 1, '5': 11, '6': '.qreeket.Announcement', '10': 'announcement'},
  ],
};

/// Descriptor for `CreateAnnouncementRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createAnnouncementRequestDescriptor = $convert.base64Decode(
    'ChlDcmVhdGVBbm5vdW5jZW1lbnRSZXF1ZXN0EjkKDGFubm91bmNlbWVudBgBIAEoCzIVLnFyZW'
    'VrZXQuQW5ub3VuY2VtZW50Ugxhbm5vdW5jZW1lbnQ=');

@$core.Deprecated('Use updateAnnouncementRequestDescriptor instead')
const UpdateAnnouncementRequest$json = {
  '1': 'UpdateAnnouncementRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'announcement', '3': 2, '4': 1, '5': 11, '6': '.qreeket.Announcement', '10': 'announcement'},
  ],
};

/// Descriptor for `UpdateAnnouncementRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateAnnouncementRequestDescriptor = $convert.base64Decode(
    'ChlVcGRhdGVBbm5vdW5jZW1lbnRSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBI5Cgxhbm5vdW5jZW'
    '1lbnQYAiABKAsyFS5xcmVla2V0LkFubm91bmNlbWVudFIMYW5ub3VuY2VtZW50');

@$core.Deprecated('Use announcementsListDescriptor instead')
const AnnouncementsList$json = {
  '1': 'AnnouncementsList',
  '2': [
    {'1': 'announcements', '3': 1, '4': 3, '5': 11, '6': '.qreeket.Announcement', '10': 'announcements'},
  ],
};

/// Descriptor for `AnnouncementsList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List announcementsListDescriptor = $convert.base64Decode(
    'ChFBbm5vdW5jZW1lbnRzTGlzdBI7Cg1hbm5vdW5jZW1lbnRzGAEgAygLMhUucXJlZWtldC5Bbm'
    '5vdW5jZW1lbnRSDWFubm91bmNlbWVudHM=');

@$core.Deprecated('Use announcementDescriptor instead')
const Announcement$json = {
  '1': 'Announcement',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'body', '3': 3, '4': 1, '5': 9, '10': 'body'},
    {'1': 'author', '3': 4, '4': 1, '5': 9, '10': 'author'},
    {'1': 'image_url', '3': 5, '4': 1, '5': 11, '6': '.qreeket.StringValue', '10': 'imageUrl'},
    {'1': 'link_url', '3': 6, '4': 1, '5': 11, '6': '.qreeket.StringValue', '10': 'linkUrl'},
    {'1': 'created_at', '3': 7, '4': 1, '5': 11, '6': '.qreeket.Timestamp', '10': 'createdAt'},
    {'1': 'updated_at', '3': 8, '4': 1, '5': 11, '6': '.qreeket.Timestamp', '10': 'updatedAt'},
  ],
};

/// Descriptor for `Announcement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List announcementDescriptor = $convert.base64Decode(
    'CgxBbm5vdW5jZW1lbnQSDgoCaWQYASABKAlSAmlkEhQKBXRpdGxlGAIgASgJUgV0aXRsZRISCg'
    'Rib2R5GAMgASgJUgRib2R5EhYKBmF1dGhvchgEIAEoCVIGYXV0aG9yEjEKCWltYWdlX3VybBgF'
    'IAEoCzIULnFyZWVrZXQuU3RyaW5nVmFsdWVSCGltYWdlVXJsEi8KCGxpbmtfdXJsGAYgASgLMh'
    'QucXJlZWtldC5TdHJpbmdWYWx1ZVIHbGlua1VybBIxCgpjcmVhdGVkX2F0GAcgASgLMhIucXJl'
    'ZWtldC5UaW1lc3RhbXBSCWNyZWF0ZWRBdBIxCgp1cGRhdGVkX2F0GAggASgLMhIucXJlZWtldC'
    '5UaW1lc3RhbXBSCXVwZGF0ZWRBdA==');

