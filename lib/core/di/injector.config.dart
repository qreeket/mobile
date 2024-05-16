// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i7;
import 'package:firebase_messaging/firebase_messaging.dart' as _i8;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i12;
import 'package:flutter_local_notifications/flutter_local_notifications.dart'
    as _i14;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i13;
import 'package:hive_flutter/adapters.dart' as _i24;
import 'package:hive_flutter/hive_flutter.dart' as _i15;
import 'package:injectable/injectable.dart' as _i2;
import 'package:local_auth/local_auth.dart' as _i10;
import 'package:mobile/core/di/modules/auth.dart' as _i46;
import 'package:mobile/core/di/modules/database.dart' as _i48;
import 'package:mobile/core/di/modules/firebase.dart' as _i43;
import 'package:mobile/core/di/modules/network.dart' as _i42;
import 'package:mobile/core/di/modules/notification.dart' as _i47;
import 'package:mobile/core/di/modules/security.dart' as _i44;
import 'package:mobile/core/di/modules/server.dart' as _i45;
import 'package:mobile/core/network/network.info.dart' as _i26;
import 'package:mobile/features/common/data/repositories/notification.dart'
    as _i28;
import 'package:mobile/features/common/data/repositories/security.dart' as _i22;
import 'package:mobile/features/common/domain/repositories/notification.dart'
    as _i27;
import 'package:mobile/features/common/domain/repositories/security.dart'
    as _i21;
import 'package:mobile/features/common/presentation/manager/app_cubit.dart'
    as _i38;
import 'package:mobile/features/common/presentation/manager/permission_cubit.dart'
    as _i33;
import 'package:mobile/features/core/presentation/manager/core_bloc.dart'
    as _i3;
import 'package:mobile/features/core/presentation/manager/messaging_bloc.dart'
    as _i4;
import 'package:mobile/features/groups/data/local/data_sources/channel.dart'
    as _i25;
import 'package:mobile/features/groups/data/local/data_sources/group.dart'
    as _i30;
import 'package:mobile/features/groups/data/remote/data_sources/channel.dart'
    as _i31;
import 'package:mobile/features/groups/data/remote/data_sources/group.dart'
    as _i32;
import 'package:mobile/features/groups/data/repositories/channel.dart' as _i35;
import 'package:mobile/features/groups/data/repositories/group.dart' as _i37;
import 'package:mobile/features/groups/domain/repositories/channel.dart'
    as _i34;
import 'package:mobile/features/groups/domain/repositories/group.dart' as _i36;
import 'package:mobile/features/groups/presentation/manager/channel_bloc.dart'
    as _i6;
import 'package:mobile/features/groups/presentation/manager/group_bloc.dart'
    as _i5;
import 'package:mobile/features/onboarding/data/local/auth.dart' as _i23;
import 'package:mobile/features/onboarding/data/remote/auth.dart' as _i29;
import 'package:mobile/features/onboarding/data/repositories/auth.dart' as _i40;
import 'package:mobile/features/onboarding/domain/repositories/auth.dart'
    as _i39;
import 'package:mobile/features/onboarding/presentation/manager/auth_cubit.dart'
    as _i41;
