///
//  Generated code. Do not modify.
//  source: announcement.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use createAnnouncementRequestDescriptor instead')
const CreateAnnouncementRequest$json = const {
  '1': 'CreateAnnouncementRequest',
  '2': const [
    const {'1': 'announcement', '3': 1, '4': 1, '5': 11, '6': '.qreeket.Announcement', '10': 'announcement'},
  ],
};

/// Descriptor for `CreateAnnouncementRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createAnnouncementRequestDescriptor = $convert.base64Decode('ChlDcmVhdGVBbm5vdW5jZW1lbnRSZXF1ZXN0EjkKDGFubm91bmNlbWVudBgBIAEoCzIVLnFyZWVrZXQuQW5ub3VuY2VtZW50Ugxhbm5vdW5jZW1lbnQ=');
@$core.Deprecated('Use updateAnnouncementRequestDescriptor instead')
const UpdateAnnouncementRequest$json = const {
  '1': 'UpdateAnnouncementRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'announcement', '3': 2, '4': 1, '5': 11, '6': '.qreeket.Announcement', '10': 'announcement'},
  ],
};

/// Descriptor for `UpdateAnnouncementRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateAnnouncementRequestDescriptor = $convert.base64Decode('ChlVcGRhdGVBbm5vdW5jZW1lbnRSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBI5Cgxhbm5vdW5jZW1lbnQYAiABKAsyFS5xcmVla2V0LkFubm91bmNlbWVudFIMYW5ub3VuY2VtZW50');
@$core.Deprecated('Use announcementsListDescriptor instead')
const AnnouncementsList$json = const {
  '1': 'AnnouncementsList',
  '2': const [
    const {'1': 'announcements', '3': 1, '4': 3, '5': 11, '6': '.qreeket.Announcement', '10': 'announcements'},
  ],
};

/// Descriptor for `AnnouncementsList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List announcementsListDescriptor = $convert.base64Decode('ChFBbm5vdW5jZW1lbnRzTGlzdBI7Cg1hbm5vdW5jZW1lbnRzGAEgAygLMhUucXJlZWtldC5Bbm5vdW5jZW1lbnRSDWFubm91bmNlbWVudHM=');
@$core.Deprecated('Use announcementDescriptor instead')
const Announcement$json = const {
  '1': 'Announcement',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'body', '3': 3, '4': 1, '5': 9, '10': 'body'},
    const {'1': 'author', '3': 4, '4': 1, '5': 9, '10': 'author'},
    const {'1': 'image_url', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '9': 0, '10': 'imageUrl', '17': true},
    const {'1': 'link_url', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '9': 1, '10': 'linkUrl', '17': true},
    const {'1': 'created_at', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
  ],
  '8': const [
    const {'1': '_image_url'},
    const {'1': '_link_url'},
  ],
};

/// Descriptor for `Announcement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List announcementDescriptor = $convert.base64Decode('CgxBbm5vdW5jZW1lbnQSDgoCaWQYASABKAlSAmlkEhQKBXRpdGxlGAIgASgJUgV0aXRsZRISCgRib2R5GAMgASgJUgRib2R5EhYKBmF1dGhvchgEIAEoCVIGYXV0aG9yEj4KCWltYWdlX3VybBgFIAEoCzIcLmdvb2dsZS5wcm90b2J1Zi5TdHJpbmdWYWx1ZUgAUghpbWFnZVVybIgBARI8CghsaW5rX3VybBgGIAEoCzIcLmdvb2dsZS5wcm90b2J1Zi5TdHJpbmdWYWx1ZUgBUgdsaW5rVXJsiAEBEjkKCmNyZWF0ZWRfYXQYByABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgljcmVhdGVkQXQSOQoKdXBkYXRlZF9hdBgIIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCXVwZGF0ZWRBdEIMCgpfaW1hZ2VfdXJsQgsKCV9saW5rX3VybA==');
