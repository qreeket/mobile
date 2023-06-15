import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jailbreak_detection/flutter_jailbreak_detection.dart';
import 'package:mobile/core/di/injector.dart';
import 'package:mobile/core/network/network.info.dart';
import 'package:mobile/core/routing/router.dart';
import 'package:mobile/features/onboarding/presentation/manager/auth_cubit.dart';
import 'package:shared_utils/shared_utils.dart';

///  [AppCubit] is responsible for:
///  - Observing network state
///  - Observing jailbreak state
///  - Observing initial route
class AppCubit extends Cubit<BlocState> {
  AppCubit(this._authBloc) : super(BlocState.initialState());
  final AuthCubit _authBloc;

  Future<void> observeNetwork() async => sl<NetworkInfo>()
      .observeNetwork()
      .listen((connected) => _toggleNetworkState(connected));

  /// Toggle network state
  Future<void> _toggleNetworkState(bool connected) async {
    emit(BlocState.loadingState());
    logger.i('Network state changed to $connected');
    emit(BlocState<bool>.successState(data: connected));
  }

  /// Setup initial route for the app
  Future<void> setupInitialRoute(GlobalKey<NavigatorState> navigatorKey) async {
    emit(BlocState.loadingState());

    // check if device is connected to the internet
    var connected = await sl<NetworkInfo>().isConnected;
    if (!connected) {
      navigatorKey.currentState?.pushNamedAndRemoveUntil(
          AppRouter.noInternetRoute, (route) => false);
      return;
    }

    // check if device is jailbroken or rooted
    var jailbroken = Platform.isIOS
        ? await FlutterJailbreakDetection.jailbroken
        : Platform.isAndroid
        ? await FlutterJailbreakDetection.developerMode
        : false;

    // redirect to unsupported device page if device is jailbroken or
    // redirect to home page if user is logged in
    final isLoggedIn = await _authBloc.isLoggedIn;
    var route = jailbroken
        ? AppRouter.unsupportedDeviceRoute
        : isLoggedIn
        ? AppRouter.homeRoute
        : AppRouter.tutorialRoute;
    navigatorKey.currentState?.pushNamedAndRemoveUntil(route, (_) => false);
  }
}
