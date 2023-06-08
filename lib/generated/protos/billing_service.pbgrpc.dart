///
//  Generated code. Do not modify.
//  source: billing_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'billing.pb.dart' as $7;
import 'package:protobuf_google/protobuf_google.dart' as $2;
import 'package:protobuf_google/protobuf_google.dart' as $8;
import 'package:protobuf_google/protobuf_google.dart' as $0;
export 'billing_service.pb.dart';

class BillingServiceClient extends $grpc.Client {
  static final _$charge =
      $grpc.ClientMethod<$7.ChargeRequest, $7.ChargeResponse>(
          '/qreeket.BillingService/charge',
          ($7.ChargeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $7.ChargeResponse.fromBuffer(value));
  static final _$get_transaction =
      $grpc.ClientMethod<$2.StringValue, $7.Transaction>(
          '/qreeket.BillingService/get_transaction',
          ($2.StringValue value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $7.Transaction.fromBuffer(value));
  static final _$list_transactions =
      $grpc.ClientMethod<$8.Duration, $7.ListTransactionsResponse>(
          '/qreeket.BillingService/list_transactions',
          ($8.Duration value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.ListTransactionsResponse.fromBuffer(value));
  static final _$delete_transaction =
      $grpc.ClientMethod<$2.StringValue, $0.Empty>(
          '/qreeket.BillingService/delete_transaction',
          ($2.StringValue value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  BillingServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$7.ChargeResponse> charge($7.ChargeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$charge, request, options: options);
  }

  $grpc.ResponseFuture<$7.Transaction> get_transaction($2.StringValue request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get_transaction, request, options: options);
  }

  $grpc.ResponseFuture<$7.ListTransactionsResponse> list_transactions(
      $8.Duration request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list_transactions, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> delete_transaction($2.StringValue request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete_transaction, request, options: options);
  }
}

abstract class BillingServiceBase extends $grpc.Service {
  $core.String get $name => 'qreeket.BillingService';

  BillingServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.ChargeRequest, $7.ChargeResponse>(
        'charge',
        charge_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.ChargeRequest.fromBuffer(value),
        ($7.ChargeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.StringValue, $7.Transaction>(
        'get_transaction',
        get_transaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.StringValue.fromBuffer(value),
        ($7.Transaction value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.Duration, $7.ListTransactionsResponse>(
        'list_transactions',
        list_transactions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.Duration.fromBuffer(value),
        ($7.ListTransactionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.StringValue, $0.Empty>(
        'delete_transaction',
        delete_transaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$7.ChargeResponse> charge_Pre(
      $grpc.ServiceCall call, $async.Future<$7.ChargeRequest> request) async {
    return charge(call, await request);
  }

  $async.Future<$7.Transaction> get_transaction_Pre(
      $grpc.ServiceCall call, $async.Future<$2.StringValue> request) async {
    return get_transaction(call, await request);
  }

  $async.Future<$7.ListTransactionsResponse> list_transactions_Pre(
      $grpc.ServiceCall call, $async.Future<$8.Duration> request) async {
    return list_transactions(call, await request);
  }

  $async.Future<$0.Empty> delete_transaction_Pre(
      $grpc.ServiceCall call, $async.Future<$2.StringValue> request) async {
    return delete_transaction(call, await request);
  }

  $async.Future<$7.ChargeResponse> charge(
      $grpc.ServiceCall call, $7.ChargeRequest request);
  $async.Future<$7.Transaction> get_transaction(
      $grpc.ServiceCall call, $2.StringValue request);
  $async.Future<$7.ListTransactionsResponse> list_transactions(
      $grpc.ServiceCall call, $8.Duration request);
  $async.Future<$0.Empty> delete_transaction(
      $grpc.ServiceCall call, $2.StringValue request);
}
