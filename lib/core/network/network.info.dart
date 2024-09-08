import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

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
    var connected = false;
    for (var connectivityType in connectivityResult) {
      connected = _supportedConnections.contains(connectivityType);
    }
    return connected;
  }

  Stream<bool> observeNetwork() async* {
    yield* _connectivity.onConnectivityChanged.map((connectivityResult) {
      var connected = false;
      for (var connectivityType in connectivityResult) {
        connected = _supportedConnections.contains(connectivityType);
      }
      return connected;
    });
  }
}
