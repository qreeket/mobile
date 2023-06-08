import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:grpc/grpc.dart';

/// error message for server not available.
const _kServerNotAvailableMessage =
    'Oops... It seems our servers are not available at the moment. Please try again later.';

/// wrapper for grpc unary calls.
Future<Either<L, R>> runWithGrpcUnaryZonedGuarded<L, R>({
  required Future<L> Function() run,
  Either<L, R> Function(GrpcError)? onError,
  String? errMessage,
}) async {
  try {
    final result = await run();
    return left(result);
  } on GrpcError catch (err) {
    if (err.code == StatusCode.unavailable) {
      return right(_kServerNotAvailableMessage as R);
    }
    if (onError != null) return onError.call(err);
    return right(
        (err.message ?? errMessage ?? _kServerNotAvailableMessage) as R);
  } on PlatformException catch (err) {
    return right((err.message ?? errMessage ?? 'Something went wrong') as R);
  } catch (err) {
    return right(err.toString() as R);
  }
}

/// wrapper for grpc stream calls.
Future<Either<Stream<L>, R>> runWithGrpcStreamZonedGuarded<L, R>({
  required Future<Stream<L>> Function() run,
  Either<Stream<L>, R> Function(GrpcError)? onError,
  String? errMessage,
}) async {
  try {
    final result = await run();
    return left(result);
  } on GrpcError catch (err) {
    if (err.code == StatusCode.unavailable) {
      return right(_kServerNotAvailableMessage as R);
    }
    if (onError != null) return onError.call(err);
    return right(
        (err.message ?? errMessage ?? _kServerNotAvailableMessage) as R);
  } on PlatformException catch (err) {
    return right((err.message ?? errMessage ?? 'Something went wrong') as R);
  } catch (err) {
    return right(err.toString() as R);
  }
}
