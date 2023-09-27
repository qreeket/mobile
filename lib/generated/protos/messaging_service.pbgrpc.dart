//
//  Generated code. Do not modify.
//  source: messaging_service.proto
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
import 'messaging.pb.dart' as $7;

export 'messaging_service.pb.dart';

@$pb.GrpcServiceName('qreeket.MessagingService')
class MessagingServiceClient extends $grpc.Client {
  static final _$sendMessage = $grpc.ClientMethod<$7.MessageListItem, $7.MessageListItem>(
      '/qreeket.MessagingService/sendMessage',
      ($7.MessageListItem value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.MessageListItem.fromBuffer(value));
  static final _$deleteMessage = $grpc.ClientMethod<$0.StringValue, $0.Empty>(
      '/qreeket.MessagingService/deleteMessage',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getMessages = $grpc.ClientMethod<$7.GetMessagesRequest, $7.MessageList>(
      '/qreeket.MessagingService/getMessages',
      ($7.GetMessagesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.MessageList.fromBuffer(value));
  static final _$editMessage = $grpc.ClientMethod<$7.MessageListItem, $7.MessageListItem>(
      '/qreeket.MessagingService/editMessage',
      ($7.MessageListItem value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.MessageListItem.fromBuffer(value));
  static final _$reactToMessage = $grpc.ClientMethod<$0.StringValue, $7.MessageListItem>(
      '/qreeket.MessagingService/reactToMessage',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.MessageListItem.fromBuffer(value));
  static final _$createThread = $grpc.ClientMethod<$7.MessageListItem, $7.MessageListItem>(
      '/qreeket.MessagingService/createThread',
      ($7.MessageListItem value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.MessageListItem.fromBuffer(value));
  static final _$deleteThread = $grpc.ClientMethod<$0.StringValue, $0.Empty>(
      '/qreeket.MessagingService/deleteThread',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getThreads = $grpc.ClientMethod<$7.GetMessagesRequest, $7.MessageList>(
      '/qreeket.MessagingService/getThreads',
      ($7.GetMessagesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.MessageList.fromBuffer(value));
  static final _$editThread = $grpc.ClientMethod<$7.MessageListItem, $7.MessageListItem>(
      '/qreeket.MessagingService/editThread',
      ($7.MessageListItem value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.MessageListItem.fromBuffer(value));
  static final _$reactToThread = $grpc.ClientMethod<$0.StringValue, $7.MessageListItem>(
      '/qreeket.MessagingService/reactToThread',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.MessageListItem.fromBuffer(value));
  static final _$getDirectMessengers = $grpc.ClientMethod<$0.Empty, $7.DirectMessengerList>(
      '/qreeket.MessagingService/getDirectMessengers',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.DirectMessengerList.fromBuffer(value));
  static final _$getDirectMessages = $grpc.ClientMethod<$7.GetMessagesRequest, $7.MessageList>(
      '/qreeket.MessagingService/getDirectMessages',
      ($7.GetMessagesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.MessageList.fromBuffer(value));
  static final _$addDirectMessenger = $grpc.ClientMethod<$0.StringValue, $7.DirectMessenger>(
      '/qreeket.MessagingService/addDirectMessenger',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.DirectMessenger.fromBuffer(value));
  static final _$removeDirectMessenger = $grpc.ClientMethod<$0.StringValue, $0.Empty>(
      '/qreeket.MessagingService/removeDirectMessenger',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  MessagingServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$7.MessageListItem> sendMessage($7.MessageListItem request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendMessage, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteMessage($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteMessage, request, options: options);
  }

  $grpc.ResponseStream<$7.MessageList> getMessages($7.GetMessagesRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getMessages, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$7.MessageListItem> editMessage($7.MessageListItem request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editMessage, request, options: options);
  }

  $grpc.ResponseFuture<$7.MessageListItem> reactToMessage($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$reactToMessage, request, options: options);
  }

  $grpc.ResponseFuture<$7.MessageListItem> createThread($7.MessageListItem request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createThread, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteThread($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteThread, request, options: options);
  }

  $grpc.ResponseStream<$7.MessageList> getThreads($7.GetMessagesRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getThreads, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$7.MessageListItem> editThread($7.MessageListItem request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editThread, request, options: options);
  }

  $grpc.ResponseFuture<$7.MessageListItem> reactToThread($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$reactToThread, request, options: options);
  }

  $grpc.ResponseStream<$7.DirectMessengerList> getDirectMessengers($0.Empty request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getDirectMessengers, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$7.MessageList> getDirectMessages($7.GetMessagesRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getDirectMessages, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$7.DirectMessenger> addDirectMessenger($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addDirectMessenger, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> removeDirectMessenger($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeDirectMessenger, request, options: options);
  }
}

@$pb.GrpcServiceName('qreeket.MessagingService')
abstract class MessagingServiceBase extends $grpc.Service {
  $core.String get $name => 'qreeket.MessagingService';

  MessagingServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.MessageListItem, $7.MessageListItem>(
        'sendMessage',
        sendMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.MessageListItem.fromBuffer(value),
        ($7.MessageListItem value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $0.Empty>(
        'deleteMessage',
        deleteMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetMessagesRequest, $7.MessageList>(
        'getMessages',
        getMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $7.GetMessagesRequest.fromBuffer(value),
        ($7.MessageList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.MessageListItem, $7.MessageListItem>(
        'editMessage',
        editMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.MessageListItem.fromBuffer(value),
        ($7.MessageListItem value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $7.MessageListItem>(
        'reactToMessage',
        reactToMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($7.MessageListItem value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.MessageListItem, $7.MessageListItem>(
        'createThread',
        createThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.MessageListItem.fromBuffer(value),
        ($7.MessageListItem value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $0.Empty>(
        'deleteThread',
        deleteThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetMessagesRequest, $7.MessageList>(
        'getThreads',
        getThreads_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $7.GetMessagesRequest.fromBuffer(value),
        ($7.MessageList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.MessageListItem, $7.MessageListItem>(
        'editThread',
        editThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.MessageListItem.fromBuffer(value),
        ($7.MessageListItem value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $7.MessageListItem>(
        'reactToThread',
        reactToThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($7.MessageListItem value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $7.DirectMessengerList>(
        'getDirectMessengers',
        getDirectMessengers_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($7.DirectMessengerList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetMessagesRequest, $7.MessageList>(
        'getDirectMessages',
        getDirectMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $7.GetMessagesRequest.fromBuffer(value),
        ($7.MessageList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $7.DirectMessenger>(
        'addDirectMessenger',
        addDirectMessenger_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($7.DirectMessenger value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $0.Empty>(
        'removeDirectMessenger',
        removeDirectMessenger_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$7.MessageListItem> sendMessage_Pre($grpc.ServiceCall call, $async.Future<$7.MessageListItem> request) async {
    return sendMessage(call, await request);
  }

  $async.Future<$0.Empty> deleteMessage_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return deleteMessage(call, await request);
  }

  $async.Stream<$7.MessageList> getMessages_Pre($grpc.ServiceCall call, $async.Future<$7.GetMessagesRequest> request) async* {
    yield* getMessages(call, await request);
  }

  $async.Future<$7.MessageListItem> editMessage_Pre($grpc.ServiceCall call, $async.Future<$7.MessageListItem> request) async {
    return editMessage(call, await request);
  }

  $async.Future<$7.MessageListItem> reactToMessage_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return reactToMessage(call, await request);
  }

  $async.Future<$7.MessageListItem> createThread_Pre($grpc.ServiceCall call, $async.Future<$7.MessageListItem> request) async {
    return createThread(call, await request);
  }

  $async.Future<$0.Empty> deleteThread_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return deleteThread(call, await request);
  }

  $async.Stream<$7.MessageList> getThreads_Pre($grpc.ServiceCall call, $async.Future<$7.GetMessagesRequest> request) async* {
    yield* getThreads(call, await request);
  }

  $async.Future<$7.MessageListItem> editThread_Pre($grpc.ServiceCall call, $async.Future<$7.MessageListItem> request) async {
    return editThread(call, await request);
  }

  $async.Future<$7.MessageListItem> reactToThread_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return reactToThread(call, await request);
  }

  $async.Stream<$7.DirectMessengerList> getDirectMessengers_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* getDirectMessengers(call, await request);
  }

  $async.Stream<$7.MessageList> getDirectMessages_Pre($grpc.ServiceCall call, $async.Future<$7.GetMessagesRequest> request) async* {
    yield* getDirectMessages(call, await request);
  }

  $async.Future<$7.DirectMessenger> addDirectMessenger_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return addDirectMessenger(call, await request);
  }

  $async.Future<$0.Empty> removeDirectMessenger_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return removeDirectMessenger(call, await request);
  }

  $async.Future<$7.MessageListItem> sendMessage($grpc.ServiceCall call, $7.MessageListItem request);
  $async.Future<$0.Empty> deleteMessage($grpc.ServiceCall call, $0.StringValue request);
  $async.Stream<$7.MessageList> getMessages($grpc.ServiceCall call, $7.GetMessagesRequest request);
  $async.Future<$7.MessageListItem> editMessage($grpc.ServiceCall call, $7.MessageListItem request);
  $async.Future<$7.MessageListItem> reactToMessage($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$7.MessageListItem> createThread($grpc.ServiceCall call, $7.MessageListItem request);
  $async.Future<$0.Empty> deleteThread($grpc.ServiceCall call, $0.StringValue request);
  $async.Stream<$7.MessageList> getThreads($grpc.ServiceCall call, $7.GetMessagesRequest request);
  $async.Future<$7.MessageListItem> editThread($grpc.ServiceCall call, $7.MessageListItem request);
  $async.Future<$7.MessageListItem> reactToThread($grpc.ServiceCall call, $0.StringValue request);
  $async.Stream<$7.DirectMessengerList> getDirectMessengers($grpc.ServiceCall call, $0.Empty request);
  $async.Stream<$7.MessageList> getDirectMessages($grpc.ServiceCall call, $7.GetMessagesRequest request);
  $async.Future<$7.DirectMessenger> addDirectMessenger($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$0.Empty> removeDirectMessenger($grpc.ServiceCall call, $0.StringValue request);
}
