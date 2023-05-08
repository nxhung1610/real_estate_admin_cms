import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_admin_cms/core/data/common/i_failure_repository.dart';
import 'package:real_estate_admin_cms/core/data/connectivity/enum/connectivity_status.dart';
import 'package:real_estate_admin_cms/core/data/connectivity/i_connectivity_repository.dart';
import 'package:real_estate_admin_cms/utils/freezed/freezed_annotation.dart';
import 'package:real_estate_admin_cms/utils/logger/logger.dart';

part 'connectivity_state.dart';
part 'connectivity_event.dart';
part 'connectivity_bloc.freezed.dart';
part 'connectivity_bloc.g.dart';

@injectable
class ConnectivityBloc
    extends HydratedBloc<ConnectivityEvent, ConnectivityState> {
  final IConnectivityRepository connectivityRepository;
  ConnectivityBloc(
    this.connectivityRepository,
  ) : super(const ConnectivityState()) {
    on<_ConnectivityEventInit>(_init);
    on<_ConnectivityEventConnectivityChanged>(_onConnectivityChanged);
  }

  StreamSubscription<OutputRepository<ConnectivityStatus>>? streamSubscription;

  FutureOr<void> _init(
    _ConnectivityEventInit event,
    Emitter<ConnectivityState> emit,
  ) async {
    try {
      await streamSubscription?.cancel();
      streamSubscription = connectivityRepository.onConnectivityChanged
          .asBroadcastStream()
          .listen(
        (event) {
          event.fold(
            (l) => null,
            (r) {
              if (state.status != r) {
                add(_ConnectivityEventConnectivityChanged(r));
              }
            },
          );
        },
      );
    } catch (e, trace) {
      printLog(this, message: e, error: e, trace: trace);
    }
  }

  FutureOr<void> _onConnectivityChanged(
    _ConnectivityEventConnectivityChanged event,
    Emitter<ConnectivityState> emit,
  ) {
    emit(state.copyWith(status: event.status));
  }

  @override
  Future<void> close() {
    streamSubscription?.cancel();
    return super.close();
  }

  @override
  ConnectivityState? fromJson(Map<String, dynamic> json) {
    return ConnectivityState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(ConnectivityState state) {
    return state.toJson();
  }
}
