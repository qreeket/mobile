import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_utils/shared_utils.dart' show logger;

@module
abstract class NotificationModule {
  @lazySingleton
  @preResolve
  Future<FlutterLocalNotificationsPlugin>
      get flutterLocalNotificationsPlugin async {
    final plugin = FlutterLocalNotificationsPlugin();
    // initialize the plugin for android & ios
    final initializationSettingsAndroid =
        const AndroidInitializationSettings('app_icon');
    final initializationSettingsIOS = const DarwinInitializationSettings();
    final initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );
    await plugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (payload) async {
        logger.d('Notification payload: $payload');
        // @todo -> handle notification payload
      },
    );
    return plugin;
  }
}
