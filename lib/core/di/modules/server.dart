import 'package:injectable/injectable.dart';
import 'package:mobile/core/network/grpc.config.dart';
import 'package:mobile/generated/protos/auth_service.pbgrpc.dart';
import 'package:mobile/generated/protos/group_service.pbgrpc.dart';
import 'package:mobile/generated/protos/notification_service.pbgrpc.dart';
import 'package:mobile/generated/protos/sms_service.pbgrpc.dart';

@module
abstract class GrpcModule {
  @singleton
  AuthServiceClient get authClient => NetworkServerConfig.createAuthClient();

  @lazySingleton
  SmsServiceClient get smsClient => NetworkServerConfig.createSmsClient();

  @lazySingleton
  GroupServiceClient get groupClient => NetworkServerConfig.createGroupClient();

  @lazySingleton
  ChannelServiceClient get channelClient =>
      NetworkServerConfig.createChannelClient();

  @lazySingleton
  NotificationServiceClient get notificationClient =>
      NetworkServerConfig.createNotificationClient();
}
