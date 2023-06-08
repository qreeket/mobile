import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/features/common/presentation/manager/app_cubit.dart';

/// ref -> https://burcus.medium.com/flutter-checking-continuously-internet-connection-using-bloc-updated-b89413a08dc0
@injectable
class NetworkInfo {
  final Connectivity _connectivity;
  final _supportedConnections = [
    ConnectivityResult.mobile,
    ConnectivityResult.wifi,
    ConnectivityResult.ethernet,
  ];

  NetworkInfo(this._connectivity);

  Future<bool> get isConnected async {
    var connectivityResult = await _connectivity.checkConnectivity();
    return _supportedConnections.contains(connectivityResult);
  }

  Future<void> observeNetwork() async => _connectivity.onConnectivityChanged
      .map((event) => _supportedConnections.contains(event))
      .listen((event) => AppCubit().toggleNetworkState(event));
}
