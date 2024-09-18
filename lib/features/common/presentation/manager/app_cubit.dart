import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_jailbreak_detection/flutter_jailbreak_detection.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/core/di/injector.dart';
import 'package:mobile/core/network/network.info.dart';
import 'package:mobile/core/routing/router.dart';
import 'package:mobile/features/common/domain/repositories/security.dart';
import 'package:mobile/features/common/presentation/globals.dart';
import 'package:shared_utils/shared_utils.dart';

///  [AppCubit] is responsible for:
///  - Observing network state
///  - Observing jailbreak state
///  - Observing initial route
@injectable
class AppCubit extends Cubit<BlocState> {
  @factoryMethod
  AppCubit(this._securityRepo, this._networkInfo) : super(BlocState.initialState());
  final BaseSecurityRepository _securityRepo;
  final NetworkInfo _networkInfo;

  Future<void> observeNetwork() async =>
      sl<NetworkInfo>().observeNetwork().listen((connected) => _toggleNetworkState(connected));

  /// Toggle network state
  Future<void> _toggleNetworkState(bool connected) async {
    emit(BlocState.loadingState());
    emit(BlocState<bool>.successState(data: connected));
  }

  /// Setup initial route for the app
  Future<void> setupInitialRoute() async {
    emit(BlocState.loadingState());

    // check if device is connected to the internet
    var connected = await _networkInfo.isConnected;
    if (!connected) {
      navigatorKey.currentState?.pushNamedAndRemoveUntil(AppRouter.noInternetRoute, (route) => false);
      return;
    }

    // check if device is jailbroken or rooted
    var jailbroken = kDebugMode
        ? false
        : Platform.isIOS
            ? await FlutterJailbreakDetection.jailbroken
            : Platform.isAndroid
                ? await FlutterJailbreakDetection.developerMode
                : false;

    // redirect to unsupported device page if device is jailbroken or
    // redirect to home page if user is logged in
    final isLoggedIn = await _securityRepo.isLoggedIn;
    var route = jailbroken
        ? AppRouter.unsupportedDeviceRoute
        : isLoggedIn
            ? AppRouter.homeRoute
            : AppRouter.tutorialRoute;
    navigatorKey.currentState?.pushNamedAndRemoveUntil(route, (_) => false);
  }
}
