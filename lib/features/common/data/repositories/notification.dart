import 'dart:io';

import 'package:api_utils/api_utils.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/features/common/data/utils/notification.dart';
import 'package:mobile/features/common/domain/repositories/notification.dart';
import 'package:mobile/generated/protos/common.pb.dart';
import 'package:mobile/generated/protos/notification.pb.dart';
import 'package:mobile/generated/protos/notification_service.pbgrpc.dart';

@Singleton(as: BaseNotificationRepository)
final class NotificationRepository implements BaseNotificationRepository {
  final NotificationServiceClient _client;
  final FirebaseMessaging _messagingClient;
  final FlutterLocalNotificationsPlugin _localNotificationsClient;

  const NotificationRepository(
      this._client, this._messagingClient, this._localNotificationsClient);

  @override
  FutureEither<void, Empty> registerDevice() async {
    // set the foreground handler
    if (Platform.isIOS) {
      await _messagingClient.requestPermission();
      await _messagingClient.setForegroundNotificationPresentationOptions(
          alert: true, badge: true, sound: true);
    }

    // set the background handler
    FirebaseMessaging.onBackgroundMessage(backgroundNotificationMessageHandler);

    // handle messages when the app is in the foreground
    FirebaseMessaging.onMessage.listen(foregroundNotificationMessageHandler);

    // handle messages when the app resumes from a terminated state
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
    _messagingClient.getInitialMessage().then(handleMessage);

    // get the token
    var token = await _messagingClient.getToken();
    var request = RegisterDeviceRequest(token: token);
    return await runWithGrpcUnaryZonedGuarded(_client.registerDevice(request));
  }

  @override
  FutureEither<void, Empty> unregisterDevice() async {
    await _messagingClient.deleteToken();
    var request = RegisterDeviceRequest(topic: 'test');
    return await runWithGrpcUnaryZonedGuarded(
        _client.unregisterDevice(request));
  }
}
