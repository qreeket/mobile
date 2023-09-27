//
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userTypeDescriptor instead')
const UserType$json = {
  '1': 'UserType',
  '2': [
    {'1': 'standard', '2': 0},
    {'1': 'premium', '2': 1},
  ],
};

/// Descriptor for `UserType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List userTypeDescriptor = $convert.base64Decode(
    'CghVc2VyVHlwZRIMCghzdGFuZGFyZBAAEgsKB3ByZW1pdW0QAQ==');

@$core.Deprecated('Use authenticateWithSocialAccountRequestDescriptor instead')
const AuthenticateWithSocialAccountRequest$json = {
  '1': 'AuthenticateWithSocialAccountRequest',
  '2': [
    {'1': 'phone_number', '3': 1, '4': 1, '5': 9, '10': 'phoneNumber'},
    {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    {'1': 'avatar_url', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'avatarUrl'},
    {'1': 'avatar_data', '3': 4, '4': 1, '5': 12, '9': 0, '10': 'avatarData'},
    {'1': 'country_id', '3': 5, '4': 1, '5': 9, '10': 'countryId'},
    {'1': 'college_id', '3': 6, '4': 1, '5': 9, '10': 'collegeId'},
    {'1': 'email', '3': 7, '4': 1, '5': 9, '10': 'email'},
  ],
  '8': [
    {'1': 'auth_avatar'},
  ],
};

/// Descriptor for `AuthenticateWithSocialAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authenticateWithSocialAccountRequestDescriptor = $convert.base64Decode(
    'CiRBdXRoZW50aWNhdGVXaXRoU29jaWFsQWNjb3VudFJlcXVlc3QSIQoMcGhvbmVfbnVtYmVyGA'
    'EgASgJUgtwaG9uZU51bWJlchIaCgh1c2VybmFtZRgCIAEoCVIIdXNlcm5hbWUSHwoKYXZhdGFy'
    'X3VybBgDIAEoCUgAUglhdmF0YXJVcmwSIQoLYXZhdGFyX2RhdGEYBCABKAxIAFIKYXZhdGFyRG'
    'F0YRIdCgpjb3VudHJ5X2lkGAUgASgJUgljb3VudHJ5SWQSHQoKY29sbGVnZV9pZBgGIAEoCVIJ'
    'Y29sbGVnZUlkEhQKBWVtYWlsGAcgASgJUgVlbWFpbEINCgthdXRoX2F2YXRhcg==');

@$core.Deprecated('Use getCollegesResponseDescriptor instead')
const GetCollegesResponse$json = {
  '1': 'GetCollegesResponse',
  '2': [
    {'1': 'colleges', '3': 1, '4': 3, '5': 11, '6': '.qreeket.College', '10': 'colleges'},
  ],
};

/// Descriptor for `GetCollegesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCollegesResponseDescriptor = $convert.base64Decode(
    'ChNHZXRDb2xsZWdlc1Jlc3BvbnNlEiwKCGNvbGxlZ2VzGAEgAygLMhAucXJlZWtldC5Db2xsZW'
    'dlUghjb2xsZWdlcw==');

@$core.Deprecated('Use getCountriesResponseDescriptor instead')
const GetCountriesResponse$json = {
  '1': 'GetCountriesResponse',
  '2': [
    {'1': 'countries', '3': 1, '4': 3, '5': 11, '6': '.qreeket.Country', '10': 'countries'},
  ],
};

/// Descriptor for `GetCountriesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCountriesResponseDescriptor = $convert.base64Decode(
    'ChRHZXRDb3VudHJpZXNSZXNwb25zZRIuCgljb3VudHJpZXMYASADKAsyEC5xcmVla2V0LkNvdW'
    '50cnlSCWNvdW50cmllcw==');

@$core.Deprecated('Use validateAccessTokenResponseDescriptor instead')
const ValidateAccessTokenResponse$json = {
  '1': 'ValidateAccessTokenResponse',
  '2': [
    {'1': 'account_id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'accountId', '17': true},
    {'1': 'phone_number', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'phoneNumber', '17': true},
    {'1': 'username', '3': 3, '4': 1, '5': 9, '9': 2, '10': 'username', '17': true},
  ],
  '8': [
    {'1': '_account_id'},
    {'1': '_phone_number'},
    {'1': '_username'},
  ],
};

/// Descriptor for `ValidateAccessTokenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateAccessTokenResponseDescriptor = $convert.base64Decode(
    'ChtWYWxpZGF0ZUFjY2Vzc1Rva2VuUmVzcG9uc2USIgoKYWNjb3VudF9pZBgBIAEoCUgAUglhY2'
    'NvdW50SWSIAQESJgoMcGhvbmVfbnVtYmVyGAIgASgJSAFSC3Bob25lTnVtYmVyiAEBEh8KCHVz'
    'ZXJuYW1lGAMgASgJSAJSCHVzZXJuYW1liAEBQg0KC19hY2NvdW50X2lkQg8KDV9waG9uZV9udW'
    '1iZXJCCwoJX3VzZXJuYW1l');

