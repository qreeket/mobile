import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:mobile/core/di/injector.dart';
import 'package:mobile/core/routing/router.dart';
import 'package:mobile/features/common/presentation/globals.dart';
import 'package:shared_utils/shared_utils.dart';

/// Handles the background notification message
Future<void> backgroundNotificationMessageHandler(
    RemoteMessage? message) async {
  if (message == null) return;
  logger.d('Notification payload: $message');
// TODO -> handle notification payload
  var notificationPlugin = sl<FlutterLocalNotificationsPlugin>();
}

/// Handles the foreground notification message and displays it
Future<void> foregroundNotificationMessageHandler(message) async {
  if (message.notification == null) return;
  var notificationPlugin = sl<FlutterLocalNotificationsPlugin>();

  // initialize the plugin for android & ios
  var initializationSettingsAndroid =
      const AndroidInitializationSettings('@drawable/app_icon');
  var initializationSettingsIOS = const DarwinInitializationSettings();
  var initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
  await notificationPlugin.initialize(
    initializationSettings,
    onDidReceiveBackgroundNotificationResponse: (payload) =>
        backgroundNotificationMessageHandler(payload.payload == null
            ? null
            : RemoteMessage.fromMap(jsonDecode(payload.payload!))),
    onDidReceiveNotificationResponse: (response) async {
      if (response.payload == null) return;
      var message = RemoteMessage.fromMap(jsonDecode(response.payload!));
      await handleMessage(message);
    },
  );

  var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
      'main_channel', 'Main channel',
      channelDescription: 'Main channel notifications',
      importance: Importance.max,
      priority: Priority.high);
  var iOSPlatformChannelSpecifics = const DarwinNotificationDetails();
  var platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics);
  await notificationPlugin.show(
      message.notification?.hashCode ?? 0,
      message.notification?.title ?? 'Notification from Qreeket',
      message.notification?.body ?? 'You have a new notification',
      platformChannelSpecifics,
      payload: jsonEncode(message.data));
}

/// This is the handler for notifications when the app is in the foreground.
/// It handles tapping on the notification and navigating to the notifications page
Future<void> handleMessage(RemoteMessage? message) async {
  if (message == null) return;
  logger.i('Handling a message ${message.messageId}');

  // navigate to notifications page
  navigatorKey.currentState
      ?.pushNamed(AppRouter.notificationsRoute, arguments: message);
}
