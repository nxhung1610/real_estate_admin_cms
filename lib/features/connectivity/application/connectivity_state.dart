part of 'connectivity_bloc.dart';

@freezedBlocState
class ConnectivityState with _$ConnectivityState {
  const factory ConnectivityState({
    @Default(ConnectivityStatus.none) ConnectivityStatus status,
  }) = _ConnectivityState;

  factory ConnectivityState.fromJson(Map<String, dynamic> json) =>
      _$ConnectivityStateFromJson(json);
}
