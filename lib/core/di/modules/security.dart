import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:local_auth/local_auth.dart';

@module
abstract class SecureStorageModule {
  @singleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage(
      aOptions:
          AndroidOptions(encryptedSharedPreferences: true, resetOnError: true));

  @singleton
  LocalAuthentication get localAuthentication => LocalAuthentication();
}
