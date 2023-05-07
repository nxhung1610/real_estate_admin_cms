import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_admin_cms/core/data_source/local/connectivity/i_connectivity_datasource.dart';
import 'package:real_estate_admin_cms/utils/logger/logger.dart';
import 'package:rxdart/rxdart.dart';

import '../common/i_failure_repository.dart';
import '../common/repo/repository_action_mixin.dart';
import 'connectivity_failure.dart';
import 'enum/connectivity_status.dart';
import 'i_connectivity_repository.dart';

@LazySingleton(as: IConnectivityRepository)
class ConnectivityRepository
    with RepositoryActionMixin<ConnectivityFailure>
    implements IConnectivityRepository {
  final IConnectivityDataSource connectivityDataSource;

  ConnectivityRepository(this.connectivityDataSource) {
    connectivityDataSource
        .checkConnectivity()
        .then(
          (value) => onConnectivityChanged.sink.add(
            right(
              ConnectivityStatus.fromConnectivityResult(value),
            ),
          ),
        )
        .onError(
          (error, stackTrace) => printLog(
            this,
            message: error,
            error: error,
            trace: stackTrace,
          ),
        );
    connectivityDataSource.onConnectivityChanged
        .map<OutputRepository<ConnectivityStatus>>(
      (event) {
        try {
          return right(
            ConnectivityStatus.fromConnectivityResult(event),
          );
        } on Exception catch (e, trace) {
          return left(handleException(e, trace));
        }
      },
    ).listen((event) {
      onConnectivityChanged.sink.add(event);
    });
  }

  @override
  Future<OutputRepository<ConnectivityStatus>> checkConnectivity() async {
    try {
      final status = await connectivityDataSource.checkConnectivity();
      return right(ConnectivityStatus.fromConnectivityResult(status));
    } on Exception catch (e, trace) {
      return left(handleException(e, trace));
    }
  }

  @override
  BehaviorSubject<OutputRepository<ConnectivityStatus>> onConnectivityChanged =
      BehaviorSubject<OutputRepository<ConnectivityStatus>>.seeded(
          right(ConnectivityStatus.none));
}