import 'package:mobile/generated/protos/auth.pb.dart' as _i17;
import 'package:mobile/generated/protos/auth_service.pbgrpc.dart' as _i11;
import 'package:mobile/generated/protos/group.pb.dart' as _i16;
import 'package:mobile/generated/protos/group_service.pbgrpc.dart' as _i19;
import 'package:mobile/generated/protos/notification_service.pbgrpc.dart'
    as _i20;
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
    final networkModule = _$NetworkModule();
    final firebaseModule = _$FirebaseModule();
    final secureStorageModule = _$SecureStorageModule();
    final grpcModule = _$GrpcModule();
    final authModule = _$AuthModule();
    final notificationModule = _$NotificationModule();
    final localDatabaseModule = _$LocalDatabaseModule();
    gh.factory<_i3.CoreBloc>(() => _i3.CoreBloc());
    gh.factory<_i4.MessagingBloc>(() => _i4.MessagingBloc());
    gh.factory<_i5.GroupBloc>(() => _i5.GroupBloc());
    gh.factory<_i6.ChannelBloc>(() => _i6.ChannelBloc());
    gh.singleton<_i7.Connectivity>(() => networkModule.connectivity);
    gh.singleton<_i8.FirebaseMessaging>(() => firebaseModule.firebaseMessaging);
    gh.singleton<_i9.FlutterSecureStorage>(
        () => secureStorageModule.secureStorage);
    gh.singleton<_i10.LocalAuthentication>(
        () => secureStorageModule.localAuthentication);
    gh.singleton<_i11.AuthServiceClient>(() => grpcModule.authClient);
    gh.lazySingleton<_i12.FacebookAuth>(() => authModule.facebookAuth);
    gh.lazySingleton<_i13.GoogleSignIn>(() => authModule.googleSignIn);
    gh.lazySingleton<_i14.FlutterLocalNotificationsPlugin>(
        () => notificationModule.flutterLocalNotificationsPlugin);
    gh.lazySingleton<_i15.Box<_i16.Group>>(() => localDatabaseModule.groupsBox);
    gh.lazySingleton<_i15.Box<_i16.Channel>>(
        () => localDatabaseModule.channelsBox);
    gh.lazySingleton<_i15.Box<_i17.Account>>(
        () => localDatabaseModule.accountsBox);
    gh.lazySingleton<_i15.Box<_i17.Country>>(
        () => localDatabaseModule.countriesBox);
    gh.lazySingleton<_i15.Box<_i17.College>>(
        () => localDatabaseModule.collegesBox);
    gh.lazySingleton<_i18.SmsServiceClient>(() => grpcModule.smsClient);
    gh.lazySingleton<_i19.GroupServiceClient>(() => grpcModule.groupClient);
    gh.lazySingleton<_i19.ChannelServiceClient>(() => grpcModule.channelClient);
    gh.lazySingleton<_i20.NotificationServiceClient>(
        () => grpcModule.notificationClient);
    gh.factory<_i21.BaseSecurityRepository>(() => _i22.SecureStorageRepository(
          gh<_i9.FlutterSecureStorage>(),
          gh<_i10.LocalAuthentication>(),
          gh<_i14.FlutterLocalNotificationsPlugin>(),
        ));
    gh.factory<_i23.AuthLocalDataSource>(() => _i23.AuthLocalDataSource(
          gh<_i24.Box<_i17.Account>>(),
          gh<_i24.Box<_i17.Country>>(),
          gh<_i24.Box<_i17.College>>(),
          gh<_i21.BaseSecurityRepository>(),
        ));
    gh.factory<_i25.ChannelLocalDataSource>(
        () => _i25.ChannelLocalDataSource(gh<_i15.Box<_i16.Channel>>()));
    gh.factory<_i26.NetworkInfo>(
        () => _i26.NetworkInfo(gh<_i7.Connectivity>()));
    gh.singleton<_i27.BaseNotificationRepository>(
        () => _i28.NotificationRepository(
              gh<_i20.NotificationServiceClient>(),
              gh<_i8.FirebaseMessaging>(),
              gh<_i14.FlutterLocalNotificationsPlugin>(),
            ));
    gh.factory<_i29.AuthRemoteDataSource>(() => _i29.AuthRemoteDataSource(
          gh<_i21.BaseSecurityRepository>(),
          gh<_i11.AuthServiceClient>(),
          gh<_i12.FacebookAuth>(),
          gh<_i13.GoogleSignIn>(),
          gh<_i18.SmsServiceClient>(),
        ));
    gh.factory<_i30.GroupLocalDataSource>(() => _i30.GroupLocalDataSource(
          gh<_i21.BaseSecurityRepository>(),
          gh<_i15.Box<_i16.Group>>(),
        ));
    gh.factory<_i31.ChannelRemoteDataSource>(() => _i31.ChannelRemoteDataSource(
          gh<_i19.ChannelServiceClient>(),
          gh<_i21.BaseSecurityRepository>(),
        ));
    gh.factory<_i32.GroupRemoteDataSource>(() => _i32.GroupRemoteDataSource(
          gh<_i19.GroupServiceClient>(),
          gh<_i21.BaseSecurityRepository>(),
        ));
    gh.factory<_i33.PermissionCubit>(
        () => _i33.PermissionCubit(gh<_i21.BaseSecurityRepository>()));
    gh.factory<_i34.BaseChannelRepository>(() => _i35.ChannelRepository(
          gh<_i26.NetworkInfo>(),
          gh<_i31.ChannelRemoteDataSource>(),
          gh<_i25.ChannelLocalDataSource>(),
        ));
    gh.factory<_i36.BaseGroupRepository>(() => _i37.GroupRepository(
          gh<_i32.GroupRemoteDataSource>(),
          gh<_i30.GroupLocalDataSource>(),
          gh<_i26.NetworkInfo>(),
        ));
    gh.factory<_i38.AppCubit>(() => _i38.AppCubit(
          gh<_i21.BaseSecurityRepository>(),
          gh<_i26.NetworkInfo>(),
        ));
    gh.factory<_i39.BaseAuthRepository>(() => _i40.AuthRepository(
          gh<_i26.NetworkInfo>(),
          gh<_i29.AuthRemoteDataSource>(),
          gh<_i23.AuthLocalDataSource>(),
        ));
    gh.factory<_i41.AuthCubit>(() => _i41.AuthCubit(
          gh<_i21.BaseSecurityRepository>(),
          gh<_i39.BaseAuthRepository>(),
        ));
    return this;
  }
}

class _$NetworkModule extends _i42.NetworkModule {}

class _$FirebaseModule extends _i43.FirebaseModule {}

class _$SecureStorageModule extends _i44.SecureStorageModule {}

class _$GrpcModule extends _i45.GrpcModule {}

class _$AuthModule extends _i46.AuthModule {}

class _$NotificationModule extends _i47.NotificationModule {}

class _$LocalDatabaseModule extends _i48.LocalDatabaseModule {}