@$core.Deprecated('Use requestPasswordResetRequestDescriptor instead')
const RequestPasswordResetRequest$json = {
  '1': 'RequestPasswordResetRequest',
  '2': [
    {'1': 'phone_number', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'phoneNumber'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'email'},
  ],
  '8': [
    {'1': 'request_password_reset_payload'},
  ],
};

/// Descriptor for `RequestPasswordResetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestPasswordResetRequestDescriptor = $convert.base64Decode(
    'ChtSZXF1ZXN0UGFzc3dvcmRSZXNldFJlcXVlc3QSIwoMcGhvbmVfbnVtYmVyGAEgASgJSABSC3'
    'Bob25lTnVtYmVyEhYKBWVtYWlsGAIgASgJSABSBWVtYWlsQiAKHnJlcXVlc3RfcGFzc3dvcmRf'
    'cmVzZXRfcGF5bG9hZA==');

@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = {
  '1': 'LoginRequest',
  '2': [
    {'1': 'phone_number', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'phoneNumber'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'email'},
    {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
    {'1': 'country_id', '3': 4, '4': 1, '5': 9, '10': 'countryId'},
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode(
    'CgxMb2dpblJlcXVlc3QSIwoMcGhvbmVfbnVtYmVyGAEgASgJSABSC3Bob25lTnVtYmVyEhYKBW'
    'VtYWlsGAIgASgJSABSBWVtYWlsEhoKCHBhc3N3b3JkGAMgASgJUghwYXNzd29yZBIdCgpjb3Vu'
    'dHJ5X2lkGAQgASgJUgljb3VudHJ5SWRCCQoHcGF5bG9hZA==');

@$core.Deprecated('Use registerRequestDescriptor instead')
const RegisterRequest$json = {
  '1': 'RegisterRequest',
  '2': [
    {'1': 'phone_number', '3': 1, '4': 1, '5': 9, '9': 1, '10': 'phoneNumber', '17': true},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    {'1': 'username', '3': 4, '4': 1, '5': 9, '10': 'username'},
    {'1': 'avatar_url', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'avatarUrl'},
    {'1': 'avatar_data', '3': 6, '4': 1, '5': 12, '9': 0, '10': 'avatarData'},
    {'1': 'country_id', '3': 9, '4': 1, '5': 9, '10': 'countryId'},
    {'1': 'college_id', '3': 10, '4': 1, '5': 9, '10': 'collegeId'},
    {'1': 'email', '3': 11, '4': 1, '5': 9, '9': 2, '10': 'email', '17': true},
  ],
  '8': [
    {'1': 'avatar'},
    {'1': '_phone_number'},
    {'1': '_email'},
  ],
};

/// Descriptor for `RegisterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerRequestDescriptor = $convert.base64Decode(
    'Cg9SZWdpc3RlclJlcXVlc3QSJgoMcGhvbmVfbnVtYmVyGAEgASgJSAFSC3Bob25lTnVtYmVyiA'
    'EBEhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZBIaCgh1c2VybmFtZRgEIAEoCVIIdXNlcm5h'
    'bWUSHwoKYXZhdGFyX3VybBgFIAEoCUgAUglhdmF0YXJVcmwSIQoLYXZhdGFyX2RhdGEYBiABKA'
    'xIAFIKYXZhdGFyRGF0YRIdCgpjb3VudHJ5X2lkGAkgASgJUgljb3VudHJ5SWQSHQoKY29sbGVn'
    'ZV9pZBgKIAEoCVIJY29sbGVnZUlkEhkKBWVtYWlsGAsgASgJSAJSBWVtYWlsiAEBQggKBmF2YX'
    'RhckIPCg1fcGhvbmVfbnVtYmVyQggKBl9lbWFpbA==');

@$core.Deprecated('Use resetPasswordRequestDescriptor instead')
const ResetPasswordRequest$json = {
  '1': 'ResetPasswordRequest',
  '2': [
    {'1': 'phone_number', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'phoneNumber'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'email'},
    {'1': 'password', '3': 4, '4': 1, '5': 9, '10': 'password'},
    {'1': 'reset_token', '3': 5, '4': 1, '5': 9, '10': 'resetToken'},
  ],
  '8': [
    {'1': 'reset_payload'},
  ],
};

/// Descriptor for `ResetPasswordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resetPasswordRequestDescriptor = $convert.base64Decode(
    'ChRSZXNldFBhc3N3b3JkUmVxdWVzdBIjCgxwaG9uZV9udW1iZXIYASABKAlIAFILcGhvbmVOdW'
    '1iZXISFgoFZW1haWwYAiABKAlIAFIFZW1haWwSGgoIcGFzc3dvcmQYBCABKAlSCHBhc3N3b3Jk'
    'Eh8KC3Jlc2V0X3Rva2VuGAUgASgJUgpyZXNldFRva2VuQg8KDXJlc2V0X3BheWxvYWQ=');

@$core.Deprecated('Use accountDescriptor instead')
const Account$json = {
  '1': 'Account',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'phone_number', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'phoneNumber', '17': true},
    {'1': 'username', '3': 3, '4': 1, '5': 9, '10': 'username'},
    {'1': 'language_id', '3': 4, '4': 1, '5': 9, '10': 'languageId'},
    {'1': 'updated_at', '3': 6, '4': 1, '5': 11, '6': '.qreeket.Timestamp', '10': 'updatedAt'},
    {'1': 'created_at', '3': 5, '4': 1, '5': 11, '6': '.qreeket.Timestamp', '10': 'createdAt'},
    {'1': 'avatar_url', '3': 7, '4': 1, '5': 9, '9': 1, '10': 'avatarUrl', '17': true},
    {'1': 'country_id', '3': 9, '4': 1, '5': 9, '10': 'countryId'},
    {'1': 'device_id', '3': 10, '4': 1, '5': 9, '9': 2, '10': 'deviceId', '17': true},
    {'1': 'device_token', '3': 11, '4': 1, '5': 9, '9': 3, '10': 'deviceToken', '17': true},
    {'1': 'device_type', '3': 12, '4': 1, '5': 9, '9': 4, '10': 'deviceType', '17': true},
    {'1': 'is_verified', '3': 13, '4': 1, '5': 8, '9': 5, '10': 'isVerified', '17': true},
    {'1': 'user_type', '3': 14, '4': 1, '5': 14, '6': '.qreeket.UserType', '9': 6, '10': 'userType', '17': true},
    {'1': 'college_id', '3': 15, '4': 1, '5': 9, '10': 'collegeId'},
    {'1': 'email', '3': 16, '4': 1, '5': 9, '9': 7, '10': 'email', '17': true},
    {'1': 'is_visible', '3': 17, '4': 1, '5': 8, '9': 8, '10': 'isVisible', '17': true},
  ],
  '8': [
    {'1': '_phone_number'},
    {'1': '_avatar_url'},
    {'1': '_device_id'},
    {'1': '_device_token'},
    {'1': '_device_type'},
    {'1': '_is_verified'},
    {'1': '_user_type'},
    {'1': '_email'},
    {'1': '_is_visible'},
  ],
};

