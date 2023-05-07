part of 'connectivity_bloc.dart';

@freezedBlocEvent
class ConnectivityEvent with _$ConnectivityEvent {
  const factory ConnectivityEvent.init() = _ConnectivityEventInit;
  const factory ConnectivityEvent.connectivityChanged(
      ConnectivityStatus status) = _ConnectivityEventConnectivityChanged;
}
