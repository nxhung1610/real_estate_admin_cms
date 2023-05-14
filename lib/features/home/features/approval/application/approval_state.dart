part of 'approval_bloc.dart';

@freezed
class ApprovalState with _$ApprovalState {
  const factory ApprovalState({
    @Default(false) bool shimmer,
    @Default([]) List<Tour> tours,
    @Default(0) int page,
    @Default(Status.idle()) Status status,
  }) = _ApprovalState;
}
