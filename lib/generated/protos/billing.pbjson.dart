//
//  Generated code. Do not modify.
//  source: billing.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use listTransactionsResponseDescriptor instead')
const ListTransactionsResponse$json = {
  '1': 'ListTransactionsResponse',
  '2': [
    {'1': 'transactions', '3': 1, '4': 3, '5': 11, '6': '.qreeket.Transaction', '10': 'transactions'},
  ],
};

/// Descriptor for `ListTransactionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listTransactionsResponseDescriptor = $convert.base64Decode(
    'ChhMaXN0VHJhbnNhY3Rpb25zUmVzcG9uc2USOAoMdHJhbnNhY3Rpb25zGAEgAygLMhQucXJlZW'
    'tldC5UcmFuc2FjdGlvblIMdHJhbnNhY3Rpb25z');

@$core.Deprecated('Use chargeRequestDescriptor instead')
const ChargeRequest$json = {
  '1': 'ChargeRequest',
  '2': [
    {'1': 'label', '3': 1, '4': 1, '5': 9, '10': 'label'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'amount', '3': 3, '4': 1, '5': 1, '10': 'amount'},
    {'1': 'currency', '3': 4, '4': 1, '5': 9, '10': 'currency'},
    {'1': 'source', '3': 5, '4': 1, '5': 9, '10': 'source'},
    {'1': 'customer', '3': 6, '4': 1, '5': 9, '10': 'customer'},
  ],
};

/// Descriptor for `ChargeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chargeRequestDescriptor = $convert.base64Decode(
    'Cg1DaGFyZ2VSZXF1ZXN0EhQKBWxhYmVsGAEgASgJUgVsYWJlbBIgCgtkZXNjcmlwdGlvbhgCIA'
    'EoCVILZGVzY3JpcHRpb24SFgoGYW1vdW50GAMgASgBUgZhbW91bnQSGgoIY3VycmVuY3kYBCAB'
    'KAlSCGN1cnJlbmN5EhYKBnNvdXJjZRgFIAEoCVIGc291cmNlEhoKCGN1c3RvbWVyGAYgASgJUg'
    'hjdXN0b21lcg==');

@$core.Deprecated('Use chargeResponseDescriptor instead')
const ChargeResponse$json = {
  '1': 'ChargeResponse',
  '2': [
    {'1': 'transaction_id', '3': 1, '4': 1, '5': 9, '10': 'transactionId'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `ChargeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chargeResponseDescriptor = $convert.base64Decode(
    'Cg5DaGFyZ2VSZXNwb25zZRIlCg50cmFuc2FjdGlvbl9pZBgBIAEoCVINdHJhbnNhY3Rpb25JZB'
    'IWCgZzdGF0dXMYAiABKAlSBnN0YXR1cw==');

@$core.Deprecated('Use transactionDescriptor instead')
const Transaction$json = {
  '1': 'Transaction',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'label', '3': 2, '4': 1, '5': 9, '10': 'label'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'amount', '3': 4, '4': 1, '5': 1, '10': 'amount'},
    {'1': 'currency', '3': 5, '4': 1, '5': 9, '10': 'currency'},
    {'1': 'source', '3': 6, '4': 1, '5': 9, '10': 'source'},
    {'1': 'customer', '3': 7, '4': 1, '5': 9, '10': 'customer'},
    {'1': 'created_at', '3': 8, '4': 1, '5': 11, '6': '.qreeket.Timestamp', '10': 'createdAt'},
    {'1': 'updated_at', '3': 9, '4': 1, '5': 11, '6': '.qreeket.Timestamp', '10': 'updatedAt'},
    {'1': 'status', '3': 10, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `Transaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionDescriptor = $convert.base64Decode(
    'CgtUcmFuc2FjdGlvbhIOCgJpZBgBIAEoCVICaWQSFAoFbGFiZWwYAiABKAlSBWxhYmVsEiAKC2'
    'Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhIWCgZhbW91bnQYBCABKAFSBmFtb3VudBIa'
    'CghjdXJyZW5jeRgFIAEoCVIIY3VycmVuY3kSFgoGc291cmNlGAYgASgJUgZzb3VyY2USGgoIY3'
    'VzdG9tZXIYByABKAlSCGN1c3RvbWVyEjEKCmNyZWF0ZWRfYXQYCCABKAsyEi5xcmVla2V0LlRp'
    'bWVzdGFtcFIJY3JlYXRlZEF0EjEKCnVwZGF0ZWRfYXQYCSABKAsyEi5xcmVla2V0LlRpbWVzdG'
    'FtcFIJdXBkYXRlZEF0EhYKBnN0YXR1cxgKIAEoCVIGc3RhdHVz');

