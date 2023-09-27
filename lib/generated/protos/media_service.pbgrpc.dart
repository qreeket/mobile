//
//  Generated code. Do not modify.
//  source: media_service.proto
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
import 'media.pb.dart' as $5;

export 'media_service.pb.dart';

@$pb.GrpcServiceName('qreeket.MediaService')
class MediaServiceClient extends $grpc.Client {
  static final _$upload_media = $grpc.ClientMethod<$5.UploadMediaRequest, $5.UploadMediaResponse>(
      '/qreeket.MediaService/upload_media',
      ($5.UploadMediaRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UploadMediaResponse.fromBuffer(value));
  static final _$upload_large_media = $grpc.ClientMethod<$5.UploadMediaRequest, $5.UploadMediaResponse>(
      '/qreeket.MediaService/upload_large_media',
      ($5.UploadMediaRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UploadMediaResponse.fromBuffer(value));
  static final _$get_media = $grpc.ClientMethod<$0.StringValue, $0.StringValue>(
      '/qreeket.MediaService/get_media',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value));
  static final _$delete_media = $grpc.ClientMethod<$0.StringValue, $0.Empty>(
      '/qreeket.MediaService/delete_media',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  MediaServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.UploadMediaResponse> upload_media($5.UploadMediaRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$upload_media, request, options: options);
  }

  $grpc.ResponseFuture<$5.UploadMediaResponse> upload_large_media($async.Stream<$5.UploadMediaRequest> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$upload_large_media, request, options: options).single;
  }

  $grpc.ResponseFuture<$0.StringValue> get_media($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get_media, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> delete_media($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete_media, request, options: options);
  }
}

@$pb.GrpcServiceName('qreeket.MediaService')
abstract class MediaServiceBase extends $grpc.Service {
  $core.String get $name => 'qreeket.MediaService';

  MediaServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.UploadMediaRequest, $5.UploadMediaResponse>(
        'upload_media',
        upload_media_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UploadMediaRequest.fromBuffer(value),
        ($5.UploadMediaResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UploadMediaRequest, $5.UploadMediaResponse>(
        'upload_large_media',
        upload_large_media,
        true,
        false,
        ($core.List<$core.int> value) => $5.UploadMediaRequest.fromBuffer(value),
        ($5.UploadMediaResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $0.StringValue>(
        'get_media',
        get_media_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($0.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $0.Empty>(
        'delete_media',
        delete_media_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$5.UploadMediaResponse> upload_media_Pre($grpc.ServiceCall call, $async.Future<$5.UploadMediaRequest> request) async {
    return upload_media(call, await request);
  }

  $async.Future<$0.StringValue> get_media_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return get_media(call, await request);
  }

  $async.Future<$0.Empty> delete_media_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return delete_media(call, await request);
  }

  $async.Future<$5.UploadMediaResponse> upload_media($grpc.ServiceCall call, $5.UploadMediaRequest request);
  $async.Future<$5.UploadMediaResponse> upload_large_media($grpc.ServiceCall call, $async.Stream<$5.UploadMediaRequest> request);
  $async.Future<$0.StringValue> get_media($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$0.Empty> delete_media($grpc.ServiceCall call, $0.StringValue request);
}
