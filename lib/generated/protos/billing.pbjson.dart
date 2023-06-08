///
//  Generated code. Do not modify.
//  source: billing.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use listTransactionsResponseDescriptor instead')
const ListTransactionsResponse$json = const {
  '1': 'ListTransactionsResponse',
  '2': const [
    const {'1': 'transactions', '3': 1, '4': 3, '5': 11, '6': '.qreeket.Transaction', '10': 'transactions'},
  ],
};

/// Descriptor for `ListTransactionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listTransactionsResponseDescriptor = $convert.base64Decode('ChhMaXN0VHJhbnNhY3Rpb25zUmVzcG9uc2USOAoMdHJhbnNhY3Rpb25zGAEgAygLMhQucXJlZWtldC5UcmFuc2FjdGlvblIMdHJhbnNhY3Rpb25z');
@$core.Deprecated('Use chargeRequestDescriptor instead')
const ChargeRequest$json = const {
  '1': 'ChargeRequest',
  '2': const [
    const {'1': 'label', '3': 1, '4': 1, '5': 9, '10': 'label'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'amount', '3': 3, '4': 1, '5': 1, '10': 'amount'},
    const {'1': 'currency', '3': 4, '4': 1, '5': 9, '10': 'currency'},
    const {'1': 'source', '3': 5, '4': 1, '5': 9, '10': 'source'},
    const {'1': 'customer', '3': 6, '4': 1, '5': 9, '10': 'customer'},
  ],
};

/// Descriptor for `ChargeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chargeRequestDescriptor = $convert.base64Decode('Cg1DaGFyZ2VSZXF1ZXN0EhQKBWxhYmVsGAEgASgJUgVsYWJlbBIgCgtkZXNjcmlwdGlvbhgCIAEoCVILZGVzY3JpcHRpb24SFgoGYW1vdW50GAMgASgBUgZhbW91bnQSGgoIY3VycmVuY3kYBCABKAlSCGN1cnJlbmN5EhYKBnNvdXJjZRgFIAEoCVIGc291cmNlEhoKCGN1c3RvbWVyGAYgASgJUghjdXN0b21lcg==');
@$core.Deprecated('Use chargeResponseDescriptor instead')
const ChargeResponse$json = const {
  '1': 'ChargeResponse',
  '2': const [
    const {'1': 'transaction_id', '3': 1, '4': 1, '5': 9, '10': 'transactionId'},
    const {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `ChargeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chargeResponseDescriptor = $convert.base64Decode('Cg5DaGFyZ2VSZXNwb25zZRIlCg50cmFuc2FjdGlvbl9pZBgBIAEoCVINdHJhbnNhY3Rpb25JZBIWCgZzdGF0dXMYAiABKAlSBnN0YXR1cw==');
@$core.Deprecated('Use transactionDescriptor instead')
const Transaction$json = const {
  '1': 'Transaction',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'label', '3': 2, '4': 1, '5': 9, '10': 'label'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'amount', '3': 4, '4': 1, '5': 1, '10': 'amount'},
    const {'1': 'currency', '3': 5, '4': 1, '5': 9, '10': 'currency'},
    const {'1': 'source', '3': 6, '4': 1, '5': 9, '10': 'source'},
    const {'1': 'customer', '3': 7, '4': 1, '5': 9, '10': 'customer'},
    const {'1': 'created_at', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    const {'1': 'status', '3': 10, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `Transaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionDescriptor = $convert.base64Decode('CgtUcmFuc2FjdGlvbhIOCgJpZBgBIAEoCVICaWQSFAoFbGFiZWwYAiABKAlSBWxhYmVsEiAKC2Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhIWCgZhbW91bnQYBCABKAFSBmFtb3VudBIaCghjdXJyZW5jeRgFIAEoCVIIY3VycmVuY3kSFgoGc291cmNlGAYgASgJUgZzb3VyY2USGgoIY3VzdG9tZXIYByABKAlSCGN1c3RvbWVyEjkKCmNyZWF0ZWRfYXQYCCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgljcmVhdGVkQXQSOQoKdXBkYXRlZF9hdBgJIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCXVwZGF0ZWRBdBIWCgZzdGF0dXMYCiABKAlSBnN0YXR1cw==');
