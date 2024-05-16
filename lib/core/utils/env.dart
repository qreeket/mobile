import 'package:envied/envied.dart';
import 'package:flutter/foundation.dart';

part 'env.g.dart';

@Envied(path: kReleaseMode ? '.env.prod' : '.env', obfuscate: true)
abstract class Env {
  // region prefs keys
  @EnviedField(varName: 'ACCESS_TOKEN_KEY')
  static final String kAccessTokenKey = _Env.kAccessTokenKey;
  @EnviedField(varName: 'NOTIFICATIONS_KEY')
  static final String kNotificationKey = _Env.kNotificationKey;
  @EnviedField(varName: 'BIOMETRICS_KEY')
  static final String kBiometricKey = _Env.kBiometricKey;
  @EnviedField(varName: 'LOCALE_KEY')
  static final String kLocaleKey = _Env.kLocaleKey;
  @EnviedField(varName: 'UID_KEY')
  static final String kUserIdKey = _Env.kUserIdKey;

  // endregion prefs keys

  // region crash logging & reporting
  @EnviedField(varName: 'SENTRY_DSN')
  static final String kSentryDsn = _Env.kSentryDsn;

  // endregion crash logging & reporting

  // region grpc servers
  @EnviedField(varName: 'AUTH_GRPC_SERVER_HOST')
  static final String kAuthClientHost = _Env.kAuthClientHost;
  @EnviedField(varName: 'AUTH_GRPC_SERVER_PORT')
  static final int kAuthClientPort = _Env.kAuthClientPort;
  @EnviedField(varName: 'SMS_GRPC_SERVER_HOST')
  static final String kSmsClientHost = _Env.kSmsClientHost;
  @EnviedField(varName: 'SMS_GRPC_SERVER_PORT')
  static final int kSmsClientPort = _Env.kSmsClientPort;
  @EnviedField(varName: 'GROUPS_GRPC_SERVER_HOST')
  static final String kGroupClientHost = _Env.kGroupClientHost;
  @EnviedField(varName: 'GROUPS_GRPC_SERVER_PORT')
  static final int kGroupClientPort = _Env.kGroupClientPort;
  @EnviedField(varName: 'NOTIFICATION_GRPC_SERVER_HOST')
  static final String kNotificationClientHost = _Env.kNotificationClientHost;
  @EnviedField(varName: 'NOTIFICATION_GRPC_SERVER_PORT')
  static final int kNotificationClientPort = _Env.kNotificationClientPort;

  // endregion grpc servers

  // region local database box names

  @EnviedField(varName: 'GROUPS_BOX_NAME')
  static final String kGroupsBoxName = _Env.kGroupsBoxName;

  @EnviedField(varName: 'CHANNELS_BOX_NAME')
  static final String kChannelBoxName = _Env.kChannelBoxName;

  @EnviedField(varName: 'MESSAGES_BOX_NAME')
  static final String kMessageBoxName = _Env.kMessageBoxName;

  @EnviedField(varName: 'USERS_BOX_NAME')
  static final String kUsersBoxName = _Env.kUsersBoxName;

  @EnviedField(varName: 'USER_GROUPS_BOX_NAME')
  static final String kUserGroupsBoxName = _Env.kUserGroupsBoxName;

  @EnviedField(varName: 'USER_CHANNELS_BOX_NAME')
  static final String kUserChannelsBoxName = _Env.kUserChannelsBoxName;

  @EnviedField(varName: 'USER_MESSAGES_BOX_NAME')
  static final String kUserMessagesBoxName = _Env.kUserMessagesBoxName;

  @EnviedField(varName: 'ACCOUNT_BOX_NAME')
  static final String kAccountsBoxName = _Env.kAccountsBoxName;

  @EnviedField(varName: 'COUNTRY_BOX_NAME')
  static final String kCountriesBoxName = _Env.kCountriesBoxName;

  @EnviedField(varName: 'COLLEGE_BOX_NAME')
  static final String kCollegesBoxName = _Env.kCollegesBoxName;

// endregion local database box names

  // region encryptor
  @EnviedField(varName: 'E2E_ENCRYPTION_KEY')
  static final String kEncryptorKey = _Env.kEncryptorKey;
 // endregion encryptor
}