/// Descriptor for `Account`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountDescriptor = $convert.base64Decode(
    'CgdBY2NvdW50Eg4KAmlkGAEgASgJUgJpZBImCgxwaG9uZV9udW1iZXIYAiABKAlIAFILcGhvbm'
    'VOdW1iZXKIAQESGgoIdXNlcm5hbWUYAyABKAlSCHVzZXJuYW1lEh8KC2xhbmd1YWdlX2lkGAQg'
    'ASgJUgpsYW5ndWFnZUlkEjEKCnVwZGF0ZWRfYXQYBiABKAsyEi5xcmVla2V0LlRpbWVzdGFtcF'
    'IJdXBkYXRlZEF0EjEKCmNyZWF0ZWRfYXQYBSABKAsyEi5xcmVla2V0LlRpbWVzdGFtcFIJY3Jl'
    'YXRlZEF0EiIKCmF2YXRhcl91cmwYByABKAlIAVIJYXZhdGFyVXJsiAEBEh0KCmNvdW50cnlfaW'
    'QYCSABKAlSCWNvdW50cnlJZBIgCglkZXZpY2VfaWQYCiABKAlIAlIIZGV2aWNlSWSIAQESJgoM'
    'ZGV2aWNlX3Rva2VuGAsgASgJSANSC2RldmljZVRva2VuiAEBEiQKC2RldmljZV90eXBlGAwgAS'
    'gJSARSCmRldmljZVR5cGWIAQESJAoLaXNfdmVyaWZpZWQYDSABKAhIBVIKaXNWZXJpZmllZIgB'
    'ARIzCgl1c2VyX3R5cGUYDiABKA4yES5xcmVla2V0LlVzZXJUeXBlSAZSCHVzZXJUeXBliAEBEh'
    '0KCmNvbGxlZ2VfaWQYDyABKAlSCWNvbGxlZ2VJZBIZCgVlbWFpbBgQIAEoCUgHUgVlbWFpbIgB'
    'ARIiCgppc192aXNpYmxlGBEgASgISAhSCWlzVmlzaWJsZYgBAUIPCg1fcGhvbmVfbnVtYmVyQg'
    '0KC19hdmF0YXJfdXJsQgwKCl9kZXZpY2VfaWRCDwoNX2RldmljZV90b2tlbkIOCgxfZGV2aWNl'
    'X3R5cGVCDgoMX2lzX3ZlcmlmaWVkQgwKCl91c2VyX3R5cGVCCAoGX2VtYWlsQg0KC19pc192aX'
    'NpYmxl');

