// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:firebase_messaging/firebase_messaging.dart' as _i892;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i806;
import 'package:flutter_local_notifications/flutter_local_notifications.dart'
    as _i163;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:google_sign_in/google_sign_in.dart' as _i116;
import 'package:hive_flutter/adapters.dart' as _i744;
import 'package:hive_flutter/hive_flutter.dart' as _i986;
import 'package:injectable/injectable.dart' as _i526;
import 'package:local_auth/local_auth.dart' as _i152;
import 'package:mobile/core/di/modules/auth.dart' as _i494;
import 'package:mobile/core/di/modules/database.dart' as _i431;
import 'package:mobile/core/di/modules/firebase.dart' as _i144;
import 'package:mobile/core/di/modules/network.dart' as _i20;
import 'package:mobile/core/di/modules/notification.dart' as _i459;
import 'package:mobile/core/di/modules/security.dart' as _i683;
import 'package:mobile/core/di/modules/server.dart' as _i995;
import 'package:mobile/core/network/network.info.dart' as _i791;
import 'package:mobile/features/common/data/repositories/notification.dart'
    as _i914;
import 'package:mobile/features/common/data/repositories/security.dart'
    as _i803;
import 'package:mobile/features/common/domain/repositories/notification.dart'
    as _i901;
import 'package:mobile/features/common/domain/repositories/security.dart'
    as _i671;
import 'package:mobile/features/common/presentation/manager/app_cubit.dart'
    as _i605;
import 'package:mobile/features/common/presentation/manager/permission_cubit.dart'
    as _i649;
import 'package:mobile/features/core/presentation/manager/core_bloc.dart'
    as _i384;
import 'package:mobile/features/core/presentation/manager/messaging_bloc.dart'
    as _i267;
import 'package:mobile/features/groups/data/local/data_sources/channel.dart'
    as _i438;
import 'package:mobile/features/groups/data/local/data_sources/group.dart'
    as _i886;
import 'package:mobile/features/groups/data/remote/data_sources/channel.dart'
    as _i605;
import 'package:mobile/features/groups/data/remote/data_sources/group.dart'
    as _i845;
import 'package:mobile/features/groups/data/repositories/channel.dart' as _i96;
import 'package:mobile/features/groups/data/repositories/group.dart' as _i746;
import 'package:mobile/features/groups/domain/repositories/channel.dart'
    as _i401;
import 'package:mobile/features/groups/domain/repositories/group.dart' as _i560;
import 'package:mobile/features/groups/presentation/manager/channel_bloc.dart'
    as _i562;
import 'package:mobile/features/groups/presentation/manager/group_bloc.dart'
    as _i208;
import 'package:mobile/features/onboarding/data/local/auth.dart' as _i1066;
import 'package:mobile/features/onboarding/data/remote/auth.dart' as _i455;
import 'package:mobile/features/onboarding/data/repositories/auth.dart'
    as _i478;
import 'package:mobile/features/onboarding/domain/repositories/auth.dart'
    as _i347;
import 'package:mobile/features/onboarding/presentation/manager/auth_cubit.dart'
    as _i284;
import 'package:mobile/generated/protos/auth.pb.dart' as _i739;
import 'package:mobile/generated/protos/auth_service.pbgrpc.dart' as _i188;
import 'package:mobile/generated/protos/group.pb.dart' as _i205;
import 'package:mobile/generated/protos/group_service.pbgrpc.dart' as _i49;
import 'package:mobile/generated/protos/notification_service.pbgrpc.dart'
    as _i473;
