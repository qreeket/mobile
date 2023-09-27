//
//  Generated code. Do not modify.
//  source: billing_service.proto
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

import 'billing.pb.dart' as $6;
import 'common.pb.dart' as $0;

export 'billing_service.pb.dart';

@$pb.GrpcServiceName('qreeket.BillingService')
class BillingServiceClient extends $grpc.Client {
  static final _$charge = $grpc.ClientMethod<$6.ChargeRequest, $6.ChargeResponse>(
      '/qreeket.BillingService/charge',
      ($6.ChargeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ChargeResponse.fromBuffer(value));
  static final _$get_transaction = $grpc.ClientMethod<$0.StringValue, $6.Transaction>(
      '/qreeket.BillingService/get_transaction',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.Transaction.fromBuffer(value));
  static final _$list_transactions = $grpc.ClientMethod<$0.Duration, $6.ListTransactionsResponse>(
      '/qreeket.BillingService/list_transactions',
      ($0.Duration value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ListTransactionsResponse.fromBuffer(value));
  static final _$delete_transaction = $grpc.ClientMethod<$0.StringValue, $0.Empty>(
      '/qreeket.BillingService/delete_transaction',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  BillingServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$6.ChargeResponse> charge($6.ChargeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$charge, request, options: options);
  }

  $grpc.ResponseFuture<$6.Transaction> get_transaction($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get_transaction, request, options: options);
  }

  $grpc.ResponseFuture<$6.ListTransactionsResponse> list_transactions($0.Duration request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list_transactions, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> delete_transaction($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete_transaction, request, options: options);
  }
}

@$pb.GrpcServiceName('qreeket.BillingService')
abstract class BillingServiceBase extends $grpc.Service {
  $core.String get $name => 'qreeket.BillingService';

  BillingServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.ChargeRequest, $6.ChargeResponse>(
        'charge',
        charge_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.ChargeRequest.fromBuffer(value),
        ($6.ChargeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $6.Transaction>(
        'get_transaction',
        get_transaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($6.Transaction value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Duration, $6.ListTransactionsResponse>(
        'list_transactions',
        list_transactions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Duration.fromBuffer(value),
        ($6.ListTransactionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $0.Empty>(
        'delete_transaction',
        delete_transaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$6.ChargeResponse> charge_Pre($grpc.ServiceCall call, $async.Future<$6.ChargeRequest> request) async {
    return charge(call, await request);
  }

  $async.Future<$6.Transaction> get_transaction_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return get_transaction(call, await request);
  }

  $async.Future<$6.ListTransactionsResponse> list_transactions_Pre($grpc.ServiceCall call, $async.Future<$0.Duration> request) async {
    return list_transactions(call, await request);
  }

  $async.Future<$0.Empty> delete_transaction_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return delete_transaction(call, await request);
  }

  $async.Future<$6.ChargeResponse> charge($grpc.ServiceCall call, $6.ChargeRequest request);
  $async.Future<$6.Transaction> get_transaction($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$6.ListTransactionsResponse> list_transactions($grpc.ServiceCall call, $0.Duration request);
  $async.Future<$0.Empty> delete_transaction($grpc.ServiceCall call, $0.StringValue request);
}
