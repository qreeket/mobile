import 'dart:io';

import 'package:api_utils/api_utils.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/core/routing/router.dart';
import 'package:mobile/features/common/domain/repositories/notification.dart';
import 'package:mobile/features/common/presentation/globals.dart';
import 'package:mobile/generated/protos/common.pb.dart';
import 'package:mobile/generated/protos/notification.pb.dart';
import 'package:mobile/generated/protos/notification_service.pbgrpc.dart';
import 'package:shared_utils/shared_utils.dart';

@LazySingleton(as: BaseNotificationRepository)
final class NotificationRepository implements BaseNotificationRepository {
  final NotificationServiceClient _client;
  final FirebaseMessaging _messagingClient;

  const NotificationRepository(this._client, this._messagingClient);

  @override
  FutureEither<void, Empty> registerDevice() async {
    if (Platform.isIOS) await _messagingClient.requestPermission();

    // set the foreground handler
    if (Platform.isIOS) {
      _messagingClient.setForegroundNotificationPresentationOptions(
          alert: true, badge: true, sound: true);
    }

    // handle messages when the app resumes from a terminated state
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
    _messagingClient.getInitialMessage().then(handleMessage);

    // set the background handler
    FirebaseMessaging.onBackgroundMessage(backgroundNotificationMessageHandler);

    // get the token
    var token = await _messagingClient.getToken();
    var request = RegisterDeviceRequest(token: token, topic: 'test');
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

/// This is the background handler for notifications when the app is in the
/// background or terminated. This is not called when the app is in the
/// foreground.
Future<void> backgroundNotificationMessageHandler(RemoteMessage message) async {
  logger.i('Handling a background message ${message.messageId}');
}

/// This is the handler for notifications when the app is in the foreground.
Future<void> handleMessage(RemoteMessage? message) async {
  if (message == null) return;
  logger.i('Handling a message ${message.messageId}');

  // navigate to notifications page
  navigatorKey.currentState
      ?.pushNamed(AppRouter.notificationsRoute, arguments: message);
}
