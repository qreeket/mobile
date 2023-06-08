///
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use userTypeDescriptor instead')
const UserType$json = const {
  '1': 'UserType',
  '2': const [
    const {'1': 'standard', '2': 0},
    const {'1': 'premium', '2': 1},
  ],
};

/// Descriptor for `UserType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List userTypeDescriptor = $convert.base64Decode('CghVc2VyVHlwZRIMCghzdGFuZGFyZBAAEgsKB3ByZW1pdW0QAQ==');
@$core.Deprecated('Use authenticateWithSocialAccountRequestDescriptor instead')
const AuthenticateWithSocialAccountRequest$json = const {
  '1': 'AuthenticateWithSocialAccountRequest',
  '2': const [
    const {'1': 'phone_number', '3': 1, '4': 1, '5': 9, '10': 'phoneNumber'},
    const {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'avatar_url', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'avatarUrl'},
    const {'1': 'avatar_data', '3': 4, '4': 1, '5': 12, '9': 0, '10': 'avatarData'},
    const {'1': 'country_id', '3': 5, '4': 1, '5': 9, '10': 'countryId'},
    const {'1': 'college_id', '3': 6, '4': 1, '5': 9, '10': 'collegeId'},
    const {'1': 'email', '3': 7, '4': 1, '5': 9, '10': 'email'},
  ],
  '8': const [
    const {'1': 'auth_avatar'},
  ],
};

/// Descriptor for `AuthenticateWithSocialAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authenticateWithSocialAccountRequestDescriptor = $convert.base64Decode('CiRBdXRoZW50aWNhdGVXaXRoU29jaWFsQWNjb3VudFJlcXVlc3QSIQoMcGhvbmVfbnVtYmVyGAEgASgJUgtwaG9uZU51bWJlchIaCgh1c2VybmFtZRgCIAEoCVIIdXNlcm5hbWUSHwoKYXZhdGFyX3VybBgDIAEoCUgAUglhdmF0YXJVcmwSIQoLYXZhdGFyX2RhdGEYBCABKAxIAFIKYXZhdGFyRGF0YRIdCgpjb3VudHJ5X2lkGAUgASgJUgljb3VudHJ5SWQSHQoKY29sbGVnZV9pZBgGIAEoCVIJY29sbGVnZUlkEhQKBWVtYWlsGAcgASgJUgVlbWFpbEINCgthdXRoX2F2YXRhcg==');
@$core.Deprecated('Use getCollegesResponseDescriptor instead')
const GetCollegesResponse$json = const {
  '1': 'GetCollegesResponse',
  '2': const [
    const {'1': 'colleges', '3': 1, '4': 3, '5': 11, '6': '.qreeket.College', '10': 'colleges'},
  ],
};

/// Descriptor for `GetCollegesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCollegesResponseDescriptor = $convert.base64Decode('ChNHZXRDb2xsZWdlc1Jlc3BvbnNlEiwKCGNvbGxlZ2VzGAEgAygLMhAucXJlZWtldC5Db2xsZWdlUghjb2xsZWdlcw==');
@$core.Deprecated('Use getCountriesResponseDescriptor instead')
const GetCountriesResponse$json = const {
  '1': 'GetCountriesResponse',
  '2': const [
    const {'1': 'countries', '3': 1, '4': 3, '5': 11, '6': '.qreeket.Country', '10': 'countries'},
  ],
};

/// Descriptor for `GetCountriesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCountriesResponseDescriptor = $convert.base64Decode('ChRHZXRDb3VudHJpZXNSZXNwb25zZRIuCgljb3VudHJpZXMYASADKAsyEC5xcmVla2V0LkNvdW50cnlSCWNvdW50cmllcw==');
@$core.Deprecated('Use validateAccessTokenResponseDescriptor instead')
const ValidateAccessTokenResponse$json = const {
  '1': 'ValidateAccessTokenResponse',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'accountId', '17': true},
    const {'1': 'phone_number', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'phoneNumber', '17': true},
    const {'1': 'username', '3': 3, '4': 1, '5': 9, '9': 2, '10': 'username', '17': true},
  ],
  '8': const [
    const {'1': '_account_id'},
    const {'1': '_phone_number'},
    const {'1': '_username'},
  ],
};

