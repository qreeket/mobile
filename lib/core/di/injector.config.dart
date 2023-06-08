// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i10;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i11;
import 'package:flutter_local_notifications/flutter_local_notifications.dart'
    as _i12;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i13;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i14;
import 'package:hive_flutter/adapters.dart' as _i25;
import 'package:hive_flutter/hive_flutter.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:local_auth/local_auth.dart' as _i16;
import 'package:mobile/core/di/modules.dart' as _i33;
import 'package:mobile/core/network/network.info.dart' as _i17;
import 'package:mobile/features/common/data/repositories/common.dart' as _i5;
import 'package:mobile/features/common/data/repositories/security.dart' as _i20;
import 'package:mobile/features/common/domain/repositories/common.dart' as _i4;
import 'package:mobile/features/common/domain/repositories/security.dart'
    as _i19;
import 'package:mobile/features/groups/data/local/data_sources/channel.dart'
    as _i9;
import 'package:mobile/features/groups/data/local/data_sources/group.dart'
    as _i22;
import 'package:mobile/features/groups/data/remote/data_sources/channel.dart'
    as _i21;
import 'package:mobile/features/groups/data/remote/data_sources/group.dart'
    as _i23;
import 'package:mobile/features/groups/data/repositories/channel.dart' as _i30;
import 'package:mobile/features/groups/data/repositories/group.dart' as _i32;
import 'package:mobile/features/groups/domain/repositories/channel.dart'
    as _i29;
import 'package:mobile/features/groups/domain/repositories/group.dart' as _i31;
import 'package:mobile/features/onboarding/data/local/auth.dart' as _i24;
import 'package:mobile/features/onboarding/data/remote/auth.dart' as _i26;
import 'package:mobile/features/onboarding/data/repositories/auth.dart' as _i28;
import 'package:mobile/features/onboarding/domain/repositories/auth.dart'
    as _i27;
import 'package:mobile/generated/protos/auth.pb.dart' as _i8;
import 'package:mobile/generated/protos/auth_service.pbgrpc.dart' as _i3;
import 'package:mobile/generated/protos/group.pb.dart' as _i7;
import 'package:mobile/generated/protos/group_service.pbgrpc.dart' as _i15;
import 'package:mobile/generated/protos/sms_service.pbgrpc.dart' as _i18;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final grpcModule = _$GrpcModule();
    final localDatabaseModule = _$LocalDatabaseModule();
    final networkModule = _$NetworkModule();
    final authModule = _$AuthModule();
    final secureStorageModule = _$SecureStorageModule();
    gh.singleton<_i3.AuthServiceClient>(grpcModule.authClient);
    gh.factory<_i4.BaseCommonRepository>(() => _i5.CommonRepository());
    gh.lazySingleton<_i6.Box<_i7.Group>>(() => localDatabaseModule.groupsBox);
    gh.lazySingleton<_i6.Box<_i7.Channel>>(
        () => localDatabaseModule.channelsBox);
    gh.lazySingleton<_i6.Box<_i8.Account>>(
        () => localDatabaseModule.accountsBox);
    gh.lazySingleton<_i6.Box<_i8.Country>>(
        () => localDatabaseModule.countriesBox);
    gh.lazySingleton<_i6.Box<_i8.College>>(
        () => localDatabaseModule.collegesBox);
    gh.factory<_i9.ChannelLocalDataSource>(
        () => _i9.ChannelLocalDataSource(gh<_i6.Box<_i7.Channel>>()));
    gh.singleton<_i10.Connectivity>(networkModule.connectivity);
    gh.lazySingleton<_i11.FacebookAuth>(() => authModule.facebookAuth);
    gh.lazySingleton<_i12.FlutterLocalNotificationsPlugin>(
        () => secureStorageModule.flutterLocalNotificationsPlugin);
    gh.singleton<_i13.FlutterSecureStorage>(secureStorageModule.secureStorage);
    gh.lazySingleton<_i14.GoogleSignIn>(() => authModule.googleSignIn);
    gh.lazySingleton<_i15.GroupChannelServiceClient>(
        () => grpcModule.groupClient);
    gh.singleton<_i16.LocalAuthentication>(
        secureStorageModule.localAuthentication);
    gh.factory<_i17.NetworkInfo>(
        () => _i17.NetworkInfo(gh<_i10.Connectivity>()));
    gh.lazySingleton<_i18.SmsServiceClient>(() => grpcModule.smsClient);
    gh.factory<_i19.BaseSecurityRepository>(() => _i20.SecureStorageRepository(
          gh<_i13.FlutterSecureStorage>(),
          gh<_i16.LocalAuthentication>(),
          gh<_i12.FlutterLocalNotificationsPlugin>(),
        ));
    gh.factory<_i21.ChannelRemoteDataSource>(() => _i21.ChannelRemoteDataSource(
          gh<_i15.GroupChannelServiceClient>(),
          gh<_i19.BaseSecurityRepository>(),
        ));
    gh.factory<_i22.GroupLocalDataSource>(() => _i22.GroupLocalDataSource(
          gh<_i19.BaseSecurityRepository>(),
          gh<_i6.Box<_i7.Group>>(),
        ));
    gh.factory<_i23.GroupRemoteDataSource>(() => _i23.GroupRemoteDataSource(
          gh<_i15.GroupChannelServiceClient>(),
          gh<_i19.BaseSecurityRepository>(),
        ));
    gh.factory<_i24.AuthLocalDataSource>(() => _i24.AuthLocalDataSource(
          gh<_i25.Box<_i8.Account>>(),
          gh<_i25.Box<_i8.Country>>(),
          gh<_i25.Box<_i8.College>>(),
          gh<_i19.BaseSecurityRepository>(),
        ));
    gh.factory<_i26.AuthRemoteDataSource>(() => _i26.AuthRemoteDataSource(
          gh<_i19.BaseSecurityRepository>(),
          gh<_i3.AuthServiceClient>(),
          gh<_i11.FacebookAuth>(),
          gh<_i14.GoogleSignIn>(),
          gh<_i18.SmsServiceClient>(),
        ));
    gh.factory<_i27.BaseAuthRepository>(() => _i28.AuthRepository(
          gh<_i17.NetworkInfo>(),
          gh<_i26.AuthRemoteDataSource>(),
          gh<_i24.AuthLocalDataSource>(),
        ));
    gh.factory<_i29.BaseChannelRepository>(() => _i30.ChannelRepository(
          gh<_i17.NetworkInfo>(),
          gh<_i21.ChannelRemoteDataSource>(),
          gh<_i9.ChannelLocalDataSource>(),
        ));
    gh.factory<_i31.BaseGroupRepository>(() => _i32.GroupRepository(
          gh<_i23.GroupRemoteDataSource>(),
          gh<_i22.GroupLocalDataSource>(),
          gh<_i17.NetworkInfo>(),
        ));
    return this;
  }
}

class _$SecureStorageModule extends _i33.SecureStorageModule {}

class _$AuthModule extends _i33.AuthModule {}

class _$GrpcModule extends _i33.GrpcModule {}

class _$NetworkModule extends _i33.NetworkModule {}

class _$LocalDatabaseModule extends _i33.LocalDatabaseModule {}
