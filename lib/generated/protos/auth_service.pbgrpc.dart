//
//  Generated code. Do not modify.
//  source: auth_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'auth.pb.dart' as $4;
import 'common.pb.dart' as $0;

export 'auth_service.pb.dart';

@$pb.GrpcServiceName('qreeket.AuthService')
class AuthServiceClient extends $grpc.Client {
  static final _$login = $grpc.ClientMethod<$4.LoginRequest, $0.StringValue>(
      '/qreeket.AuthService/login',
      ($4.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value));
  static final _$register = $grpc.ClientMethod<$4.RegisterRequest, $0.StringValue>(
      '/qreeket.AuthService/register',
      ($4.RegisterRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value));
  static final _$reset_password = $grpc.ClientMethod<$4.ResetPasswordRequest, $0.StringValue>(
      '/qreeket.AuthService/reset_password',
      ($4.ResetPasswordRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value));
  static final _$request_password_reset = $grpc.ClientMethod<$4.RequestPasswordResetRequest, $0.StringValue>(
      '/qreeket.AuthService/request_password_reset',
      ($4.RequestPasswordResetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value));
  static final _$logout = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/qreeket.AuthService/logout',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$verify_password = $grpc.ClientMethod<$0.StringValue, $0.Empty>(
      '/qreeket.AuthService/verify_password',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$upgrade_to_premium = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/qreeket.AuthService/upgrade_to_premium',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$downgrade_to_standard = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/qreeket.AuthService/downgrade_to_standard',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$request_public_access_token = $grpc.ClientMethod<$0.Empty, $0.StringValue>(
      '/qreeket.AuthService/request_public_access_token',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value));
  static final _$validate_access_token = $grpc.ClientMethod<$0.Empty, $4.ValidateAccessTokenResponse>(
      '/qreeket.AuthService/validate_access_token',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ValidateAccessTokenResponse.fromBuffer(value));
  static final _$get_account = $grpc.ClientMethod<$0.Empty, $4.Account>(
      '/qreeket.AuthService/get_account',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.Account.fromBuffer(value));
  static final _$get_account_by_phone_number = $grpc.ClientMethod<$0.StringValue, $4.Account>(
      '/qreeket.AuthService/get_account_by_phone_number',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.Account.fromBuffer(value));
  static final _$get_account_by_id = $grpc.ClientMethod<$0.StringValue, $4.Account>(
      '/qreeket.AuthService/get_account_by_id',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.Account.fromBuffer(value));
  static final _$update_account = $grpc.ClientMethod<$4.Account, $4.Account>(
      '/qreeket.AuthService/update_account',
      ($4.Account value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.Account.fromBuffer(value));
  static final _$delete_account = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/qreeket.AuthService/delete_account',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$authenticate_account = $grpc.ClientMethod<$4.AuthenticateWithSocialAccountRequest, $0.StringValue>(
      '/qreeket.AuthService/authenticate_account',
      ($4.AuthenticateWithSocialAccountRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value));
  static final _$check_email = $grpc.ClientMethod<$0.StringValue, $0.Empty>(
      '/qreeket.AuthService/check_email',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$check_phone_number = $grpc.ClientMethod<$0.StringValue, $0.Empty>(
      '/qreeket.AuthService/check_phone_number',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$get_countries = $grpc.ClientMethod<$0.Empty, $4.GetCountriesResponse>(
      '/qreeket.AuthService/get_countries',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetCountriesResponse.fromBuffer(value));
  static final _$get_country_by_id = $grpc.ClientMethod<$0.StringValue, $4.Country>(
      '/qreeket.AuthService/get_country_by_id',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.Country.fromBuffer(value));
  static final _$add_country = $grpc.ClientMethod<$4.Country, $4.Country>(
      '/qreeket.AuthService/add_country',
      ($4.Country value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.Country.fromBuffer(value));
  static final _$delete_country = $grpc.ClientMethod<$0.StringValue, $0.Empty>(
      '/qreeket.AuthService/delete_country',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$get_colleges_for_country = $grpc.ClientMethod<$0.StringValue, $4.GetCollegesResponse>(
      '/qreeket.AuthService/get_colleges_for_country',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetCollegesResponse.fromBuffer(value));
  static final _$get_college_by_id = $grpc.ClientMethod<$0.StringValue, $4.College>(
      '/qreeket.AuthService/get_college_by_id',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.College.fromBuffer(value));
  static final _$add_college = $grpc.ClientMethod<$4.College, $4.College>(
      '/qreeket.AuthService/add_college',
      ($4.College value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.College.fromBuffer(value));
  static final _$delete_college = $grpc.ClientMethod<$0.StringValue, $0.Empty>(
      '/qreeket.AuthService/delete_college',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  AuthServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.StringValue> login($4.LoginRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$0.StringValue> register($4.RegisterRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$register, request, options: options);
  }

  $grpc.ResponseFuture<$0.StringValue> reset_password($4.ResetPasswordRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$reset_password, request, options: options);
  }

  $grpc.ResponseFuture<$0.StringValue> request_password_reset($4.RequestPasswordResetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$request_password_reset, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> logout($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$logout, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> verify_password($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verify_password, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> upgrade_to_premium($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$upgrade_to_premium, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> downgrade_to_standard($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$downgrade_to_standard, request, options: options);
  }

  $grpc.ResponseFuture<$0.StringValue> request_public_access_token($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$request_public_access_token, request, options: options);
  }

  $grpc.ResponseFuture<$4.ValidateAccessTokenResponse> validate_access_token($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validate_access_token, request, options: options);
  }

  $grpc.ResponseFuture<$4.Account> get_account($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get_account, request, options: options);
  }

  $grpc.ResponseFuture<$4.Account> get_account_by_phone_number($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get_account_by_phone_number, request, options: options);
  }

  $grpc.ResponseFuture<$4.Account> get_account_by_id($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get_account_by_id, request, options: options);
  }

  $grpc.ResponseFuture<$4.Account> update_account($4.Account request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update_account, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> delete_account($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete_account, request, options: options);
  }

  $grpc.ResponseFuture<$0.StringValue> authenticate_account($4.AuthenticateWithSocialAccountRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticate_account, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> check_email($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$check_email, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> check_phone_number($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$check_phone_number, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetCountriesResponse> get_countries($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get_countries, request, options: options);
  }

  $grpc.ResponseFuture<$4.Country> get_country_by_id($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get_country_by_id, request, options: options);
  }

  $grpc.ResponseFuture<$4.Country> add_country($4.Country request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$add_country, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> delete_country($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete_country, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetCollegesResponse> get_colleges_for_country($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get_colleges_for_country, request, options: options);
  }

  $grpc.ResponseFuture<$4.College> get_college_by_id($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get_college_by_id, request, options: options);
  }

  $grpc.ResponseFuture<$4.College> add_college($4.College request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$add_college, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> delete_college($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete_college, request, options: options);
  }
}

@$pb.GrpcServiceName('qreeket.AuthService')
abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'qreeket.AuthService';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.LoginRequest, $0.StringValue>(
        'login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.LoginRequest.fromBuffer(value),
        ($0.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.RegisterRequest, $0.StringValue>(
        'register',
        register_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.RegisterRequest.fromBuffer(value),
        ($0.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ResetPasswordRequest, $0.StringValue>(
        'reset_password',
        reset_password_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ResetPasswordRequest.fromBuffer(value),
        ($0.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.RequestPasswordResetRequest, $0.StringValue>(
        'request_password_reset',
        request_password_reset_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.RequestPasswordResetRequest.fromBuffer(value),
        ($0.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'logout',
        logout_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $0.Empty>(
        'verify_password',
        verify_password_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'upgrade_to_premium',
        upgrade_to_premium_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'downgrade_to_standard',
        downgrade_to_standard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.StringValue>(
        'request_public_access_token',
        request_public_access_token_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $4.ValidateAccessTokenResponse>(
        'validate_access_token',
        validate_access_token_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($4.ValidateAccessTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $4.Account>(
        'get_account',
        get_account_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($4.Account value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $4.Account>(
        'get_account_by_phone_number',
        get_account_by_phone_number_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($4.Account value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $4.Account>(
        'get_account_by_id',
        get_account_by_id_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($4.Account value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.Account, $4.Account>(
        'update_account',
        update_account_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.Account.fromBuffer(value),
        ($4.Account value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'delete_account',
        delete_account_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AuthenticateWithSocialAccountRequest, $0.StringValue>(
        'authenticate_account',
        authenticate_account_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.AuthenticateWithSocialAccountRequest.fromBuffer(value),
        ($0.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $0.Empty>(
        'check_email',
        check_email_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $0.Empty>(
        'check_phone_number',
        check_phone_number_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $4.GetCountriesResponse>(
        'get_countries',
        get_countries_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($4.GetCountriesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $4.Country>(
        'get_country_by_id',
        get_country_by_id_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($4.Country value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.Country, $4.Country>(
        'add_country',
        add_country_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.Country.fromBuffer(value),
        ($4.Country value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $0.Empty>(
        'delete_country',
        delete_country_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $4.GetCollegesResponse>(
        'get_colleges_for_country',
        get_colleges_for_country_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($4.GetCollegesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $4.College>(
        'get_college_by_id',
        get_college_by_id_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($4.College value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.College, $4.College>(
        'add_college',
        add_college_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.College.fromBuffer(value),
        ($4.College value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $0.Empty>(
        'delete_college',
        delete_college_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.StringValue> login_Pre($grpc.ServiceCall call, $async.Future<$4.LoginRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$0.StringValue> register_Pre($grpc.ServiceCall call, $async.Future<$4.RegisterRequest> request) async {
    return register(call, await request);
  }

  $async.Future<$0.StringValue> reset_password_Pre($grpc.ServiceCall call, $async.Future<$4.ResetPasswordRequest> request) async {
    return reset_password(call, await request);
  }

  $async.Future<$0.StringValue> request_password_reset_Pre($grpc.ServiceCall call, $async.Future<$4.RequestPasswordResetRequest> request) async {
    return request_password_reset(call, await request);
  }

  $async.Future<$0.Empty> logout_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return logout(call, await request);
  }

  $async.Future<$0.Empty> verify_password_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return verify_password(call, await request);
  }

  $async.Future<$0.Empty> upgrade_to_premium_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return upgrade_to_premium(call, await request);
  }

  $async.Future<$0.Empty> downgrade_to_standard_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return downgrade_to_standard(call, await request);
  }

  $async.Future<$0.StringValue> request_public_access_token_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return request_public_access_token(call, await request);
  }

  $async.Future<$4.ValidateAccessTokenResponse> validate_access_token_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return validate_access_token(call, await request);
  }

  $async.Future<$4.Account> get_account_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return get_account(call, await request);
  }

  $async.Future<$4.Account> get_account_by_phone_number_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return get_account_by_phone_number(call, await request);
  }

  $async.Future<$4.Account> get_account_by_id_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return get_account_by_id(call, await request);
  }

  $async.Future<$4.Account> update_account_Pre($grpc.ServiceCall call, $async.Future<$4.Account> request) async {
    return update_account(call, await request);
  }

  $async.Future<$0.Empty> delete_account_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return delete_account(call, await request);
  }

  $async.Future<$0.StringValue> authenticate_account_Pre($grpc.ServiceCall call, $async.Future<$4.AuthenticateWithSocialAccountRequest> request) async {
    return authenticate_account(call, await request);
  }

  $async.Future<$0.Empty> check_email_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return check_email(call, await request);
  }

  $async.Future<$0.Empty> check_phone_number_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return check_phone_number(call, await request);
  }

  $async.Future<$4.GetCountriesResponse> get_countries_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return get_countries(call, await request);
  }

  $async.Future<$4.Country> get_country_by_id_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return get_country_by_id(call, await request);
  }

  $async.Future<$4.Country> add_country_Pre($grpc.ServiceCall call, $async.Future<$4.Country> request) async {
    return add_country(call, await request);
  }

  $async.Future<$0.Empty> delete_country_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return delete_country(call, await request);
  }

  $async.Future<$4.GetCollegesResponse> get_colleges_for_country_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return get_colleges_for_country(call, await request);
  }

  $async.Future<$4.College> get_college_by_id_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return get_college_by_id(call, await request);
  }

  $async.Future<$4.College> add_college_Pre($grpc.ServiceCall call, $async.Future<$4.College> request) async {
    return add_college(call, await request);
  }

  $async.Future<$0.Empty> delete_college_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return delete_college(call, await request);
  }

  $async.Future<$0.StringValue> login($grpc.ServiceCall call, $4.LoginRequest request);
  $async.Future<$0.StringValue> register($grpc.ServiceCall call, $4.RegisterRequest request);
  $async.Future<$0.StringValue> reset_password($grpc.ServiceCall call, $4.ResetPasswordRequest request);
  $async.Future<$0.StringValue> request_password_reset($grpc.ServiceCall call, $4.RequestPasswordResetRequest request);
  $async.Future<$0.Empty> logout($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> verify_password($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$0.Empty> upgrade_to_premium($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> downgrade_to_standard($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.StringValue> request_public_access_token($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$4.ValidateAccessTokenResponse> validate_access_token($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$4.Account> get_account($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$4.Account> get_account_by_phone_number($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$4.Account> get_account_by_id($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$4.Account> update_account($grpc.ServiceCall call, $4.Account request);
  $async.Future<$0.Empty> delete_account($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.StringValue> authenticate_account($grpc.ServiceCall call, $4.AuthenticateWithSocialAccountRequest request);
  $async.Future<$0.Empty> check_email($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$0.Empty> check_phone_number($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$4.GetCountriesResponse> get_countries($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$4.Country> get_country_by_id($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$4.Country> add_country($grpc.ServiceCall call, $4.Country request);
  $async.Future<$0.Empty> delete_country($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$4.GetCollegesResponse> get_colleges_for_country($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$4.College> get_college_by_id($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$4.College> add_college($grpc.ServiceCall call, $4.College request);
  $async.Future<$0.Empty> delete_college($grpc.ServiceCall call, $0.StringValue request);
}
