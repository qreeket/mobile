// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i10;
import 'package:firebase_messaging/firebase_messaging.dart' as _i13;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i12;
import 'package:flutter_local_notifications/flutter_local_notifications.dart'
    as _i14;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i15;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i16;
import 'package:hive_flutter/adapters.dart' as _i32;
import 'package:hive_flutter/hive_flutter.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:local_auth/local_auth.dart' as _i18;
import 'package:mobile/core/di/modules/auth.dart' as _i45;
import 'package:mobile/core/di/modules/database.dart' as _i43;
import 'package:mobile/core/di/modules/firebase.dart' as _i46;
import 'package:mobile/core/di/modules/network.dart' as _i44;
import 'package:mobile/core/di/modules/notification.dart' as _i47;
import 'package:mobile/core/di/modules/security.dart' as _i48;
import 'package:mobile/core/di/modules/server.dart' as _i42;
import 'package:mobile/core/network/network.info.dart' as _i20;
import 'package:mobile/features/common/data/repositories/notification.dart'
    as _i24;
import 'package:mobile/features/common/data/repositories/security.dart' as _i26;
import 'package:mobile/features/common/domain/repositories/notification.dart'
    as _i23;
import 'package:mobile/features/common/domain/repositories/security.dart'
    as _i25;
import 'package:mobile/features/common/presentation/manager/app_cubit.dart'
    as _i41;
import 'package:mobile/features/common/presentation/manager/permission_cubit.dart'
    as _i30;
import 'package:mobile/features/core/presentation/manager/core_bloc.dart'
    as _i11;
import 'package:mobile/features/core/presentation/manager/messaging_bloc.dart'
    as _i19;
import 'package:mobile/features/groups/data/local/data_sources/channel.dart'
    as _i8;
import 'package:mobile/features/groups/data/local/data_sources/group.dart'
    as _i28;
import 'package:mobile/features/groups/data/remote/data_sources/channel.dart'
    as _i27;
import 'package:mobile/features/groups/data/remote/data_sources/group.dart'
    as _i29;
import 'package:mobile/features/groups/data/repositories/channel.dart' as _i37;
import 'package:mobile/features/groups/data/repositories/group.dart' as _i39;
import 'package:mobile/features/groups/domain/repositories/channel.dart'
    as _i36;
import 'package:mobile/features/groups/domain/repositories/group.dart' as _i38;
import 'package:mobile/features/groups/presentation/manager/channel_bloc.dart'
    as _i7;
import 'package:mobile/features/groups/presentation/manager/group_bloc.dart'
    as _i17;
import 'package:mobile/features/onboarding/data/local/auth.dart' as _i31;
import 'package:mobile/features/onboarding/data/remote/auth.dart' as _i33;
import 'package:mobile/features/onboarding/data/repositories/auth.dart' as _i35;
import 'package:mobile/features/onboarding/domain/repositories/auth.dart'
    as _i34;
import 'package:mobile/features/onboarding/presentation/manager/auth_cubit.dart'
    as _i40;
import 'package:mobile/generated/protos/auth.pb.dart' as _i6;
import 'package:mobile/generated/protos/auth_service.pbgrpc.dart' as _i3;
import 'package:mobile/generated/protos/group.pb.dart' as _i5;
import 'package:mobile/generated/protos/group_service.pbgrpc.dart' as _i9;
import 'package:mobile/generated/protos/notification_service.pbgrpc.dart'
    as _i21;
