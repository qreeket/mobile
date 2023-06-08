import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:local_auth/local_auth.dart';
import 'package:mobile/core/utils/env.dart';
import 'package:mobile/features/common/domain/repositories/security.dart';
import 'package:shared_utils/shared_utils.dart';

/// A repository that handles the security (local storage of tokens) of the app
@Injectable(as: BaseSecurityRepository)
final class SecureStorageRepository implements BaseSecurityRepository {
  final FlutterSecureStorage _secureStorage;
  final LocalAuthentication _localAuthentication;
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin;

  const SecureStorageRepository(
    this._secureStorage,
    this._localAuthentication,
    this._flutterLocalNotificationsPlugin,
  );

  @override
  Future<void> deleteAccessTokenAndUserId() async {
    await _secureStorage.delete(key: Env.kAccessTokenKey);
    await _secureStorage.delete(key: Env.kUserIdKey);
  }

  @override
  Future<String?> getAccessToken() async =>
      await _secureStorage.read(key: Env.kAccessTokenKey);

  @override
  Future<void> storeAccessToken(String token) async =>
      await _secureStorage.write(key: Env.kAccessTokenKey, value: token);

  @override
  Future<Either<void, String>> toggleBiometrics(bool enabled) async {
    var supported = await _localAuthentication.isDeviceSupported();
    logger.d('Biometrics supported: $supported');
    if (!supported) return right('Biometrics are not supported on this device');
    if (enabled) {
      var authenticated = await _localAuthentication.authenticate(
          localizedReason: 'Authenticate to enable biometrics for this app');
      logger.d('Biometrics authenticated: $authenticated');
      if (!authenticated) return right('Biometrics authentication failed');
    } else {
      var stopped = await _localAuthentication.stopAuthentication();
      logger.d('Biometrics stopped: $stopped');
    }
    await _secureStorage.write(
        key: Env.kBiometricKey, value: enabled.toString());
    return left(null);
  }

  @override
  Future<Either<void, String>> toggleNotifications(bool enabled) async {
    if (enabled) {
      // initialize the plugin for android & ios
      var initializationSettingsAndroid =
          const AndroidInitializationSettings('app_icon');
      var initializationSettingsIOS = const DarwinInitializationSettings();
      var initializationSettings = InitializationSettings(
          android: initializationSettingsAndroid,
          iOS: initializationSettingsIOS);
      await _flutterLocalNotificationsPlugin.initialize(initializationSettings,
          onDidReceiveNotificationResponse: (payload) async {
        logger.d('Notification payload: $payload');
        // TODO -> handle notification payload
      });
      // request permission
      var granted = Platform.isIOS
          ? await _flutterLocalNotificationsPlugin
              .resolvePlatformSpecificImplementation<
                  IOSFlutterLocalNotificationsPlugin>()
              ?.requestPermissions(alert: true, badge: true, sound: true)
          : await _flutterLocalNotificationsPlugin
              .resolvePlatformSpecificImplementation<
                  AndroidFlutterLocalNotificationsPlugin>()
              ?.requestPermission();
      logger.d('Notifications granted: $granted');
      if (!granted!) return right('Notifications permission denied');
      // schedule a notification
      var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
          'main_channel', 'Groups & Channels',
          channelDescription: 'Group & channel notifications',
          importance: Importance.max,
          priority: Priority.high);
      var iOSPlatformChannelSpecifics = const DarwinNotificationDetails();
      var platformChannelSpecifics = NotificationDetails(
          android: androidPlatformChannelSpecifics,
          iOS: iOSPlatformChannelSpecifics);
      await _flutterLocalNotificationsPlugin.show(
          0,
          'Thank you for enabling notifications!',
          'You will now receive notifications for new messages in your groups and channels',
          platformChannelSpecifics);
    } else {
      await _flutterLocalNotificationsPlugin.cancelAll();
    }
    await _secureStorage.write(
        key: Env.kNotificationKey, value: enabled.toString());
    return left(null);
  }

  @override
  Future<bool> isBiometricEnabled() async => _secureStorage
      .read(key: Env.kBiometricKey)
      .then((value) => value == 'true')
      .catchError((_) => false);

  @override
  Future<bool> isNotificationsEnabled() async => _secureStorage
      .read(key: Env.kNotificationKey)
      .then((value) => value == 'true')
      .catchError((_) => false);

  @override
  Future<String> getLocale() async =>
      await _secureStorage.read(key: Env.kLocaleKey) ?? 'en';

  @override
  Future<bool> get isLoggedIn async => await getUserId() != null;

  @override
  Future<void> updateDefaultLanguage(String locale) async =>
      await _secureStorage.write(key: Env.kLocaleKey, value: locale);

  @override
  Future<String?> getUserId() async =>
      await _secureStorage.read(key: Env.kUserIdKey);

  @override
  Future<void> storeUserId(String uid) async =>
      await _secureStorage.write(key: Env.kUserIdKey, value: uid);
}
