part of 'approval_bloc.dart';

@freezedBlocState
class ApprovalState with _$ApprovalState, ILoadingState {
  const factory ApprovalState({
    @Default(false) bool shimmer,
    @Default([]) List<Tour> tours,
    @Default(0) int page,
    @Default(Status.idle()) Status status,
    // Filter
    @Default([]) List<User> staffs,
    User? staffFilter,
  }) = _ApprovalState;

  factory ApprovalState.fromJson(Map<String, dynamic> json) =>
      _$ApprovalStateFromJson(json);
}