@$core.Deprecated('Use accessTokenStoreDescriptor instead')
const AccessTokenStore$json = {
  '1': 'AccessTokenStore',
  '2': [
    {'1': 'access_token', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
    {'1': 'refresh_token', '3': 3, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `AccessTokenStore`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accessTokenStoreDescriptor = $convert.base64Decode(
    'ChBBY2Nlc3NUb2tlblN0b3JlEiEKDGFjY2Vzc190b2tlbhgBIAEoCVILYWNjZXNzVG9rZW4SIw'
    'oNcmVmcmVzaF90b2tlbhgDIAEoCVIMcmVmcmVzaFRva2Vu');

@$core.Deprecated('Use countryDescriptor instead')
const Country$json = {
  '1': 'Country',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'code', '3': 3, '4': 1, '5': 9, '10': 'code'},
    {'1': 'dial_code', '3': 4, '4': 1, '5': 9, '10': 'dialCode'},
    {'1': 'currency', '3': 5, '4': 1, '5': 9, '10': 'currency'},
    {'1': 'currency_symbol', '3': 6, '4': 1, '5': 9, '10': 'currencySymbol'},
    {'1': 'flag_url', '3': 7, '4': 1, '5': 9, '10': 'flagUrl'},
    {'1': 'language_id', '3': 8, '4': 1, '5': 9, '10': 'languageId'},
  ],
};

/// Descriptor for `Country`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List countryDescriptor = $convert.base64Decode(
    'CgdDb3VudHJ5Eg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhIKBGNvZGUYAy'
    'ABKAlSBGNvZGUSGwoJZGlhbF9jb2RlGAQgASgJUghkaWFsQ29kZRIaCghjdXJyZW5jeRgFIAEo'
    'CVIIY3VycmVuY3kSJwoPY3VycmVuY3lfc3ltYm9sGAYgASgJUg5jdXJyZW5jeVN5bWJvbBIZCg'
    'hmbGFnX3VybBgHIAEoCVIHZmxhZ1VybBIfCgtsYW5ndWFnZV9pZBgIIAEoCVIKbGFuZ3VhZ2VJ'
    'ZA==');

@$core.Deprecated('Use collegeDescriptor instead')
const College$json = {
  '1': 'College',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'address', '3': 3, '4': 1, '5': 9, '10': 'address'},
    {'1': 'logo_url', '3': 4, '4': 1, '5': 9, '10': 'logoUrl'},
    {'1': 'website', '3': 5, '4': 1, '5': 9, '10': 'website'},
    {'1': 'country_id', '3': 6, '4': 1, '5': 9, '10': 'countryId'},
    {'1': 'banner_url', '3': 7, '4': 1, '5': 9, '9': 0, '10': 'bannerUrl', '17': true},
  ],
  '8': [
    {'1': '_banner_url'},
  ],
};

/// Descriptor for `College`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collegeDescriptor = $convert.base64Decode(
    'CgdDb2xsZWdlEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhgKB2FkZHJlc3'
    'MYAyABKAlSB2FkZHJlc3MSGQoIbG9nb191cmwYBCABKAlSB2xvZ29VcmwSGAoHd2Vic2l0ZRgF'
    'IAEoCVIHd2Vic2l0ZRIdCgpjb3VudHJ5X2lkGAYgASgJUgljb3VudHJ5SWQSIgoKYmFubmVyX3'
    'VybBgHIAEoCUgAUgliYW5uZXJVcmyIAQFCDQoLX2Jhbm5lcl91cmw=');

