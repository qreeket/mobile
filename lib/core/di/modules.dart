import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:local_auth/local_auth.dart';
import 'package:mobile/core/network/grpc.config.dart';
import 'package:mobile/core/utils/env.dart';
import 'package:mobile/generated/protos/auth.pb.dart';
import 'package:mobile/generated/protos/auth_service.pbgrpc.dart';
import 'package:mobile/generated/protos/group.pb.dart';
import 'package:mobile/generated/protos/group_service.pbgrpc.dart';
import 'package:mobile/generated/protos/sms_service.pbgrpc.dart';

@module
abstract class SecureStorageModule {
  @singleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage(
      aOptions:
          AndroidOptions(encryptedSharedPreferences: true, resetOnError: true));

  @singleton
  LocalAuthentication get localAuthentication => LocalAuthentication();

  @lazySingleton
  FlutterLocalNotificationsPlugin get flutterLocalNotificationsPlugin =>
      FlutterLocalNotificationsPlugin();
}

@module
abstract class AuthModule {
  @lazySingleton
  FacebookAuth get facebookAuth => FacebookAuth.i;

  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();
}

@module
abstract class GrpcModule {
  @singleton
  AuthServiceClient get authClient => NetworkServerConfig.createAuthClient();

  @lazySingleton
  SmsServiceClient get smsClient => NetworkServerConfig.createSmsClient();

  @lazySingleton
  GroupChannelServiceClient get groupClient =>
      NetworkServerConfig.createGroupClient();
}

@module
abstract class NetworkModule {
  @singleton
  Connectivity get connectivity => Connectivity();
}

@module
abstract class LocalDatabaseModule {
  @lazySingleton
  Box<Group> get groupsBox => Hive.box<Group>(Env.kGroupsBoxName);

  @lazySingleton
  Box<Channel> get channelsBox => Hive.box<Channel>(Env.kChannelBoxName);

  @lazySingleton
  Box<Account> get accountsBox => Hive.box<Account>(Env.kAccountsBoxName);

  @lazySingleton
  Box<Country> get countriesBox => Hive.box<Country>(Env.kCountriesBoxName);

  @lazySingleton
  Box<College> get collegesBox => Hive.box<College>(Env.kCollegesBoxName);
}
