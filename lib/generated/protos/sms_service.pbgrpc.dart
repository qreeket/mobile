//
//  Generated code. Do not modify.
//  source: sms_service.proto
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

import 'common.pb.dart' as $0;
import 'sms.pb.dart' as $2;

export 'sms_service.pb.dart';

@$pb.GrpcServiceName('qreeket.SmsService')
class SmsServiceClient extends $grpc.Client {
  static final _$send_phone_verification_code = $grpc.ClientMethod<$0.StringValue, $0.Empty>(
      '/qreeket.SmsService/send_phone_verification_code',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$verify_phone_verification_code = $grpc.ClientMethod<$2.VerifyPhoneRequest, $0.Empty>(
      '/qreeket.SmsService/verify_phone_verification_code',
      ($2.VerifyPhoneRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  SmsServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.Empty> send_phone_verification_code($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$send_phone_verification_code, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> verify_phone_verification_code($2.VerifyPhoneRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verify_phone_verification_code, request, options: options);
  }
}

@$pb.GrpcServiceName('qreeket.SmsService')
abstract class SmsServiceBase extends $grpc.Service {
  $core.String get $name => 'qreeket.SmsService';

  SmsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.StringValue, $0.Empty>(
        'send_phone_verification_code',
        send_phone_verification_code_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.VerifyPhoneRequest, $0.Empty>(
        'verify_phone_verification_code',
        verify_phone_verification_code_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.VerifyPhoneRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.Empty> send_phone_verification_code_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return send_phone_verification_code(call, await request);
  }

  $async.Future<$0.Empty> verify_phone_verification_code_Pre($grpc.ServiceCall call, $async.Future<$2.VerifyPhoneRequest> request) async {
    return verify_phone_verification_code(call, await request);
  }

  $async.Future<$0.Empty> send_phone_verification_code($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$0.Empty> verify_phone_verification_code($grpc.ServiceCall call, $2.VerifyPhoneRequest request);
}
