import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:mobile/core/di/injector.dart';
import 'package:mobile/features/common/domain/repositories/security.dart';
import 'package:shared_utils/shared_utils.dart';

class TokenGrpcInterceptor implements ClientInterceptor {
  @override
  ResponseStream<R> interceptStreaming<Q, R>(
          ClientMethod<Q, R> method,
          Stream<Q> requests,
          CallOptions options,
          ClientStreamingInvoker<Q, R> invoker) =>
      invoker(method, requests,
          options.mergedWith(CallOptions(providers: [_tokenProvider])));

  @override
  ResponseFuture<R> interceptUnary<Q, R>(ClientMethod<Q, R> method, Q self,
          CallOptions options, ClientUnaryInvoker<Q, R> invoker) =>
      invoker(method, self,
          options.mergedWith(CallOptions(providers: [_tokenProvider])));

  FutureOr<void> _tokenProvider(Map<String, String> md, String _) async {
    final securityRepository = getIt<BaseSecurityRepository>();
    md['x-language-id'] = await securityRepository.getLocale();

    // get token from storage
    var token = await securityRepository.getAccessToken();

    // set token to metadata
    if (!token.isNullOrEmpty()) md['Authorization'] = 'Bearer $token';
    md['x-authenticated'] = '${await securityRepository.isLoggedIn}';
  }
}
