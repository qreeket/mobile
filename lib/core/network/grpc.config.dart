import 'package:grpc/grpc.dart';
import 'package:mobile/core/network/log.interceptor.dart';
import 'package:mobile/core/network/token.interceptor.dart';
import 'package:mobile/core/utils/env.dart';
import 'package:mobile/generated/protos/auth_service.pbgrpc.dart';
import 'package:mobile/generated/protos/group_service.pbgrpc.dart';
import 'package:mobile/generated/protos/sms_service.pbgrpc.dart';

class NetworkServerConfig {
  // create grpc interceptors
  static List<ClientInterceptor> get _createInterceptors =>
      [TokenGrpcInterceptor(), LogGrpcInterceptor()];

  // create a grpc channel (insecure)
  static ClientChannel createChannel(String host, int port) {
    return ClientChannel(
      host,
      port: port,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
  }

  // create a grpc client for the given channel
  static AuthServiceClient createAuthClient() =>
      AuthServiceClient(createChannel(Env.kAuthClientHost, Env.kAuthClientPort),
          interceptors: _createInterceptors);

  static SmsServiceClient createSmsClient() =>
      SmsServiceClient(createChannel(Env.kSmsClientHost, Env.kSmsClientPort),
          interceptors: _createInterceptors);

  static GroupChannelServiceClient createGroupClient() =>
      GroupChannelServiceClient(
          createChannel(Env.kGroupClientHost, Env.kGroupClientPort),
          interceptors: _createInterceptors);
}
