///
//  Generated code. Do not modify.
//  source: announcement_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf_google/protobuf_google.dart' as $0;
import 'announcement.pb.dart' as $1;
import 'package:protobuf_google/protobuf_google.dart' as $2;
export 'announcement_service.pb.dart';

class AnnouncementServiceClient extends $grpc.Client {
  static final _$getAnnouncements =
      $grpc.ClientMethod<$0.Empty, $1.AnnouncementsList>(
          '/qreeket.AnnouncementService/GetAnnouncements',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.AnnouncementsList.fromBuffer(value));
  static final _$getAnnouncement =
      $grpc.ClientMethod<$2.StringValue, $1.Announcement>(
          '/qreeket.AnnouncementService/GetAnnouncement',
          ($2.StringValue value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Announcement.fromBuffer(value));
  static final _$createAnnouncement =
      $grpc.ClientMethod<$1.CreateAnnouncementRequest, $1.Announcement>(
          '/qreeket.AnnouncementService/CreateAnnouncement',
          ($1.CreateAnnouncementRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Announcement.fromBuffer(value));
  static final _$updateAnnouncement =
      $grpc.ClientMethod<$1.UpdateAnnouncementRequest, $1.Announcement>(
          '/qreeket.AnnouncementService/UpdateAnnouncement',
          ($1.UpdateAnnouncementRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Announcement.fromBuffer(value));
  static final _$deleteAnnouncement =
      $grpc.ClientMethod<$2.StringValue, $0.Empty>(
          '/qreeket.AnnouncementService/DeleteAnnouncement',
          ($2.StringValue value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$subscribeToAnnouncements =
      $grpc.ClientMethod<$2.StringValue, $0.Empty>(
          '/qreeket.AnnouncementService/SubscribeToAnnouncements',
          ($2.StringValue value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$unsubscribeFromAnnouncements =
      $grpc.ClientMethod<$2.StringValue, $0.Empty>(
          '/qreeket.AnnouncementService/UnsubscribeFromAnnouncements',
          ($2.StringValue value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  AnnouncementServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$1.AnnouncementsList> getAnnouncements($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getAnnouncements, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$1.Announcement> getAnnouncement($2.StringValue request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAnnouncement, request, options: options);
  }

  $grpc.ResponseFuture<$1.Announcement> createAnnouncement(
      $1.CreateAnnouncementRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createAnnouncement, request, options: options);
  }

  $grpc.ResponseFuture<$1.Announcement> updateAnnouncement(
      $1.UpdateAnnouncementRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateAnnouncement, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteAnnouncement($2.StringValue request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteAnnouncement, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> subscribeToAnnouncements(
      $2.StringValue request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$subscribeToAnnouncements, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> unsubscribeFromAnnouncements(
      $2.StringValue request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unsubscribeFromAnnouncements, request,
        options: options);
  }
}

abstract class AnnouncementServiceBase extends $grpc.Service {
  $core.String get $name => 'qreeket.AnnouncementService';

  AnnouncementServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.AnnouncementsList>(
        'GetAnnouncements',
        getAnnouncements_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.AnnouncementsList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.StringValue, $1.Announcement>(
        'GetAnnouncement',
        getAnnouncement_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.StringValue.fromBuffer(value),
        ($1.Announcement value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.CreateAnnouncementRequest, $1.Announcement>(
            'CreateAnnouncement',
            createAnnouncement_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.CreateAnnouncementRequest.fromBuffer(value),
            ($1.Announcement value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.UpdateAnnouncementRequest, $1.Announcement>(
            'UpdateAnnouncement',
            updateAnnouncement_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.UpdateAnnouncementRequest.fromBuffer(value),
            ($1.Announcement value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.StringValue, $0.Empty>(
        'DeleteAnnouncement',
        deleteAnnouncement_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.StringValue, $0.Empty>(
        'SubscribeToAnnouncements',
        subscribeToAnnouncements_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.StringValue, $0.Empty>(
        'UnsubscribeFromAnnouncements',
        unsubscribeFromAnnouncements_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Stream<$1.AnnouncementsList> getAnnouncements_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* getAnnouncements(call, await request);
  }

  $async.Future<$1.Announcement> getAnnouncement_Pre(
      $grpc.ServiceCall call, $async.Future<$2.StringValue> request) async {
    return getAnnouncement(call, await request);
  }

  $async.Future<$1.Announcement> createAnnouncement_Pre($grpc.ServiceCall call,
      $async.Future<$1.CreateAnnouncementRequest> request) async {
    return createAnnouncement(call, await request);
  }

  $async.Future<$1.Announcement> updateAnnouncement_Pre($grpc.ServiceCall call,
      $async.Future<$1.UpdateAnnouncementRequest> request) async {
    return updateAnnouncement(call, await request);
  }

  $async.Future<$0.Empty> deleteAnnouncement_Pre(
      $grpc.ServiceCall call, $async.Future<$2.StringValue> request) async {
    return deleteAnnouncement(call, await request);
  }

  $async.Future<$0.Empty> subscribeToAnnouncements_Pre(
      $grpc.ServiceCall call, $async.Future<$2.StringValue> request) async {
    return subscribeToAnnouncements(call, await request);
  }

  $async.Future<$0.Empty> unsubscribeFromAnnouncements_Pre(
      $grpc.ServiceCall call, $async.Future<$2.StringValue> request) async {
    return unsubscribeFromAnnouncements(call, await request);
  }

  $async.Stream<$1.AnnouncementsList> getAnnouncements(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.Announcement> getAnnouncement(
      $grpc.ServiceCall call, $2.StringValue request);
  $async.Future<$1.Announcement> createAnnouncement(
      $grpc.ServiceCall call, $1.CreateAnnouncementRequest request);
  $async.Future<$1.Announcement> updateAnnouncement(
      $grpc.ServiceCall call, $1.UpdateAnnouncementRequest request);
  $async.Future<$0.Empty> deleteAnnouncement(
      $grpc.ServiceCall call, $2.StringValue request);
  $async.Future<$0.Empty> subscribeToAnnouncements(
      $grpc.ServiceCall call, $2.StringValue request);
  $async.Future<$0.Empty> unsubscribeFromAnnouncements(
      $grpc.ServiceCall call, $2.StringValue request);
}
