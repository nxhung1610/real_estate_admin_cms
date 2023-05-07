import 'package:connectivity_plus/connectivity_plus.dart';

enum ConnectivityStatus {
  internet,
  none;

  factory ConnectivityStatus.fromConnectivityResult(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.none:
        return ConnectivityStatus.none;
      default:
        return ConnectivityStatus.internet;
    }
  }
}
