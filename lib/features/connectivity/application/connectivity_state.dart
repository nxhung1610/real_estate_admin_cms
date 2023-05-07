part of 'connectivity_bloc.dart';

@freezedBlocState
class ConnectivityState with _$ConnectivityState {
  const factory ConnectivityState({
    @Default(ConnectivityStatus.none) ConnectivityStatus status,
  }) = _ConnectivityState;
}
