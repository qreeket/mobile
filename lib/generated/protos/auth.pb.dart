//
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'auth.pbenum.dart';
import 'common.pb.dart' as $0;

export 'auth.pbenum.dart';

enum AuthenticateWithSocialAccountRequest_AuthAvatar {
  avatarUrl, 
  avatarData, 
  notSet
}

class AuthenticateWithSocialAccountRequest extends $pb.GeneratedMessage {
  factory AuthenticateWithSocialAccountRequest({
    $core.String? phoneNumber,
    $core.String? username,
    $core.String? avatarUrl,
    $core.List<$core.int>? avatarData,
    $core.String? countryId,
    $core.String? collegeId,
    $core.String? email,
  }) {
    final $result = create();
    if (phoneNumber != null) {
      $result.phoneNumber = phoneNumber;
    }
    if (username != null) {
      $result.username = username;
    }
    if (avatarUrl != null) {
      $result.avatarUrl = avatarUrl;
    }
    if (avatarData != null) {
      $result.avatarData = avatarData;
    }
    if (countryId != null) {
      $result.countryId = countryId;
    }
    if (collegeId != null) {
      $result.collegeId = collegeId;
    }
    if (email != null) {
      $result.email = email;
    }
    return $result;
  }
  AuthenticateWithSocialAccountRequest._() : super();
  factory AuthenticateWithSocialAccountRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthenticateWithSocialAccountRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, AuthenticateWithSocialAccountRequest_AuthAvatar> _AuthenticateWithSocialAccountRequest_AuthAvatarByTag = {
    3 : AuthenticateWithSocialAccountRequest_AuthAvatar.avatarUrl,
    4 : AuthenticateWithSocialAccountRequest_AuthAvatar.avatarData,
    0 : AuthenticateWithSocialAccountRequest_AuthAvatar.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuthenticateWithSocialAccountRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..oo(0, [3, 4])
    ..aOS(1, _omitFieldNames ? '' : 'phoneNumber')
    ..aOS(2, _omitFieldNames ? '' : 'username')
    ..aOS(3, _omitFieldNames ? '' : 'avatarUrl')
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'avatarData', $pb.PbFieldType.OY)
    ..aOS(5, _omitFieldNames ? '' : 'countryId')
    ..aOS(6, _omitFieldNames ? '' : 'collegeId')
    ..aOS(7, _omitFieldNames ? '' : 'email')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthenticateWithSocialAccountRequest clone() => AuthenticateWithSocialAccountRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthenticateWithSocialAccountRequest copyWith(void Function(AuthenticateWithSocialAccountRequest) updates) => super.copyWith((message) => updates(message as AuthenticateWithSocialAccountRequest)) as AuthenticateWithSocialAccountRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthenticateWithSocialAccountRequest create() => AuthenticateWithSocialAccountRequest._();
  AuthenticateWithSocialAccountRequest createEmptyInstance() => create();
  static $pb.PbList<AuthenticateWithSocialAccountRequest> createRepeated() => $pb.PbList<AuthenticateWithSocialAccountRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthenticateWithSocialAccountRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthenticateWithSocialAccountRequest>(create);
  static AuthenticateWithSocialAccountRequest? _defaultInstance;

