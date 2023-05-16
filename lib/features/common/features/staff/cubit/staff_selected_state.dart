part of 'staff_selected_cubit.dart';

@freezedBlocState
class StaffSelectedState with _$StaffSelectedState {
  const factory StaffSelectedState({
    @Default([]) List<User> staffs,
  }) = _StaffSelectedState;
}
