//
//  Generated code. Do not modify.
//  source: common.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use dateFilterDescriptor instead')
const DateFilter$json = {
  '1': 'DateFilter',
  '2': [
    {'1': 'TODAY', '2': 0},
    {'1': 'YESTERDAY', '2': 1},
    {'1': 'LAST_7_DAYS', '2': 2},
    {'1': 'LAST_30_DAYS', '2': 3},
    {'1': 'LAST_90_DAYS', '2': 4},
    {'1': 'LAST_180_DAYS', '2': 5},
    {'1': 'LAST_365_DAYS', '2': 6},
    {'1': 'ALL_TIME', '2': 7},
  ],
};

/// Descriptor for `DateFilter`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List dateFilterDescriptor = $convert.base64Decode(
    'CgpEYXRlRmlsdGVyEgkKBVRPREFZEAASDQoJWUVTVEVSREFZEAESDwoLTEFTVF83X0RBWVMQAh'
    'IQCgxMQVNUXzMwX0RBWVMQAxIQCgxMQVNUXzkwX0RBWVMQBBIRCg1MQVNUXzE4MF9EQVlTEAUS'
    'EQoNTEFTVF8zNjVfREFZUxAGEgwKCEFMTF9USU1FEAc=');

@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode(
    'CgVFbXB0eQ==');

@$core.Deprecated('Use timestampDescriptor instead')
const Timestamp$json = {
  '1': 'Timestamp',
  '2': [
    {'1': 'seconds', '3': 1, '4': 1, '5': 3, '10': 'seconds'},
    {'1': 'nanos', '3': 2, '4': 1, '5': 5, '10': 'nanos'},
  ],
};

/// Descriptor for `Timestamp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timestampDescriptor = $convert.base64Decode(
    'CglUaW1lc3RhbXASGAoHc2Vjb25kcxgBIAEoA1IHc2Vjb25kcxIUCgVuYW5vcxgCIAEoBVIFbm'
    'Fub3M=');

@$core.Deprecated('Use doubleValueDescriptor instead')
const DoubleValue$json = {
  '1': 'DoubleValue',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 1, '10': 'value'},
  ],
};

/// Descriptor for `DoubleValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List doubleValueDescriptor = $convert.base64Decode(
    'CgtEb3VibGVWYWx1ZRIUCgV2YWx1ZRgBIAEoAVIFdmFsdWU=');

@$core.Deprecated('Use floatValueDescriptor instead')
const FloatValue$json = {
  '1': 'FloatValue',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 2, '10': 'value'},
  ],
};

/// Descriptor for `FloatValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List floatValueDescriptor = $convert.base64Decode(
    'CgpGbG9hdFZhbHVlEhQKBXZhbHVlGAEgASgCUgV2YWx1ZQ==');

@$core.Deprecated('Use int64ValueDescriptor instead')
const Int64Value$json = {
  '1': 'Int64Value',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 3, '10': 'value'},
  ],
};

/// Descriptor for `Int64Value`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List int64ValueDescriptor = $convert.base64Decode(
    'CgpJbnQ2NFZhbHVlEhQKBXZhbHVlGAEgASgDUgV2YWx1ZQ==');

@$core.Deprecated('Use uInt64ValueDescriptor instead')
const UInt64Value$json = {
  '1': 'UInt64Value',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 4, '10': 'value'},
  ],
};

/// Descriptor for `UInt64Value`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uInt64ValueDescriptor = $convert.base64Decode(
    'CgtVSW50NjRWYWx1ZRIUCgV2YWx1ZRgBIAEoBFIFdmFsdWU=');

@$core.Deprecated('Use int32ValueDescriptor instead')
const Int32Value$json = {
  '1': 'Int32Value',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 5, '10': 'value'},
  ],
};

/// Descriptor for `Int32Value`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List int32ValueDescriptor = $convert.base64Decode(
    'CgpJbnQzMlZhbHVlEhQKBXZhbHVlGAEgASgFUgV2YWx1ZQ==');

@$core.Deprecated('Use uInt32ValueDescriptor instead')
const UInt32Value$json = {
  '1': 'UInt32Value',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 13, '10': 'value'},
  ],
};

/// Descriptor for `UInt32Value`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uInt32ValueDescriptor = $convert.base64Decode(
    'CgtVSW50MzJWYWx1ZRIUCgV2YWx1ZRgBIAEoDVIFdmFsdWU=');

@$core.Deprecated('Use boolValueDescriptor instead')
const BoolValue$json = {
  '1': 'BoolValue',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 8, '10': 'value'},
  ],
};

/// Descriptor for `BoolValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boolValueDescriptor = $convert.base64Decode(
    'CglCb29sVmFsdWUSFAoFdmFsdWUYASABKAhSBXZhbHVl');

@$core.Deprecated('Use stringValueDescriptor instead')
const StringValue$json = {
  '1': 'StringValue',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `StringValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stringValueDescriptor = $convert.base64Decode(
    'CgtTdHJpbmdWYWx1ZRIUCgV2YWx1ZRgBIAEoCVIFdmFsdWU=');

@$core.Deprecated('Use bytesValueDescriptor instead')
const BytesValue$json = {
  '1': 'BytesValue',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 12, '10': 'value'},
  ],
};

/// Descriptor for `BytesValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bytesValueDescriptor = $convert.base64Decode(
    'CgpCeXRlc1ZhbHVlEhQKBXZhbHVlGAEgASgMUgV2YWx1ZQ==');

@$core.Deprecated('Use geoPointDescriptor instead')
const GeoPoint$json = {
  '1': 'GeoPoint',
  '2': [
    {'1': 'latitude', '3': 1, '4': 1, '5': 1, '10': 'latitude'},
    {'1': 'longitude', '3': 2, '4': 1, '5': 1, '10': 'longitude'},
    {'1': 'address', '3': 3, '4': 1, '5': 9, '10': 'address'},
  ],
};

/// Descriptor for `GeoPoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List geoPointDescriptor = $convert.base64Decode(
    'CghHZW9Qb2ludBIaCghsYXRpdHVkZRgBIAEoAVIIbGF0aXR1ZGUSHAoJbG9uZ2l0dWRlGAIgAS'
    'gBUglsb25naXR1ZGUSGAoHYWRkcmVzcxgDIAEoCVIHYWRkcmVzcw==');

@$core.Deprecated('Use durationDescriptor instead')
const Duration$json = {
  '1': 'Duration',
  '2': [
    {'1': 'seconds', '3': 1, '4': 1, '5': 3, '10': 'seconds'},
    {'1': 'nanos', '3': 2, '4': 1, '5': 5, '10': 'nanos'},
  ],
};

/// Descriptor for `Duration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List durationDescriptor = $convert.base64Decode(
    'CghEdXJhdGlvbhIYCgdzZWNvbmRzGAEgASgDUgdzZWNvbmRzEhQKBW5hbm9zGAIgASgFUgVuYW'
    '5vcw==');

