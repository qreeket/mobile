import 'dart:io';

import 'package:api_utils/api_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:encrypt/encrypt.dart';
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
  SecureStorageRepository(
    this._secureStorage,
    this._localAuthentication,
    this._flutterLocalNotificationsPlugin,
  );

  final FlutterSecureStorage _secureStorage;
  final LocalAuthentication _localAuthentication;
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin;

  // keys for encrypting data on the device
  final _key = Key.fromUtf8(Env.kEncryptorKey), _iv = IV.fromLength(16);
  late final _encryptor = Encrypter(AES(_key));

  @override
  Future<void> deleteAccessTokenAndUserId() async {
    await _secureStorage.delete(key: Env.kAccessTokenKey);
    await _secureStorage.delete(key: Env.kUserIdKey);
  }

  @override
  Future<String?> getAccessToken() async {
    var encryptedData = await _secureStorage.read(key: Env.kAccessTokenKey);
    if (encryptedData == null) return null;
    return _encryptor.decrypt64(encryptedData, iv: _iv);
  }

  @override
  Future<void> storeAccessToken(String token) async =>
      await _secureStorage.write(
          key: Env.kAccessTokenKey,
          value: _encryptor.encrypt(token, iv: _iv).base64);

  @override
  FutureEither<void, String> toggleBiometrics(bool enabled) async {
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
        key: Env.kBiometricKey,
        value: _encryptor.encrypt(enabled.toString(), iv: _iv).base64);
    return left(null);
  }

  @override
  FutureEither<void, String> toggleNotifications(bool enabled) async {
    if (enabled) {
      // initialize the plugin for android & ios
      var initializationSettingsAndroid =
          const AndroidInitializationSettings('@drawable/app_icon');
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
              ?.requestNotificationsPermission();
      logger.d('Notifications granted: $granted');
      if (!granted!) return right('Notifications permission denied');

      // @todo -> replace with notification utility class

      // schedule a notification
      var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
          'main_channel', 'Main channel',
          channelDescription: 'Main channel notifications',
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
        key: Env.kNotificationKey,
        value: _encryptor.encrypt(enabled.toString(), iv: _iv).base64);
    return left(null);
  }

  @override
  Future<bool> isBiometricEnabled() async => _secureStorage
      .read(key: Env.kBiometricKey)
      .then((value) => value == null
          ? false
          : _encryptor.decrypt64(value, iv: _iv) == 'true')
      .catchError((_) => false);

  @override
  Future<bool> isNotificationsEnabled() async => _secureStorage
      .read(key: Env.kNotificationKey)
      .then((value) => value == null
          ? false
          : _encryptor.decrypt64(value, iv: _iv) == 'true')
      .catchError((_) => false);

  @override
  Future<String> getLocale() async {
    var decryptedData = await _secureStorage.read(key: Env.kLocaleKey);
    if (decryptedData == null) return 'en';
    return _encryptor.decrypt64(decryptedData, iv: _iv);
  }

  @override
  Future<bool> get isLoggedIn async => await getUserId() != null;

  @override
  Future<void> updateDefaultLanguage(String locale) async =>
      await _secureStorage.write(
          key: Env.kLocaleKey,
          value: _encryptor.encrypt(locale, iv: _iv).base64);

  @override
  Future<String?> getUserId() async {
    var encryptedData = await _secureStorage.read(key: Env.kUserIdKey);
    if (encryptedData == null) return null;
    return _encryptor.decrypt64(encryptedData, iv: _iv);
  }

  @override
  Future<void> storeUserId(String uid) async => await _secureStorage.write(
      key: Env.kUserIdKey, value: _encryptor.encrypt(uid, iv: _iv).base64);
}