import 'package:mobile/generated/protos/sms_service.pbgrpc.dart' as _i550;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
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
    gh.factory<_i384.CoreBloc>(() => _i384.CoreBloc());
    gh.factory<_i267.MessagingBloc>(() => _i267.MessagingBloc());
    gh.factory<_i208.GroupBloc>(() => _i208.GroupBloc());
    gh.factory<_i562.ChannelBloc>(() => _i562.ChannelBloc());
    gh.singleton<_i895.Connectivity>(() => networkModule.connectivity);
    gh.singleton<_i892.FirebaseMessaging>(
        () => firebaseModule.firebaseMessaging);
    gh.singleton<_i558.FlutterSecureStorage>(
        () => secureStorageModule.secureStorage);
    gh.singleton<_i152.LocalAuthentication>(
        () => secureStorageModule.localAuthentication);
    gh.singleton<_i188.AuthServiceClient>(() => grpcModule.authClient);
    gh.lazySingleton<_i806.FacebookAuth>(() => authModule.facebookAuth);
    gh.lazySingleton<_i116.GoogleSignIn>(() => authModule.googleSignIn);
    gh.lazySingleton<_i163.FlutterLocalNotificationsPlugin>(
        () => notificationModule.flutterLocalNotificationsPlugin);
    gh.lazySingleton<_i986.Box<_i205.Group>>(
        () => localDatabaseModule.groupsBox);
    gh.lazySingleton<_i986.Box<_i205.Channel>>(
        () => localDatabaseModule.channelsBox);
    gh.lazySingleton<_i986.Box<_i739.Account>>(
        () => localDatabaseModule.accountsBox);
    gh.lazySingleton<_i986.Box<_i739.Country>>(
        () => localDatabaseModule.countriesBox);
    gh.lazySingleton<_i986.Box<_i739.College>>(
        () => localDatabaseModule.collegesBox);
    gh.lazySingleton<_i550.SmsServiceClient>(() => grpcModule.smsClient);
    gh.lazySingleton<_i49.GroupServiceClient>(() => grpcModule.groupClient);
    gh.lazySingleton<_i49.ChannelServiceClient>(() => grpcModule.channelClient);
    gh.lazySingleton<_i473.NotificationServiceClient>(
        () => grpcModule.notificationClient);
    gh.factory<_i671.BaseSecurityRepository>(
        () => _i803.SecureStorageRepository(
              gh<_i558.FlutterSecureStorage>(),
              gh<_i152.LocalAuthentication>(),
              gh<_i163.FlutterLocalNotificationsPlugin>(),
            ));
    gh.factory<_i1066.AuthLocalDataSource>(() => _i1066.AuthLocalDataSource(
          gh<_i744.Box<_i739.Account>>(),
          gh<_i744.Box<_i739.Country>>(),
          gh<_i744.Box<_i739.College>>(),
          gh<_i671.BaseSecurityRepository>(),
        ));
    gh.factory<_i438.ChannelLocalDataSource>(
        () => _i438.ChannelLocalDataSource(gh<_i986.Box<_i205.Channel>>()));
    gh.factory<_i791.NetworkInfo>(
        () => _i791.NetworkInfo(gh<_i895.Connectivity>()));
    gh.singleton<_i901.BaseNotificationRepository>(
        () => _i914.NotificationRepository(
              gh<_i473.NotificationServiceClient>(),
              gh<_i892.FirebaseMessaging>(),
              gh<_i163.FlutterLocalNotificationsPlugin>(),
            ));
    gh.factory<_i455.AuthRemoteDataSource>(() => _i455.AuthRemoteDataSource(
          gh<_i671.BaseSecurityRepository>(),
          gh<_i188.AuthServiceClient>(),
          gh<_i806.FacebookAuth>(),
          gh<_i116.GoogleSignIn>(),
          gh<_i550.SmsServiceClient>(),
        ));
    gh.factory<_i886.GroupLocalDataSource>(() => _i886.GroupLocalDataSource(
          gh<_i671.BaseSecurityRepository>(),
          gh<_i986.Box<_i205.Group>>(),
        ));
    gh.factory<_i605.ChannelRemoteDataSource>(
        () => _i605.ChannelRemoteDataSource(
              gh<_i49.ChannelServiceClient>(),
              gh<_i671.BaseSecurityRepository>(),
            ));
    gh.factory<_i845.GroupRemoteDataSource>(() => _i845.GroupRemoteDataSource(
          gh<_i49.GroupServiceClient>(),
          gh<_i671.BaseSecurityRepository>(),
        ));
    gh.factory<_i649.PermissionCubit>(
        () => _i649.PermissionCubit(gh<_i671.BaseSecurityRepository>()));
    gh.factory<_i401.BaseChannelRepository>(() => _i96.ChannelRepository(
          gh<_i791.NetworkInfo>(),
          gh<_i605.ChannelRemoteDataSource>(),
          gh<_i438.ChannelLocalDataSource>(),
        ));
    gh.factory<_i560.BaseGroupRepository>(() => _i746.GroupRepository(
          gh<_i845.GroupRemoteDataSource>(),
          gh<_i886.GroupLocalDataSource>(),
          gh<_i791.NetworkInfo>(),
        ));
    gh.factory<_i605.AppCubit>(() => _i605.AppCubit(
          gh<_i671.BaseSecurityRepository>(),
          gh<_i791.NetworkInfo>(),
        ));
    gh.factory<_i347.BaseAuthRepository>(() => _i478.AuthRepository(
          gh<_i791.NetworkInfo>(),
          gh<_i455.AuthRemoteDataSource>(),
          gh<_i1066.AuthLocalDataSource>(),
        ));
    gh.factory<_i284.AuthCubit>(() => _i284.AuthCubit(
          gh<_i671.BaseSecurityRepository>(),
          gh<_i347.BaseAuthRepository>(),
        ));
    return this;
  }
}

class _$NetworkModule extends _i20.NetworkModule {}

class _$FirebaseModule extends _i144.FirebaseModule {}

class _$SecureStorageModule extends _i683.SecureStorageModule {}

class _$GrpcModule extends _i995.GrpcModule {}

class _$AuthModule extends _i494.AuthModule {}

class _$NotificationModule extends _i459.NotificationModule {}

class _$LocalDatabaseModule extends _i431.LocalDatabaseModule {}
