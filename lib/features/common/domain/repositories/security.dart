import 'package:api_utils/api_utils.dart';

/// Interface for security repository
abstract interface class BaseSecurityRepository {
  Future<void> updateDefaultLanguage(String locale);

  Future<String> getLocale();

  Future<bool> get isLoggedIn;

  Future<void> storeAccessToken(String token);

  Future<String?> getAccessToken();

  Future<void> storeUserId(String uid);

  Future<String?> getUserId();

  Future<void> deleteAccessTokenAndUserId();

  FutureEither<void, String> toggleNotifications(bool enabled);

  FutureEither<void, String> toggleBiometrics(bool enabled);

  Future<bool> isBiometricEnabled();

  Future<bool> isNotificationsEnabled();
}
