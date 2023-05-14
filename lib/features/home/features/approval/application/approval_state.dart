part of 'approval_bloc.dart';

@freezed
class ApprovalState with _$ApprovalState {
  const factory ApprovalState({
    @Default(false) bool shimmer,
    @Default([]) List<Tour> tours,
    List<Tour>? newTours,
    @Default(0) int page,
    @Default(true) bool canLoadMore,
    @Default(Status.idle()) Status status,
  }) = _ApprovalState;
}
