import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter_jailbreak_detection/flutter_jailbreak_detection.dart';
import 'package:mobile/core/di/injector.dart';
import 'package:mobile/core/network/network.info.dart';
import 'package:mobile/core/routing/router.dart';
import 'package:mobile/features/onboarding/presentation/manager/auth_cubit.dart';
import 'package:shared_utils/shared_utils.dart';

/// application level state manager
class AppCubit extends Cubit<BlocState> {
  AppCubit._() : super(BlocState.initialState());

  static final _instance = AppCubit._();

  // create a singleton instance of the cubit
  factory AppCubit() => _instance;

  final _authBloc = AuthCubit();

  Future<void> observeNetwork() async =>
      getIt<NetworkInfo>().observeNetwork();

  Future<void> toggleNetworkState(bool connected) async {
    emit(BlocState.loadingState());
    emit(BlocState<bool>.successState(data: connected));
  }

  Future<void> setupInitialRoute() async {
    emit(BlocState.loadingState());
    bool jailbroken = Platform.isIOS
        ? await FlutterJailbreakDetection.jailbroken
        : Platform.isAndroid
            ? await FlutterJailbreakDetection.developerMode
            : false;

    // redirect to unsupported device page if device is jailbroken
    if (jailbroken) {
      emit(BlocState<String>.successState(
          data: AppRouter.unsupportedDeviceRoute));
    } else {
      // redirect to home page if user is logged in
      final isLoggedIn = await _authBloc.isLoggedIn;
      var route = isLoggedIn ? AppRouter.homeRoute : AppRouter.tutorialRoute;
      emit(BlocState<String>.successState(data: route));
    }
  }
}