/// Descriptor for `ValidateAccessTokenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateAccessTokenResponseDescriptor = $convert.base64Decode('ChtWYWxpZGF0ZUFjY2Vzc1Rva2VuUmVzcG9uc2USIgoKYWNjb3VudF9pZBgBIAEoCUgAUglhY2NvdW50SWSIAQESJgoMcGhvbmVfbnVtYmVyGAIgASgJSAFSC3Bob25lTnVtYmVyiAEBEh8KCHVzZXJuYW1lGAMgASgJSAJSCHVzZXJuYW1liAEBQg0KC19hY2NvdW50X2lkQg8KDV9waG9uZV9udW1iZXJCCwoJX3VzZXJuYW1l');
@$core.Deprecated('Use requestPasswordResetRequestDescriptor instead')
const RequestPasswordResetRequest$json = const {
  '1': 'RequestPasswordResetRequest',
  '2': const [
    const {'1': 'phone_number', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'phoneNumber'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'email'},
  ],
  '8': const [
    const {'1': 'request_password_reset_payload'},
  ],
};

/// Descriptor for `RequestPasswordResetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestPasswordResetRequestDescriptor = $convert.base64Decode('ChtSZXF1ZXN0UGFzc3dvcmRSZXNldFJlcXVlc3QSIwoMcGhvbmVfbnVtYmVyGAEgASgJSABSC3Bob25lTnVtYmVyEhYKBWVtYWlsGAIgASgJSABSBWVtYWlsQiAKHnJlcXVlc3RfcGFzc3dvcmRfcmVzZXRfcGF5bG9hZA==');
@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = const {
  '1': 'LoginRequest',
  '2': const [
    const {'1': 'phone_number', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'phoneNumber'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'email'},
    const {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'country_id', '3': 4, '4': 1, '5': 9, '10': 'countryId'},
  ],
  '8': const [
    const {'1': 'payload'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode('CgxMb2dpblJlcXVlc3QSIwoMcGhvbmVfbnVtYmVyGAEgASgJSABSC3Bob25lTnVtYmVyEhYKBWVtYWlsGAIgASgJSABSBWVtYWlsEhoKCHBhc3N3b3JkGAMgASgJUghwYXNzd29yZBIdCgpjb3VudHJ5X2lkGAQgASgJUgljb3VudHJ5SWRCCQoHcGF5bG9hZA==');
@$core.Deprecated('Use registerRequestDescriptor instead')
const RegisterRequest$json = const {
  '1': 'RegisterRequest',
  '2': const [
    const {'1': 'phone_number', '3': 1, '4': 1, '5': 9, '9': 1, '10': 'phoneNumber', '17': true},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'username', '3': 4, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'avatar_url', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'avatarUrl'},
    const {'1': 'avatar_data', '3': 6, '4': 1, '5': 12, '9': 0, '10': 'avatarData'},
    const {'1': 'country_id', '3': 9, '4': 1, '5': 9, '10': 'countryId'},
    const {'1': 'college_id', '3': 10, '4': 1, '5': 9, '10': 'collegeId'},
    const {'1': 'email', '3': 11, '4': 1, '5': 9, '9': 2, '10': 'email', '17': true},
  ],
  '8': const [
    const {'1': 'avatar'},
    const {'1': '_phone_number'},
    const {'1': '_email'},
  ],
};

/// Descriptor for `RegisterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerRequestDescriptor = $convert.base64Decode('Cg9SZWdpc3RlclJlcXVlc3QSJgoMcGhvbmVfbnVtYmVyGAEgASgJSAFSC3Bob25lTnVtYmVyiAEBEhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZBIaCgh1c2VybmFtZRgEIAEoCVIIdXNlcm5hbWUSHwoKYXZhdGFyX3VybBgFIAEoCUgAUglhdmF0YXJVcmwSIQoLYXZhdGFyX2RhdGEYBiABKAxIAFIKYXZhdGFyRGF0YRIdCgpjb3VudHJ5X2lkGAkgASgJUgljb3VudHJ5SWQSHQoKY29sbGVnZV9pZBgKIAEoCVIJY29sbGVnZUlkEhkKBWVtYWlsGAsgASgJSAJSBWVtYWlsiAEBQggKBmF2YXRhckIPCg1fcGhvbmVfbnVtYmVyQggKBl9lbWFpbA==');
@$core.Deprecated('Use resetPasswordRequestDescriptor instead')
const ResetPasswordRequest$json = const {
  '1': 'ResetPasswordRequest',
  '2': const [
    const {'1': 'phone_number', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'phoneNumber'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'email'},
    const {'1': 'password', '3': 4, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'reset_token', '3': 5, '4': 1, '5': 9, '10': 'resetToken'},
  ],
  '8': const [
    const {'1': 'reset_payload'},
  ],
};

/// Descriptor for `ResetPasswordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resetPasswordRequestDescriptor = $convert.base64Decode('ChRSZXNldFBhc3N3b3JkUmVxdWVzdBIjCgxwaG9uZV9udW1iZXIYASABKAlIAFILcGhvbmVOdW1iZXISFgoFZW1haWwYAiABKAlIAFIFZW1haWwSGgoIcGFzc3dvcmQYBCABKAlSCHBhc3N3b3JkEh8KC3Jlc2V0X3Rva2VuGAUgASgJUgpyZXNldFRva2VuQg8KDXJlc2V0X3BheWxvYWQ=');
@$core.Deprecated('Use accountDescriptor instead')
const Account$json = const {
  '1': 'Account',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'phone_number', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'phoneNumber', '17': true},
    const {'1': 'username', '3': 3, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'language_id', '3': 4, '4': 1, '5': 9, '10': 'languageId'},
    const {'1': 'created_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    const {'1': 'avatar_url', '3': 7, '4': 1, '5': 9, '9': 1, '10': 'avatarUrl', '17': true},
    const {'1': 'country_id', '3': 9, '4': 1, '5': 9, '10': 'countryId'},
    const {'1': 'device_id', '3': 10, '4': 1, '5': 9, '9': 2, '10': 'deviceId', '17': true},
    const {'1': 'device_token', '3': 11, '4': 1, '5': 9, '9': 3, '10': 'deviceToken', '17': true},
    const {'1': 'device_type', '3': 12, '4': 1, '5': 9, '9': 4, '10': 'deviceType', '17': true},
    const {'1': 'is_verified', '3': 13, '4': 1, '5': 8, '9': 5, '10': 'isVerified', '17': true},
    const {'1': 'user_type', '3': 14, '4': 1, '5': 14, '6': '.qreeket.UserType', '9': 6, '10': 'userType', '17': true},
    const {'1': 'college_id', '3': 15, '4': 1, '5': 9, '10': 'collegeId'},
    const {'1': 'email', '3': 16, '4': 1, '5': 9, '9': 7, '10': 'email', '17': true},
    const {'1': 'is_visible', '3': 17, '4': 1, '5': 8, '9': 8, '10': 'isVisible', '17': true},
  ],
  '8': const [
    const {'1': '_phone_number'},
    const {'1': '_avatar_url'},
    const {'1': '_device_id'},
    const {'1': '_device_token'},
    const {'1': '_device_type'},
    const {'1': '_is_verified'},
    const {'1': '_user_type'},
    const {'1': '_email'},
    const {'1': '_is_visible'},
  ],
};

/// Descriptor for `Account`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountDescriptor = $convert.base64Decode('CgdBY2NvdW50Eg4KAmlkGAEgASgJUgJpZBImCgxwaG9uZV9udW1iZXIYAiABKAlIAFILcGhvbmVOdW1iZXKIAQESGgoIdXNlcm5hbWUYAyABKAlSCHVzZXJuYW1lEh8KC2xhbmd1YWdlX2lkGAQgASgJUgpsYW5ndWFnZUlkEjkKCmNyZWF0ZWRfYXQYBSABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgljcmVhdGVkQXQSOQoKdXBkYXRlZF9hdBgGIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCXVwZGF0ZWRBdBIiCgphdmF0YXJfdXJsGAcgASgJSAFSCWF2YXRhclVybIgBARIdCgpjb3VudHJ5X2lkGAkgASgJUgljb3VudHJ5SWQSIAoJZGV2aWNlX2lkGAogASgJSAJSCGRldmljZUlkiAEBEiYKDGRldmljZV90b2tlbhgLIAEoCUgDUgtkZXZpY2VUb2tlbogBARIkCgtkZXZpY2VfdHlwZRgMIAEoCUgEUgpkZXZpY2VUeXBliAEBEiQKC2lzX3ZlcmlmaWVkGA0gASgISAVSCmlzVmVyaWZpZWSIAQESMwoJdXNlcl90eXBlGA4gASgOMhEucXJlZWtldC5Vc2VyVHlwZUgGUgh1c2VyVHlwZYgBARIdCgpjb2xsZWdlX2lkGA8gASgJUgljb2xsZWdlSWQSGQoFZW1haWwYECABKAlIB1IFZW1haWyIAQESIgoKaXNfdmlzaWJsZRgRIAEoCEgIUglpc1Zpc2libGWIAQFCDwoNX3Bob25lX251bWJlckINCgtfYXZhdGFyX3VybEIMCgpfZGV2aWNlX2lkQg8KDV9kZXZpY2VfdG9rZW5CDgoMX2RldmljZV90eXBlQg4KDF9pc192ZXJpZmllZEIMCgpfdXNlcl90eXBlQggKBl9lbWFpbEINCgtfaXNfdmlzaWJsZQ==');
@$core.Deprecated('Use accessTokenStoreDescriptor instead')
const AccessTokenStore$json = const {
  '1': 'AccessTokenStore',
  '2': const [
    const {'1': 'access_token', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
    const {'1': 'refresh_token', '3': 3, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `AccessTokenStore`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accessTokenStoreDescriptor = $convert.base64Decode('ChBBY2Nlc3NUb2tlblN0b3JlEiEKDGFjY2Vzc190b2tlbhgBIAEoCVILYWNjZXNzVG9rZW4SIwoNcmVmcmVzaF90b2tlbhgDIAEoCVIMcmVmcmVzaFRva2Vu');
@$core.Deprecated('Use countryDescriptor instead')
const Country$json = const {
  '1': 'Country',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'code', '3': 3, '4': 1, '5': 9, '10': 'code'},
    const {'1': 'dial_code', '3': 4, '4': 1, '5': 9, '10': 'dialCode'},
    const {'1': 'currency', '3': 5, '4': 1, '5': 9, '10': 'currency'},
    const {'1': 'currency_symbol', '3': 6, '4': 1, '5': 9, '10': 'currencySymbol'},
    const {'1': 'flag_url', '3': 7, '4': 1, '5': 9, '10': 'flagUrl'},
    const {'1': 'language_id', '3': 8, '4': 1, '5': 9, '10': 'languageId'},
  ],
};

/// Descriptor for `Country`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List countryDescriptor = $convert.base64Decode('CgdDb3VudHJ5Eg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhIKBGNvZGUYAyABKAlSBGNvZGUSGwoJZGlhbF9jb2RlGAQgASgJUghkaWFsQ29kZRIaCghjdXJyZW5jeRgFIAEoCVIIY3VycmVuY3kSJwoPY3VycmVuY3lfc3ltYm9sGAYgASgJUg5jdXJyZW5jeVN5bWJvbBIZCghmbGFnX3VybBgHIAEoCVIHZmxhZ1VybBIfCgtsYW5ndWFnZV9pZBgIIAEoCVIKbGFuZ3VhZ2VJZA==');
@$core.Deprecated('Use collegeDescriptor instead')
const College$json = const {
  '1': 'College',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'address', '3': 3, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'logo_url', '3': 4, '4': 1, '5': 9, '10': 'logoUrl'},
    const {'1': 'website', '3': 5, '4': 1, '5': 9, '10': 'website'},
    const {'1': 'country_id', '3': 6, '4': 1, '5': 9, '10': 'countryId'},
    const {'1': 'banner_url', '3': 7, '4': 1, '5': 9, '9': 0, '10': 'bannerUrl', '17': true},
  ],
  '8': const [
    const {'1': '_banner_url'},
  ],
};

/// Descriptor for `College`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collegeDescriptor = $convert.base64Decode('CgdDb2xsZWdlEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhgKB2FkZHJlc3MYAyABKAlSB2FkZHJlc3MSGQoIbG9nb191cmwYBCABKAlSB2xvZ29VcmwSGAoHd2Vic2l0ZRgFIAEoCVIHd2Vic2l0ZRIdCgpjb3VudHJ5X2lkGAYgASgJUgljb3VudHJ5SWQSIgoKYmFubmVyX3VybBgHIAEoCUgAUgliYW5uZXJVcmyIAQFCDQoLX2Jhbm5lcl91cmw=');
