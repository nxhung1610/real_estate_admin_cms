part of 'app_bloc.dart';

@freezedBlocState
class AppState with _$AppState {
  const factory AppState({
    @Default(true) bool isFirstLaunch,
  }) = _AppState;
}
