//
//  Generated code. Do not modify.
//  source: sms.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use verifyPhoneRequestDescriptor instead')
const VerifyPhoneRequest$json = {
  '1': 'VerifyPhoneRequest',
  '2': [
    {'1': 'phone_number', '3': 1, '4': 1, '5': 9, '10': 'phoneNumber'},
    {'1': 'verification_code', '3': 2, '4': 1, '5': 9, '10': 'verificationCode'},
  ],
};

/// Descriptor for `VerifyPhoneRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyPhoneRequestDescriptor = $convert.base64Decode(
    'ChJWZXJpZnlQaG9uZVJlcXVlc3QSIQoMcGhvbmVfbnVtYmVyGAEgASgJUgtwaG9uZU51bWJlch'
    'IrChF2ZXJpZmljYXRpb25fY29kZRgCIAEoCVIQdmVyaWZpY2F0aW9uQ29kZQ==');

