///
//  Generated code. Do not modify.
//  source: sms_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf_google/protobuf_google.dart' as $2;
import 'package:protobuf_google/protobuf_google.dart' as $0;
import 'sms.pb.dart' as $3;
export 'sms_service.pb.dart';

class SmsServiceClient extends $grpc.Client {
  static final _$send_phone_verification_code =
      $grpc.ClientMethod<$2.StringValue, $0.Empty>(
          '/qreeket.SmsService/send_phone_verification_code',
          ($2.StringValue value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$verify_phone_verification_code =
      $grpc.ClientMethod<$3.VerifyPhoneRequest, $0.Empty>(
          '/qreeket.SmsService/verify_phone_verification_code',
          ($3.VerifyPhoneRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  SmsServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Empty> send_phone_verification_code(
      $2.StringValue request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$send_phone_verification_code, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> verify_phone_verification_code(
      $3.VerifyPhoneRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verify_phone_verification_code, request,
        options: options);
  }
}

abstract class SmsServiceBase extends $grpc.Service {
  $core.String get $name => 'qreeket.SmsService';

  SmsServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.StringValue, $0.Empty>(
        'send_phone_verification_code',
        send_phone_verification_code_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.VerifyPhoneRequest, $0.Empty>(
        'verify_phone_verification_code',
        verify_phone_verification_code_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.VerifyPhoneRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.Empty> send_phone_verification_code_Pre(
      $grpc.ServiceCall call, $async.Future<$2.StringValue> request) async {
    return send_phone_verification_code(call, await request);
  }

  $async.Future<$0.Empty> verify_phone_verification_code_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.VerifyPhoneRequest> request) async {
    return verify_phone_verification_code(call, await request);
  }

  $async.Future<$0.Empty> send_phone_verification_code(
      $grpc.ServiceCall call, $2.StringValue request);
  $async.Future<$0.Empty> verify_phone_verification_code(
      $grpc.ServiceCall call, $3.VerifyPhoneRequest request);
}