import 'package:mobile/generated/protos/sms_service.pbgrpc.dart' as _i22;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final grpcModule = _$GrpcModule();
    final localDatabaseModule = _$LocalDatabaseModule();
    final networkModule = _$NetworkModule();
    final authModule = _$AuthModule();
    final firebaseModule = _$FirebaseModule();
    final notificationModule = _$NotificationModule();
    final secureStorageModule = _$SecureStorageModule();
    gh.singleton<_i3.AuthServiceClient>(grpcModule.authClient);
    gh.lazySingleton<_i4.Box<_i5.Group>>(() => localDatabaseModule.groupsBox);
    gh.lazySingleton<_i4.Box<_i6.Country>>(
        () => localDatabaseModule.countriesBox);
    gh.lazySingleton<_i4.Box<_i6.Account>>(
        () => localDatabaseModule.accountsBox);
    gh.lazySingleton<_i4.Box<_i5.Channel>>(
        () => localDatabaseModule.channelsBox);
    gh.lazySingleton<_i4.Box<_i6.College>>(
        () => localDatabaseModule.collegesBox);
    gh.factory<_i7.ChannelBloc>(() => _i7.ChannelBloc());
    gh.factory<_i8.ChannelLocalDataSource>(
        () => _i8.ChannelLocalDataSource(gh<_i4.Box<_i5.Channel>>()));
    gh.lazySingleton<_i9.ChannelServiceClient>(() => grpcModule.channelClient);
    gh.singleton<_i10.Connectivity>(networkModule.connectivity);
    gh.factory<_i11.CoreBloc>(() => _i11.CoreBloc());
    gh.lazySingleton<_i12.FacebookAuth>(() => authModule.facebookAuth);
    gh.singleton<_i13.FirebaseMessaging>(firebaseModule.firebaseMessaging);
    await gh.lazySingletonAsync<_i14.FlutterLocalNotificationsPlugin>(
      () => notificationModule.flutterLocalNotificationsPlugin,
      preResolve: true,
    );
    gh.singleton<_i15.FlutterSecureStorage>(secureStorageModule.secureStorage);
    gh.lazySingleton<_i16.GoogleSignIn>(() => authModule.googleSignIn);
    gh.factory<_i17.GroupBloc>(() => _i17.GroupBloc());
    gh.lazySingleton<_i9.GroupServiceClient>(() => grpcModule.groupClient);
    gh.singleton<_i18.LocalAuthentication>(
        secureStorageModule.localAuthentication);
    gh.factory<_i19.MessagingBloc>(() => _i19.MessagingBloc());
    gh.factory<_i20.NetworkInfo>(
        () => _i20.NetworkInfo(gh<_i10.Connectivity>()));
    gh.lazySingleton<_i21.NotificationServiceClient>(
        () => grpcModule.notificationClient);
    gh.lazySingleton<_i22.SmsServiceClient>(() => grpcModule.smsClient);
    gh.lazySingleton<_i23.BaseNotificationRepository>(
        () => _i24.NotificationRepository(
              gh<_i21.NotificationServiceClient>(),
              gh<_i13.FirebaseMessaging>(),
            ));
    gh.factory<_i25.BaseSecurityRepository>(() => _i26.SecureStorageRepository(
          gh<_i15.FlutterSecureStorage>(),
          gh<_i18.LocalAuthentication>(),
          gh<_i14.FlutterLocalNotificationsPlugin>(),
        ));
    gh.factory<_i27.ChannelRemoteDataSource>(() => _i27.ChannelRemoteDataSource(
          gh<_i9.ChannelServiceClient>(),
          gh<_i25.BaseSecurityRepository>(),
        ));
    gh.factory<_i28.GroupLocalDataSource>(() => _i28.GroupLocalDataSource(
          gh<_i25.BaseSecurityRepository>(),
          gh<_i4.Box<_i5.Group>>(),
        ));
    gh.factory<_i29.GroupRemoteDataSource>(() => _i29.GroupRemoteDataSource(
          gh<_i9.GroupServiceClient>(),
          gh<_i25.BaseSecurityRepository>(),
        ));
    gh.factory<_i30.PermissionCubit>(
        () => _i30.PermissionCubit(gh<_i25.BaseSecurityRepository>()));
    gh.factory<_i31.AuthLocalDataSource>(() => _i31.AuthLocalDataSource(
          gh<_i32.Box<_i6.Account>>(),
          gh<_i32.Box<_i6.Country>>(),
          gh<_i32.Box<_i6.College>>(),
          gh<_i25.BaseSecurityRepository>(),
        ));
    gh.factory<_i33.AuthRemoteDataSource>(() => _i33.AuthRemoteDataSource(
          gh<_i25.BaseSecurityRepository>(),
          gh<_i3.AuthServiceClient>(),
          gh<_i12.FacebookAuth>(),
          gh<_i16.GoogleSignIn>(),
          gh<_i22.SmsServiceClient>(),
        ));
    gh.factory<_i34.BaseAuthRepository>(() => _i35.AuthRepository(
          gh<_i20.NetworkInfo>(),
          gh<_i33.AuthRemoteDataSource>(),
          gh<_i31.AuthLocalDataSource>(),
        ));
    gh.factory<_i36.BaseChannelRepository>(() => _i37.ChannelRepository(
          gh<_i20.NetworkInfo>(),
          gh<_i27.ChannelRemoteDataSource>(),
          gh<_i8.ChannelLocalDataSource>(),
        ));
    gh.factory<_i38.BaseGroupRepository>(() => _i39.GroupRepository(
          gh<_i29.GroupRemoteDataSource>(),
          gh<_i28.GroupLocalDataSource>(),
          gh<_i20.NetworkInfo>(),
        ));
    gh.factory<_i40.AuthCubit>(() => _i40.AuthCubit(
          gh<_i25.BaseSecurityRepository>(),
          gh<_i34.BaseAuthRepository>(),
        ));
    gh.factory<_i41.AppCubit>(() => _i41.AppCubit(gh<_i40.AuthCubit>()));
    return this;
  }
}

class _$GrpcModule extends _i42.GrpcModule {}

class _$LocalDatabaseModule extends _i43.LocalDatabaseModule {}

class _$NetworkModule extends _i44.NetworkModule {}

class _$AuthModule extends _i45.AuthModule {}

class _$FirebaseModule extends _i46.FirebaseModule {}

class _$NotificationModule extends _i47.NotificationModule {}

class _$SecureStorageModule extends _i48.SecureStorageModule {}
