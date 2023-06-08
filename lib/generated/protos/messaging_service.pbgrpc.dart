///
//  Generated code. Do not modify.
//  source: messaging_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'messaging.pb.dart' as $9;
import 'package:protobuf_google/protobuf_google.dart' as $2;
import 'package:protobuf_google/protobuf_google.dart' as $0;
export 'messaging_service.pb.dart';

class MessagingServiceClient extends $grpc.Client {
  static final _$sendMessage =
      $grpc.ClientMethod<$9.MessageListItem, $9.MessageListItem>(
          '/qreeket.MessagingService/sendMessage',
          ($9.MessageListItem value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.MessageListItem.fromBuffer(value));
  static final _$deleteMessage = $grpc.ClientMethod<$2.StringValue, $0.Empty>(
      '/qreeket.MessagingService/deleteMessage',
      ($2.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getMessages =
      $grpc.ClientMethod<$9.GetMessagesRequest, $9.MessageList>(
          '/qreeket.MessagingService/getMessages',
          ($9.GetMessagesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $9.MessageList.fromBuffer(value));
  static final _$editMessage =
      $grpc.ClientMethod<$9.MessageListItem, $9.MessageListItem>(
          '/qreeket.MessagingService/editMessage',
          ($9.MessageListItem value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.MessageListItem.fromBuffer(value));
  static final _$reactToMessage =
      $grpc.ClientMethod<$2.StringValue, $9.MessageListItem>(
          '/qreeket.MessagingService/reactToMessage',
          ($2.StringValue value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.MessageListItem.fromBuffer(value));
  static final _$createThread =
      $grpc.ClientMethod<$9.MessageListItem, $9.MessageListItem>(
          '/qreeket.MessagingService/createThread',
          ($9.MessageListItem value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.MessageListItem.fromBuffer(value));
  static final _$deleteThread = $grpc.ClientMethod<$2.StringValue, $0.Empty>(
      '/qreeket.MessagingService/deleteThread',
      ($2.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getThreads =
      $grpc.ClientMethod<$9.GetMessagesRequest, $9.MessageList>(
          '/qreeket.MessagingService/getThreads',
          ($9.GetMessagesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $9.MessageList.fromBuffer(value));
  static final _$editThread =
      $grpc.ClientMethod<$9.MessageListItem, $9.MessageListItem>(
          '/qreeket.MessagingService/editThread',
          ($9.MessageListItem value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.MessageListItem.fromBuffer(value));
  static final _$reactToThread =
      $grpc.ClientMethod<$2.StringValue, $9.MessageListItem>(
          '/qreeket.MessagingService/reactToThread',
          ($2.StringValue value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.MessageListItem.fromBuffer(value));
  static final _$getDirectMessengers =
      $grpc.ClientMethod<$0.Empty, $9.DirectMessengerList>(
          '/qreeket.MessagingService/getDirectMessengers',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.DirectMessengerList.fromBuffer(value));
  static final _$getDirectMessages =
      $grpc.ClientMethod<$9.GetMessagesRequest, $9.MessageList>(
          '/qreeket.MessagingService/getDirectMessages',
          ($9.GetMessagesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $9.MessageList.fromBuffer(value));
  static final _$addDirectMessenger =
      $grpc.ClientMethod<$2.StringValue, $9.DirectMessenger>(
          '/qreeket.MessagingService/addDirectMessenger',
          ($2.StringValue value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.DirectMessenger.fromBuffer(value));
  static final _$removeDirectMessenger =
      $grpc.ClientMethod<$2.StringValue, $0.Empty>(
          '/qreeket.MessagingService/removeDirectMessenger',
          ($2.StringValue value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  MessagingServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$9.MessageListItem> sendMessage(
      $9.MessageListItem request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendMessage, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteMessage($2.StringValue request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteMessage, request, options: options);
  }

  $grpc.ResponseStream<$9.MessageList> getMessages(
      $9.GetMessagesRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getMessages, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$9.MessageListItem> editMessage(
      $9.MessageListItem request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editMessage, request, options: options);
  }

  $grpc.ResponseFuture<$9.MessageListItem> reactToMessage(
      $2.StringValue request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$reactToMessage, request, options: options);
  }

  $grpc.ResponseFuture<$9.MessageListItem> createThread(
      $9.MessageListItem request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createThread, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteThread($2.StringValue request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteThread, request, options: options);
  }

  $grpc.ResponseStream<$9.MessageList> getThreads($9.GetMessagesRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getThreads, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$9.MessageListItem> editThread(
      $9.MessageListItem request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editThread, request, options: options);
  }

  $grpc.ResponseFuture<$9.MessageListItem> reactToThread($2.StringValue request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$reactToThread, request, options: options);
  }

  $grpc.ResponseStream<$9.DirectMessengerList> getDirectMessengers(
      $0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getDirectMessengers, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$9.MessageList> getDirectMessages(
      $9.GetMessagesRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getDirectMessages, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$9.DirectMessenger> addDirectMessenger(
      $2.StringValue request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addDirectMessenger, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> removeDirectMessenger($2.StringValue request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeDirectMessenger, request, options: options);
  }
}

abstract class MessagingServiceBase extends $grpc.Service {
  $core.String get $name => 'qreeket.MessagingService';

  MessagingServiceBase() {
    $addMethod($grpc.ServiceMethod<$9.MessageListItem, $9.MessageListItem>(
        'sendMessage',
        sendMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.MessageListItem.fromBuffer(value),
        ($9.MessageListItem value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.StringValue, $0.Empty>(
        'deleteMessage',
        deleteMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetMessagesRequest, $9.MessageList>(
        'getMessages',
        getMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $9.GetMessagesRequest.fromBuffer(value),
        ($9.MessageList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.MessageListItem, $9.MessageListItem>(
        'editMessage',
        editMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.MessageListItem.fromBuffer(value),
        ($9.MessageListItem value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.StringValue, $9.MessageListItem>(
        'reactToMessage',
        reactToMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.StringValue.fromBuffer(value),
        ($9.MessageListItem value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.MessageListItem, $9.MessageListItem>(
        'createThread',
        createThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.MessageListItem.fromBuffer(value),
        ($9.MessageListItem value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.StringValue, $0.Empty>(
        'deleteThread',
        deleteThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetMessagesRequest, $9.MessageList>(
        'getThreads',
        getThreads_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $9.GetMessagesRequest.fromBuffer(value),
        ($9.MessageList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.MessageListItem, $9.MessageListItem>(
        'editThread',
        editThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.MessageListItem.fromBuffer(value),
        ($9.MessageListItem value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.StringValue, $9.MessageListItem>(
        'reactToThread',
        reactToThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.StringValue.fromBuffer(value),
        ($9.MessageListItem value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $9.DirectMessengerList>(
        'getDirectMessengers',
        getDirectMessengers_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($9.DirectMessengerList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetMessagesRequest, $9.MessageList>(
        'getDirectMessages',
        getDirectMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $9.GetMessagesRequest.fromBuffer(value),
        ($9.MessageList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.StringValue, $9.DirectMessenger>(
        'addDirectMessenger',
        addDirectMessenger_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.StringValue.fromBuffer(value),
        ($9.DirectMessenger value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.StringValue, $0.Empty>(
        'removeDirectMessenger',
        removeDirectMessenger_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$9.MessageListItem> sendMessage_Pre(
      $grpc.ServiceCall call, $async.Future<$9.MessageListItem> request) async {
    return sendMessage(call, await request);
  }

  $async.Future<$0.Empty> deleteMessage_Pre(
      $grpc.ServiceCall call, $async.Future<$2.StringValue> request) async {
    return deleteMessage(call, await request);
  }

  $async.Stream<$9.MessageList> getMessages_Pre($grpc.ServiceCall call,
      $async.Future<$9.GetMessagesRequest> request) async* {
    yield* getMessages(call, await request);
  }

  $async.Future<$9.MessageListItem> editMessage_Pre(
      $grpc.ServiceCall call, $async.Future<$9.MessageListItem> request) async {
    return editMessage(call, await request);
  }

  $async.Future<$9.MessageListItem> reactToMessage_Pre(
      $grpc.ServiceCall call, $async.Future<$2.StringValue> request) async {
    return reactToMessage(call, await request);
  }

  $async.Future<$9.MessageListItem> createThread_Pre(
      $grpc.ServiceCall call, $async.Future<$9.MessageListItem> request) async {
    return createThread(call, await request);
  }

  $async.Future<$0.Empty> deleteThread_Pre(
      $grpc.ServiceCall call, $async.Future<$2.StringValue> request) async {
    return deleteThread(call, await request);
  }

  $async.Stream<$9.MessageList> getThreads_Pre($grpc.ServiceCall call,
      $async.Future<$9.GetMessagesRequest> request) async* {
    yield* getThreads(call, await request);
  }

  $async.Future<$9.MessageListItem> editThread_Pre(
      $grpc.ServiceCall call, $async.Future<$9.MessageListItem> request) async {
    return editThread(call, await request);
  }

  $async.Future<$9.MessageListItem> reactToThread_Pre(
      $grpc.ServiceCall call, $async.Future<$2.StringValue> request) async {
    return reactToThread(call, await request);
  }

  $async.Stream<$9.DirectMessengerList> getDirectMessengers_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* getDirectMessengers(call, await request);
  }

  $async.Stream<$9.MessageList> getDirectMessages_Pre($grpc.ServiceCall call,
      $async.Future<$9.GetMessagesRequest> request) async* {
    yield* getDirectMessages(call, await request);
  }

  $async.Future<$9.DirectMessenger> addDirectMessenger_Pre(
      $grpc.ServiceCall call, $async.Future<$2.StringValue> request) async {
    return addDirectMessenger(call, await request);
  }

  $async.Future<$0.Empty> removeDirectMessenger_Pre(
      $grpc.ServiceCall call, $async.Future<$2.StringValue> request) async {
    return removeDirectMessenger(call, await request);
  }

  $async.Future<$9.MessageListItem> sendMessage(
      $grpc.ServiceCall call, $9.MessageListItem request);
  $async.Future<$0.Empty> deleteMessage(
      $grpc.ServiceCall call, $2.StringValue request);
  $async.Stream<$9.MessageList> getMessages(
      $grpc.ServiceCall call, $9.GetMessagesRequest request);
  $async.Future<$9.MessageListItem> editMessage(
      $grpc.ServiceCall call, $9.MessageListItem request);
  $async.Future<$9.MessageListItem> reactToMessage(
      $grpc.ServiceCall call, $2.StringValue request);
  $async.Future<$9.MessageListItem> createThread(
      $grpc.ServiceCall call, $9.MessageListItem request);
  $async.Future<$0.Empty> deleteThread(
      $grpc.ServiceCall call, $2.StringValue request);
  $async.Stream<$9.MessageList> getThreads(
      $grpc.ServiceCall call, $9.GetMessagesRequest request);
  $async.Future<$9.MessageListItem> editThread(
      $grpc.ServiceCall call, $9.MessageListItem request);
  $async.Future<$9.MessageListItem> reactToThread(
      $grpc.ServiceCall call, $2.StringValue request);
  $async.Stream<$9.DirectMessengerList> getDirectMessengers(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Stream<$9.MessageList> getDirectMessages(
      $grpc.ServiceCall call, $9.GetMessagesRequest request);
  $async.Future<$9.DirectMessenger> addDirectMessenger(
      $grpc.ServiceCall call, $2.StringValue request);
  $async.Future<$0.Empty> removeDirectMessenger(
      $grpc.ServiceCall call, $2.StringValue request);
}
