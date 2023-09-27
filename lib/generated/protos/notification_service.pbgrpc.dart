//
//  Generated code. Do not modify.
//  source: notification_service.proto
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
import 'notification.pb.dart' as $8;

export 'notification_service.pb.dart';

@$pb.GrpcServiceName('qreeket.NotificationService')
class NotificationServiceClient extends $grpc.Client {
  static final _$sendNotification = $grpc.ClientMethod<$8.SendNotificationRequest, $0.StringValue>(
      '/qreeket.NotificationService/sendNotification',
      ($8.SendNotificationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value));
  static final _$registerDevice = $grpc.ClientMethod<$8.RegisterDeviceRequest, $0.Empty>(
      '/qreeket.NotificationService/registerDevice',
      ($8.RegisterDeviceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$unregisterDevice = $grpc.ClientMethod<$8.RegisterDeviceRequest, $0.Empty>(
      '/qreeket.NotificationService/unregisterDevice',
      ($8.RegisterDeviceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  NotificationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.StringValue> sendNotification($8.SendNotificationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendNotification, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> registerDevice($8.RegisterDeviceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerDevice, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> unregisterDevice($8.RegisterDeviceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unregisterDevice, request, options: options);
  }
}

@$pb.GrpcServiceName('qreeket.NotificationService')
abstract class NotificationServiceBase extends $grpc.Service {
  $core.String get $name => 'qreeket.NotificationService';

  NotificationServiceBase() {
    $addMethod($grpc.ServiceMethod<$8.SendNotificationRequest, $0.StringValue>(
        'sendNotification',
        sendNotification_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.SendNotificationRequest.fromBuffer(value),
        ($0.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.RegisterDeviceRequest, $0.Empty>(
        'registerDevice',
        registerDevice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.RegisterDeviceRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.RegisterDeviceRequest, $0.Empty>(
        'unregisterDevice',
        unregisterDevice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.RegisterDeviceRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.StringValue> sendNotification_Pre($grpc.ServiceCall call, $async.Future<$8.SendNotificationRequest> request) async {
    return sendNotification(call, await request);
  }

  $async.Future<$0.Empty> registerDevice_Pre($grpc.ServiceCall call, $async.Future<$8.RegisterDeviceRequest> request) async {
    return registerDevice(call, await request);
  }

  $async.Future<$0.Empty> unregisterDevice_Pre($grpc.ServiceCall call, $async.Future<$8.RegisterDeviceRequest> request) async {
    return unregisterDevice(call, await request);
  }

  $async.Future<$0.StringValue> sendNotification($grpc.ServiceCall call, $8.SendNotificationRequest request);
  $async.Future<$0.Empty> registerDevice($grpc.ServiceCall call, $8.RegisterDeviceRequest request);
  $async.Future<$0.Empty> unregisterDevice($grpc.ServiceCall call, $8.RegisterDeviceRequest request);
}
