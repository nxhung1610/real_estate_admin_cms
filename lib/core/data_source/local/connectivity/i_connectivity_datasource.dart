import 'package:connectivity_plus/connectivity_plus.dart';

abstract class IConnectivityDataSource {
  Stream<ConnectivityResult> get onConnectivityChanged;
  Future<ConnectivityResult> checkConnectivity();
}
