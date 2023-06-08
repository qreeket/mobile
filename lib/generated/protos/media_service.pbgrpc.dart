///
//  Generated code. Do not modify.
//  source: media_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'media.pb.dart' as $6;
import 'package:protobuf_google/protobuf_google.dart' as $2;
import 'package:protobuf_google/protobuf_google.dart' as $0;
export 'media_service.pb.dart';

class MediaServiceClient extends $grpc.Client {
  static final _$upload_media =
      $grpc.ClientMethod<$6.UploadMediaRequest, $6.UploadMediaResponse>(
          '/qreeket.MediaService/upload_media',
          ($6.UploadMediaRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.UploadMediaResponse.fromBuffer(value));
  static final _$upload_large_media =
      $grpc.ClientMethod<$6.UploadMediaRequest, $6.UploadMediaResponse>(
          '/qreeket.MediaService/upload_large_media',
          ($6.UploadMediaRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.UploadMediaResponse.fromBuffer(value));
  static final _$get_media = $grpc.ClientMethod<$2.StringValue, $2.StringValue>(
      '/qreeket.MediaService/get_media',
      ($2.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.StringValue.fromBuffer(value));
  static final _$delete_media = $grpc.ClientMethod<$2.StringValue, $0.Empty>(
      '/qreeket.MediaService/delete_media',
      ($2.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  MediaServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$6.UploadMediaResponse> upload_media(
      $6.UploadMediaRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$upload_media, request, options: options);
  }

  $grpc.ResponseFuture<$6.UploadMediaResponse> upload_large_media(
      $async.Stream<$6.UploadMediaRequest> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$upload_large_media, request, options: options)
        .single;
  }

  $grpc.ResponseFuture<$2.StringValue> get_media($2.StringValue request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get_media, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> delete_media($2.StringValue request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete_media, request, options: options);
  }
}

abstract class MediaServiceBase extends $grpc.Service {
  $core.String get $name => 'qreeket.MediaService';

  MediaServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$6.UploadMediaRequest, $6.UploadMediaResponse>(
            'upload_media',
            upload_media_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $6.UploadMediaRequest.fromBuffer(value),
            ($6.UploadMediaResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$6.UploadMediaRequest, $6.UploadMediaResponse>(
            'upload_large_media',
            upload_large_media,
            true,
            false,
            ($core.List<$core.int> value) =>
                $6.UploadMediaRequest.fromBuffer(value),
            ($6.UploadMediaResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.StringValue, $2.StringValue>(
        'get_media',
        get_media_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.StringValue.fromBuffer(value),
        ($2.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.StringValue, $0.Empty>(
        'delete_media',
        delete_media_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$6.UploadMediaResponse> upload_media_Pre($grpc.ServiceCall call,
      $async.Future<$6.UploadMediaRequest> request) async {
    return upload_media(call, await request);
  }

  $async.Future<$2.StringValue> get_media_Pre(
      $grpc.ServiceCall call, $async.Future<$2.StringValue> request) async {
    return get_media(call, await request);
  }

  $async.Future<$0.Empty> delete_media_Pre(
      $grpc.ServiceCall call, $async.Future<$2.StringValue> request) async {
    return delete_media(call, await request);
  }

  $async.Future<$6.UploadMediaResponse> upload_media(
      $grpc.ServiceCall call, $6.UploadMediaRequest request);
  $async.Future<$6.UploadMediaResponse> upload_large_media(
      $grpc.ServiceCall call, $async.Stream<$6.UploadMediaRequest> request);
  $async.Future<$2.StringValue> get_media(
      $grpc.ServiceCall call, $2.StringValue request);
  $async.Future<$0.Empty> delete_media(
      $grpc.ServiceCall call, $2.StringValue request);
}
