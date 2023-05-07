import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

import 'i_connectivity_datasource.dart';

@LazySingleton(as: IConnectivityDataSource)
class ConnectivityDataSource implements IConnectivityDataSource {
  final Connectivity _connectivity;

  ConnectivityDataSource(this._connectivity);

  @override
  Future<ConnectivityResult> checkConnectivity() {
    return _connectivity.checkConnectivity();
  }

  @override
  Stream<ConnectivityResult> get onConnectivityChanged =>
      _connectivity.onConnectivityChanged;
}
