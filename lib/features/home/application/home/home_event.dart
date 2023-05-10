part of 'home_bloc.dart';

@freezedBlocEvent
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.onStarted() = HomeEventOnStarted;
  const factory HomeEvent.onTabChanged(int index) = HomeEventOnTabChanged;
}
