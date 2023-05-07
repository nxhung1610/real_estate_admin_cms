import 'package:rxdart/rxdart.dart';

import '../common/i_failure_repository.dart';
import 'enum/connectivity_status.dart';

abstract class IConnectivityRepository {
  Future<OutputRepository<ConnectivityStatus>> checkConnectivity();
  BehaviorSubject<OutputRepository<ConnectivityStatus>>
      get onConnectivityChanged;
}