  AuthenticateWithSocialAccountRequest_AuthAvatar whichAuthAvatar() => _AuthenticateWithSocialAccountRequest_AuthAvatarByTag[$_whichOneof(0)]!;
  void clearAuthAvatar() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get phoneNumber => $_getSZ(0);
  @$pb.TagNumber(1)
  set phoneNumber($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhoneNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhoneNumber() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(2)
  set username($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsername() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get avatarUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set avatarUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAvatarUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatarUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get avatarData => $_getN(3);
  @$pb.TagNumber(4)
  set avatarData($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAvatarData() => $_has(3);
  @$pb.TagNumber(4)
  void clearAvatarData() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get countryId => $_getSZ(4);
  @$pb.TagNumber(5)
  set countryId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCountryId() => $_has(4);
  @$pb.TagNumber(5)
  void clearCountryId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get collegeId => $_getSZ(5);
  @$pb.TagNumber(6)
  set collegeId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCollegeId() => $_has(5);
  @$pb.TagNumber(6)
  void clearCollegeId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get email => $_getSZ(6);
  @$pb.TagNumber(7)
  set email($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasEmail() => $_has(6);
  @$pb.TagNumber(7)
  void clearEmail() => clearField(7);
}

class GetCollegesResponse extends $pb.GeneratedMessage {
  factory GetCollegesResponse({
    $core.Iterable<College>? colleges,
  }) {
    final $result = create();
    if (colleges != null) {
      $result.colleges.addAll(colleges);
    }
    return $result;
  }
  GetCollegesResponse._() : super();
  factory GetCollegesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCollegesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCollegesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..pc<College>(1, _omitFieldNames ? '' : 'colleges', $pb.PbFieldType.PM, subBuilder: College.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCollegesResponse clone() => GetCollegesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCollegesResponse copyWith(void Function(GetCollegesResponse) updates) => super.copyWith((message) => updates(message as GetCollegesResponse)) as GetCollegesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCollegesResponse create() => GetCollegesResponse._();
  GetCollegesResponse createEmptyInstance() => create();
  static $pb.PbList<GetCollegesResponse> createRepeated() => $pb.PbList<GetCollegesResponse>();
  @$core.pragma('dart2js:noInline')
  static GetCollegesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCollegesResponse>(create);
  static GetCollegesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<College> get colleges => $_getList(0);
}

class GetCountriesResponse extends $pb.GeneratedMessage {
  factory GetCountriesResponse({
    $core.Iterable<Country>? countries,
  }) {
    final $result = create();
    if (countries != null) {
      $result.countries.addAll(countries);
    }
    return $result;
  }
  GetCountriesResponse._() : super();
  factory GetCountriesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCountriesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCountriesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..pc<Country>(1, _omitFieldNames ? '' : 'countries', $pb.PbFieldType.PM, subBuilder: Country.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCountriesResponse clone() => GetCountriesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCountriesResponse copyWith(void Function(GetCountriesResponse) updates) => super.copyWith((message) => updates(message as GetCountriesResponse)) as GetCountriesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCountriesResponse create() => GetCountriesResponse._();
  GetCountriesResponse createEmptyInstance() => create();
  static $pb.PbList<GetCountriesResponse> createRepeated() => $pb.PbList<GetCountriesResponse>();
  @$core.pragma('dart2js:noInline')
  static GetCountriesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCountriesResponse>(create);
  static GetCountriesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Country> get countries => $_getList(0);
}

/// validate access token response message
class ValidateAccessTokenResponse extends $pb.GeneratedMessage {
  factory ValidateAccessTokenResponse({
    $core.String? accountId,
    $core.String? phoneNumber,
    $core.String? username,
  }) {
    final $result = create();
    if (accountId != null) {
      $result.accountId = accountId;
    }
    if (phoneNumber != null) {
      $result.phoneNumber = phoneNumber;
    }
    if (username != null) {
      $result.username = username;
    }
    return $result;
  }
  ValidateAccessTokenResponse._() : super();
  factory ValidateAccessTokenResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidateAccessTokenResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ValidateAccessTokenResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'accountId')
    ..aOS(2, _omitFieldNames ? '' : 'phoneNumber')
    ..aOS(3, _omitFieldNames ? '' : 'username')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidateAccessTokenResponse clone() => ValidateAccessTokenResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidateAccessTokenResponse copyWith(void Function(ValidateAccessTokenResponse) updates) => super.copyWith((message) => updates(message as ValidateAccessTokenResponse)) as ValidateAccessTokenResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValidateAccessTokenResponse create() => ValidateAccessTokenResponse._();
  ValidateAccessTokenResponse createEmptyInstance() => create();
  static $pb.PbList<ValidateAccessTokenResponse> createRepeated() => $pb.PbList<ValidateAccessTokenResponse>();
  @$core.pragma('dart2js:noInline')
  static ValidateAccessTokenResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidateAccessTokenResponse>(create);
  static ValidateAccessTokenResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get phoneNumber => $_getSZ(1);
  @$pb.TagNumber(2)
  set phoneNumber($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPhoneNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearPhoneNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get username => $_getSZ(2);
  @$pb.TagNumber(3)
  set username($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUsername() => $_has(2);
  @$pb.TagNumber(3)
  void clearUsername() => clearField(3);
}

enum RequestPasswordResetRequest_RequestPasswordResetPayload {
  phoneNumber, 
  email, 
  notSet
}

class RequestPasswordResetRequest extends $pb.GeneratedMessage {
  factory RequestPasswordResetRequest({
    $core.String? phoneNumber,
    $core.String? email,
  }) {
    final $result = create();
    if (phoneNumber != null) {
      $result.phoneNumber = phoneNumber;
    }
    if (email != null) {
      $result.email = email;
    }
    return $result;
  }
  RequestPasswordResetRequest._() : super();
  factory RequestPasswordResetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestPasswordResetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, RequestPasswordResetRequest_RequestPasswordResetPayload> _RequestPasswordResetRequest_RequestPasswordResetPayloadByTag = {
    1 : RequestPasswordResetRequest_RequestPasswordResetPayload.phoneNumber,
    2 : RequestPasswordResetRequest_RequestPasswordResetPayload.email,
    0 : RequestPasswordResetRequest_RequestPasswordResetPayload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RequestPasswordResetRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOS(1, _omitFieldNames ? '' : 'phoneNumber')
    ..aOS(2, _omitFieldNames ? '' : 'email')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RequestPasswordResetRequest clone() => RequestPasswordResetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RequestPasswordResetRequest copyWith(void Function(RequestPasswordResetRequest) updates) => super.copyWith((message) => updates(message as RequestPasswordResetRequest)) as RequestPasswordResetRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequestPasswordResetRequest create() => RequestPasswordResetRequest._();
  RequestPasswordResetRequest createEmptyInstance() => create();
  static $pb.PbList<RequestPasswordResetRequest> createRepeated() => $pb.PbList<RequestPasswordResetRequest>();
  @$core.pragma('dart2js:noInline')
  static RequestPasswordResetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestPasswordResetRequest>(create);
  static RequestPasswordResetRequest? _defaultInstance;

  RequestPasswordResetRequest_RequestPasswordResetPayload whichRequestPasswordResetPayload() => _RequestPasswordResetRequest_RequestPasswordResetPayloadByTag[$_whichOneof(0)]!;
  void clearRequestPasswordResetPayload() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get phoneNumber => $_getSZ(0);
  @$pb.TagNumber(1)
  set phoneNumber($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhoneNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhoneNumber() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);
}

enum LoginRequest_Payload {
  phoneNumber, 
  email, 
  notSet
}

/// login request message
class LoginRequest extends $pb.GeneratedMessage {
  factory LoginRequest({
    $core.String? phoneNumber,
    $core.String? email,
    $core.String? password,
    $core.String? countryId,
  }) {
    final $result = create();
    if (phoneNumber != null) {
      $result.phoneNumber = phoneNumber;
    }
    if (email != null) {
      $result.email = email;
    }
    if (password != null) {
      $result.password = password;
    }
    if (countryId != null) {
      $result.countryId = countryId;
    }
    return $result;
  }
  LoginRequest._() : super();
  factory LoginRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, LoginRequest_Payload> _LoginRequest_PayloadByTag = {
    1 : LoginRequest_Payload.phoneNumber,
    2 : LoginRequest_Payload.email,
    0 : LoginRequest_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LoginRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOS(1, _omitFieldNames ? '' : 'phoneNumber')
    ..aOS(2, _omitFieldNames ? '' : 'email')
    ..aOS(3, _omitFieldNames ? '' : 'password')
    ..aOS(4, _omitFieldNames ? '' : 'countryId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginRequest clone() => LoginRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginRequest copyWith(void Function(LoginRequest) updates) => super.copyWith((message) => updates(message as LoginRequest)) as LoginRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginRequest create() => LoginRequest._();
  LoginRequest createEmptyInstance() => create();
  static $pb.PbList<LoginRequest> createRepeated() => $pb.PbList<LoginRequest>();
  @$core.pragma('dart2js:noInline')
  static LoginRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginRequest>(create);
  static LoginRequest? _defaultInstance;

  LoginRequest_Payload whichPayload() => _LoginRequest_PayloadByTag[$_whichOneof(0)]!;
  void clearPayload() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get phoneNumber => $_getSZ(0);
  @$pb.TagNumber(1)
  set phoneNumber($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhoneNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhoneNumber() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get password => $_getSZ(2);
  @$pb.TagNumber(3)
  set password($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearPassword() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get countryId => $_getSZ(3);
  @$pb.TagNumber(4)
  set countryId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCountryId() => $_has(3);
  @$pb.TagNumber(4)
  void clearCountryId() => clearField(4);
}

enum RegisterRequest_Avatar {
  avatarUrl, 
  avatarData, 
  notSet
}

class RegisterRequest extends $pb.GeneratedMessage {
  factory RegisterRequest({
    $core.String? phoneNumber,
    $core.String? password,
    $core.String? username,
    $core.String? avatarUrl,
    $core.List<$core.int>? avatarData,
    $core.String? countryId,
    $core.String? collegeId,
    $core.String? email,
  }) {
    final $result = create();
    if (phoneNumber != null) {
      $result.phoneNumber = phoneNumber;
    }
    if (password != null) {
      $result.password = password;
    }
    if (username != null) {
      $result.username = username;
    }
    if (avatarUrl != null) {
      $result.avatarUrl = avatarUrl;
    }
    if (avatarData != null) {
      $result.avatarData = avatarData;
    }
    if (countryId != null) {
      $result.countryId = countryId;
    }
    if (collegeId != null) {
      $result.collegeId = collegeId;
    }
    if (email != null) {
      $result.email = email;
    }
    return $result;
  }
  RegisterRequest._() : super();
  factory RegisterRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, RegisterRequest_Avatar> _RegisterRequest_AvatarByTag = {
    5 : RegisterRequest_Avatar.avatarUrl,
    6 : RegisterRequest_Avatar.avatarData,
    0 : RegisterRequest_Avatar.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegisterRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..oo(0, [5, 6])
    ..aOS(1, _omitFieldNames ? '' : 'phoneNumber')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..aOS(4, _omitFieldNames ? '' : 'username')
    ..aOS(5, _omitFieldNames ? '' : 'avatarUrl')
    ..a<$core.List<$core.int>>(6, _omitFieldNames ? '' : 'avatarData', $pb.PbFieldType.OY)
    ..aOS(9, _omitFieldNames ? '' : 'countryId')
    ..aOS(10, _omitFieldNames ? '' : 'collegeId')
    ..aOS(11, _omitFieldNames ? '' : 'email')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterRequest clone() => RegisterRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterRequest copyWith(void Function(RegisterRequest) updates) => super.copyWith((message) => updates(message as RegisterRequest)) as RegisterRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterRequest create() => RegisterRequest._();
  RegisterRequest createEmptyInstance() => create();
  static $pb.PbList<RegisterRequest> createRepeated() => $pb.PbList<RegisterRequest>();
  @$core.pragma('dart2js:noInline')
  static RegisterRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterRequest>(create);
  static RegisterRequest? _defaultInstance;

  RegisterRequest_Avatar whichAvatar() => _RegisterRequest_AvatarByTag[$_whichOneof(0)]!;
  void clearAvatar() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get phoneNumber => $_getSZ(0);
  @$pb.TagNumber(1)
  set phoneNumber($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhoneNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhoneNumber() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$pb.TagNumber(4)
  $core.String get username => $_getSZ(2);
  @$pb.TagNumber(4)
  set username($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasUsername() => $_has(2);
  @$pb.TagNumber(4)
  void clearUsername() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get avatarUrl => $_getSZ(3);
  @$pb.TagNumber(5)
  set avatarUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasAvatarUrl() => $_has(3);
  @$pb.TagNumber(5)
  void clearAvatarUrl() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get avatarData => $_getN(4);
  @$pb.TagNumber(6)
  set avatarData($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasAvatarData() => $_has(4);
  @$pb.TagNumber(6)
  void clearAvatarData() => clearField(6);

  @$pb.TagNumber(9)
  $core.String get countryId => $_getSZ(5);
  @$pb.TagNumber(9)
  set countryId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(9)
  $core.bool hasCountryId() => $_has(5);
  @$pb.TagNumber(9)
  void clearCountryId() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get collegeId => $_getSZ(6);
  @$pb.TagNumber(10)
  set collegeId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(10)
  $core.bool hasCollegeId() => $_has(6);
  @$pb.TagNumber(10)
  void clearCollegeId() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get email => $_getSZ(7);
  @$pb.TagNumber(11)
  set email($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(11)
  $core.bool hasEmail() => $_has(7);
  @$pb.TagNumber(11)
  void clearEmail() => clearField(11);
}

enum ResetPasswordRequest_ResetPayload {
  phoneNumber, 
  email, 
  notSet
}

class ResetPasswordRequest extends $pb.GeneratedMessage {
  factory ResetPasswordRequest({
    $core.String? phoneNumber,
    $core.String? email,
    $core.String? password,
    $core.String? resetToken,
  }) {
    final $result = create();
    if (phoneNumber != null) {
      $result.phoneNumber = phoneNumber;
    }
    if (email != null) {
      $result.email = email;
    }
    if (password != null) {
      $result.password = password;
    }
    if (resetToken != null) {
      $result.resetToken = resetToken;
    }
    return $result;
  }
  ResetPasswordRequest._() : super();
  factory ResetPasswordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResetPasswordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ResetPasswordRequest_ResetPayload> _ResetPasswordRequest_ResetPayloadByTag = {
    1 : ResetPasswordRequest_ResetPayload.phoneNumber,
    2 : ResetPasswordRequest_ResetPayload.email,
    0 : ResetPasswordRequest_ResetPayload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResetPasswordRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOS(1, _omitFieldNames ? '' : 'phoneNumber')
    ..aOS(2, _omitFieldNames ? '' : 'email')
    ..aOS(4, _omitFieldNames ? '' : 'password')
    ..aOS(5, _omitFieldNames ? '' : 'resetToken')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResetPasswordRequest clone() => ResetPasswordRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResetPasswordRequest copyWith(void Function(ResetPasswordRequest) updates) => super.copyWith((message) => updates(message as ResetPasswordRequest)) as ResetPasswordRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResetPasswordRequest create() => ResetPasswordRequest._();
  ResetPasswordRequest createEmptyInstance() => create();
  static $pb.PbList<ResetPasswordRequest> createRepeated() => $pb.PbList<ResetPasswordRequest>();
  @$core.pragma('dart2js:noInline')
  static ResetPasswordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResetPasswordRequest>(create);
  static ResetPasswordRequest? _defaultInstance;

  ResetPasswordRequest_ResetPayload whichResetPayload() => _ResetPasswordRequest_ResetPayloadByTag[$_whichOneof(0)]!;
  void clearResetPayload() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get phoneNumber => $_getSZ(0);
  @$pb.TagNumber(1)
  set phoneNumber($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhoneNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhoneNumber() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

  @$pb.TagNumber(4)
  $core.String get password => $_getSZ(2);
  @$pb.TagNumber(4)
  set password($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasPassword() => $_has(2);
  @$pb.TagNumber(4)
  void clearPassword() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get resetToken => $_getSZ(3);
  @$pb.TagNumber(5)
  set resetToken($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasResetToken() => $_has(3);
  @$pb.TagNumber(5)
  void clearResetToken() => clearField(5);
}

class Account extends $pb.GeneratedMessage {
  factory Account({
    $core.String? id,
    $core.String? phoneNumber,
    $core.String? username,
    $core.String? languageId,
    $0.Timestamp? createdAt,
    $0.Timestamp? updatedAt,
    $core.String? avatarUrl,
    $core.String? countryId,
    $core.String? deviceId,
    $core.String? deviceToken,
    $core.String? deviceType,
    $core.bool? isVerified,
    UserType? userType,
    $core.String? collegeId,
    $core.String? email,
    $core.bool? isVisible,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (phoneNumber != null) {
      $result.phoneNumber = phoneNumber;
    }
    if (username != null) {
      $result.username = username;
    }
    if (languageId != null) {
      $result.languageId = languageId;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    if (avatarUrl != null) {
      $result.avatarUrl = avatarUrl;
    }
    if (countryId != null) {
      $result.countryId = countryId;
    }
    if (deviceId != null) {
      $result.deviceId = deviceId;
    }
    if (deviceToken != null) {
      $result.deviceToken = deviceToken;
    }
    if (deviceType != null) {
      $result.deviceType = deviceType;
    }
    if (isVerified != null) {
      $result.isVerified = isVerified;
    }
    if (userType != null) {
      $result.userType = userType;
    }
    if (collegeId != null) {
      $result.collegeId = collegeId;
    }
    if (email != null) {
      $result.email = email;
    }
    if (isVisible != null) {
      $result.isVisible = isVisible;
    }
    return $result;
  }
  Account._() : super();
  factory Account.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Account.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Account', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'phoneNumber')
    ..aOS(3, _omitFieldNames ? '' : 'username')
    ..aOS(4, _omitFieldNames ? '' : 'languageId')
    ..aOM<$0.Timestamp>(5, _omitFieldNames ? '' : 'createdAt', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(6, _omitFieldNames ? '' : 'updatedAt', subBuilder: $0.Timestamp.create)
    ..aOS(7, _omitFieldNames ? '' : 'avatarUrl')
    ..aOS(9, _omitFieldNames ? '' : 'countryId')
    ..aOS(10, _omitFieldNames ? '' : 'deviceId')
    ..aOS(11, _omitFieldNames ? '' : 'deviceToken')
    ..aOS(12, _omitFieldNames ? '' : 'deviceType')
    ..aOB(13, _omitFieldNames ? '' : 'isVerified')
    ..e<UserType>(14, _omitFieldNames ? '' : 'userType', $pb.PbFieldType.OE, defaultOrMaker: UserType.standard, valueOf: UserType.valueOf, enumValues: UserType.values)
    ..aOS(15, _omitFieldNames ? '' : 'collegeId')
    ..aOS(16, _omitFieldNames ? '' : 'email')
    ..aOB(17, _omitFieldNames ? '' : 'isVisible')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Account clone() => Account()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Account copyWith(void Function(Account) updates) => super.copyWith((message) => updates(message as Account)) as Account;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Account create() => Account._();
  Account createEmptyInstance() => create();
  static $pb.PbList<Account> createRepeated() => $pb.PbList<Account>();
  @$core.pragma('dart2js:noInline')
  static Account getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Account>(create);
  static Account? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get phoneNumber => $_getSZ(1);
  @$pb.TagNumber(2)
  set phoneNumber($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPhoneNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearPhoneNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get username => $_getSZ(2);
  @$pb.TagNumber(3)
  set username($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUsername() => $_has(2);
  @$pb.TagNumber(3)
  void clearUsername() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get languageId => $_getSZ(3);
  @$pb.TagNumber(4)
  set languageId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLanguageId() => $_has(3);
  @$pb.TagNumber(4)
  void clearLanguageId() => clearField(4);

  @$pb.TagNumber(5)
  $0.Timestamp get createdAt => $_getN(4);
  @$pb.TagNumber(5)
  set createdAt($0.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => clearField(5);
  @$pb.TagNumber(5)
  $0.Timestamp ensureCreatedAt() => $_ensure(4);

  @$pb.TagNumber(6)
  $0.Timestamp get updatedAt => $_getN(5);
  @$pb.TagNumber(6)
  set updatedAt($0.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasUpdatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdatedAt() => clearField(6);
  @$pb.TagNumber(6)
  $0.Timestamp ensureUpdatedAt() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.String get avatarUrl => $_getSZ(6);
  @$pb.TagNumber(7)
  set avatarUrl($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAvatarUrl() => $_has(6);
  @$pb.TagNumber(7)
  void clearAvatarUrl() => clearField(7);

  @$pb.TagNumber(9)
  $core.String get countryId => $_getSZ(7);
  @$pb.TagNumber(9)
  set countryId($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasCountryId() => $_has(7);
  @$pb.TagNumber(9)
  void clearCountryId() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get deviceId => $_getSZ(8);
  @$pb.TagNumber(10)
  set deviceId($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasDeviceId() => $_has(8);
  @$pb.TagNumber(10)
  void clearDeviceId() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get deviceToken => $_getSZ(9);
  @$pb.TagNumber(11)
  set deviceToken($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasDeviceToken() => $_has(9);
  @$pb.TagNumber(11)
  void clearDeviceToken() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get deviceType => $_getSZ(10);
  @$pb.TagNumber(12)
  set deviceType($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(12)
  $core.bool hasDeviceType() => $_has(10);
  @$pb.TagNumber(12)
  void clearDeviceType() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get isVerified => $_getBF(11);
  @$pb.TagNumber(13)
  set isVerified($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(13)
  $core.bool hasIsVerified() => $_has(11);
  @$pb.TagNumber(13)
  void clearIsVerified() => clearField(13);

  @$pb.TagNumber(14)
  UserType get userType => $_getN(12);
  @$pb.TagNumber(14)
  set userType(UserType v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasUserType() => $_has(12);
  @$pb.TagNumber(14)
  void clearUserType() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get collegeId => $_getSZ(13);
  @$pb.TagNumber(15)
  set collegeId($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(15)
  $core.bool hasCollegeId() => $_has(13);
  @$pb.TagNumber(15)
  void clearCollegeId() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get email => $_getSZ(14);
  @$pb.TagNumber(16)
  set email($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(16)
  $core.bool hasEmail() => $_has(14);
  @$pb.TagNumber(16)
  void clearEmail() => clearField(16);

  @$pb.TagNumber(17)
  $core.bool get isVisible => $_getBF(15);
  @$pb.TagNumber(17)
  set isVisible($core.bool v) { $_setBool(15, v); }
  @$pb.TagNumber(17)
  $core.bool hasIsVisible() => $_has(15);
  @$pb.TagNumber(17)
  void clearIsVisible() => clearField(17);
}

class AccessTokenStore extends $pb.GeneratedMessage {
  factory AccessTokenStore({
    $core.String? accessToken,
    $core.String? refreshToken,
  }) {
    final $result = create();
    if (accessToken != null) {
      $result.accessToken = accessToken;
    }
    if (refreshToken != null) {
      $result.refreshToken = refreshToken;
    }
    return $result;
  }
  AccessTokenStore._() : super();
  factory AccessTokenStore.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccessTokenStore.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AccessTokenStore', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'accessToken')
    ..aOS(3, _omitFieldNames ? '' : 'refreshToken')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccessTokenStore clone() => AccessTokenStore()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccessTokenStore copyWith(void Function(AccessTokenStore) updates) => super.copyWith((message) => updates(message as AccessTokenStore)) as AccessTokenStore;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccessTokenStore create() => AccessTokenStore._();
  AccessTokenStore createEmptyInstance() => create();
  static $pb.PbList<AccessTokenStore> createRepeated() => $pb.PbList<AccessTokenStore>();
  @$core.pragma('dart2js:noInline')
  static AccessTokenStore getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccessTokenStore>(create);
  static AccessTokenStore? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accessToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set accessToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessToken() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get refreshToken => $_getSZ(1);
  @$pb.TagNumber(3)
  set refreshToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasRefreshToken() => $_has(1);
  @$pb.TagNumber(3)
  void clearRefreshToken() => clearField(3);
}

class Country extends $pb.GeneratedMessage {
  factory Country({
    $core.String? id,
    $core.String? name,
    $core.String? code,
    $core.String? dialCode,
    $core.String? currency,
    $core.String? currencySymbol,
    $core.String? flagUrl,
    $core.String? languageId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (code != null) {
      $result.code = code;
    }
    if (dialCode != null) {
      $result.dialCode = dialCode;
    }
    if (currency != null) {
      $result.currency = currency;
    }
    if (currencySymbol != null) {
      $result.currencySymbol = currencySymbol;
    }
    if (flagUrl != null) {
      $result.flagUrl = flagUrl;
    }
    if (languageId != null) {
      $result.languageId = languageId;
    }
    return $result;
  }
  Country._() : super();
  factory Country.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Country.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Country', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'code')
    ..aOS(4, _omitFieldNames ? '' : 'dialCode')
    ..aOS(5, _omitFieldNames ? '' : 'currency')
    ..aOS(6, _omitFieldNames ? '' : 'currencySymbol')
    ..aOS(7, _omitFieldNames ? '' : 'flagUrl')
    ..aOS(8, _omitFieldNames ? '' : 'languageId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Country clone() => Country()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Country copyWith(void Function(Country) updates) => super.copyWith((message) => updates(message as Country)) as Country;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Country create() => Country._();
  Country createEmptyInstance() => create();
  static $pb.PbList<Country> createRepeated() => $pb.PbList<Country>();
  @$core.pragma('dart2js:noInline')
  static Country getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Country>(create);
  static Country? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get code => $_getSZ(2);
  @$pb.TagNumber(3)
  set code($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get dialCode => $_getSZ(3);
  @$pb.TagNumber(4)
  set dialCode($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDialCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearDialCode() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get currency => $_getSZ(4);
  @$pb.TagNumber(5)
  set currency($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCurrency() => $_has(4);
  @$pb.TagNumber(5)
  void clearCurrency() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get currencySymbol => $_getSZ(5);
  @$pb.TagNumber(6)
  set currencySymbol($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCurrencySymbol() => $_has(5);
  @$pb.TagNumber(6)
  void clearCurrencySymbol() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get flagUrl => $_getSZ(6);
  @$pb.TagNumber(7)
  set flagUrl($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFlagUrl() => $_has(6);
  @$pb.TagNumber(7)
  void clearFlagUrl() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get languageId => $_getSZ(7);
  @$pb.TagNumber(8)
  set languageId($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLanguageId() => $_has(7);
  @$pb.TagNumber(8)
  void clearLanguageId() => clearField(8);
}

class College extends $pb.GeneratedMessage {
  factory College({
    $core.String? id,
    $core.String? name,
    $core.String? address,
    $core.String? logoUrl,
    $core.String? website,
    $core.String? countryId,
    $core.String? bannerUrl,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (address != null) {
      $result.address = address;
    }
    if (logoUrl != null) {
      $result.logoUrl = logoUrl;
    }
    if (website != null) {
      $result.website = website;
    }
    if (countryId != null) {
      $result.countryId = countryId;
    }
    if (bannerUrl != null) {
      $result.bannerUrl = bannerUrl;
    }
    return $result;
  }
  College._() : super();
  factory College.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory College.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'College', package: const $pb.PackageName(_omitMessageNames ? '' : 'qreeket'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'address')
    ..aOS(4, _omitFieldNames ? '' : 'logoUrl')
    ..aOS(5, _omitFieldNames ? '' : 'website')
    ..aOS(6, _omitFieldNames ? '' : 'countryId')
    ..aOS(7, _omitFieldNames ? '' : 'bannerUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  College clone() => College()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  College copyWith(void Function(College) updates) => super.copyWith((message) => updates(message as College)) as College;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static College create() => College._();
  College createEmptyInstance() => create();
  static $pb.PbList<College> createRepeated() => $pb.PbList<College>();
  @$core.pragma('dart2js:noInline')
  static College getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<College>(create);
  static College? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get address => $_getSZ(2);
  @$pb.TagNumber(3)
  set address($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddress() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get logoUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set logoUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLogoUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearLogoUrl() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get website => $_getSZ(4);
  @$pb.TagNumber(5)
  set website($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasWebsite() => $_has(4);
  @$pb.TagNumber(5)
  void clearWebsite() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get countryId => $_getSZ(5);
  @$pb.TagNumber(6)
  set countryId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCountryId() => $_has(5);
  @$pb.TagNumber(6)
  void clearCountryId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get bannerUrl => $_getSZ(6);
  @$pb.TagNumber(7)
  set bannerUrl($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBannerUrl() => $_has(6);
  @$pb.TagNumber(7)
  void clearBannerUrl() => clearField(7);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
