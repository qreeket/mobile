import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:mobile/core/network/log.interceptor.dart';
import 'package:mobile/core/network/token.interceptor.dart';
import 'package:mobile/core/utils/env.dart';
import 'package:mobile/generated/protos/auth_service.pbgrpc.dart';
import 'package:mobile/generated/protos/group_service.pbgrpc.dart';
import 'package:mobile/generated/protos/notification_service.pbgrpc.dart';
import 'package:mobile/generated/protos/sms_service.pbgrpc.dart';

class NetworkServerConfig {
  static const _kAndroidEmulatorHost = '10.0.2.2';

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
  static AuthServiceClient createAuthClient() => AuthServiceClient(
      createChannel(
          Platform.isAndroid && kDebugMode
              ? _kAndroidEmulatorHost
              : Env.kAuthClientHost,
          Env.kAuthClientPort),
      interceptors: _createInterceptors);

  static SmsServiceClient createSmsClient() =>
      SmsServiceClient(createChannel(Env.kSmsClientHost, Env.kSmsClientPort),
          interceptors: _createInterceptors);

  static GroupServiceClient createGroupClient() => GroupServiceClient(
      createChannel(
          Platform.isAndroid && kDebugMode
              ? _kAndroidEmulatorHost
              : Env.kGroupClientHost,
          Env.kGroupClientPort),
      interceptors: _createInterceptors);

  static ChannelServiceClient createChannelClient() => ChannelServiceClient(
      createChannel(
          Platform.isAndroid && kDebugMode
              ? _kAndroidEmulatorHost
              : Env.kGroupClientHost,
          Env.kGroupClientPort),
      interceptors: _createInterceptors);

  static NotificationServiceClient createNotificationClient() =>
      NotificationServiceClient(
          createChannel(
              Platform.isAndroid && kDebugMode
                  ? _kAndroidEmulatorHost
                  : Env.kNotificationClientHost,
              Env.kNotificationClientPort),
          interceptors: _createInterceptors);
}
