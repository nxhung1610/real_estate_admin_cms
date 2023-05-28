part of 'approval_bloc.dart';

@freezedBlocState
class ApprovalState with _$ApprovalState {
  const factory ApprovalState({
    @Default(false) bool shimmer,
    @JsonKey(ignore: true) @Default([]) List<Tour> tours,
    @Default(1) int page,
    @JsonKey(ignore: true) @Default(0) int totalPage,
    @JsonKey(ignore: true) @Default(Status.idle()) Status status,
    // Filter
    @JsonKey(ignore: true) @Default([]) List<User> staffs,
    @JsonKey(ignore: true) User? staffFilter,
    @JsonKey(ignore: true) TourType? tourType,
    @JsonKey(ignore: true) TourStatus? tourStatus,
  }) = _ApprovalState;

  factory ApprovalState.fromJson(Map<String, dynamic> json) =>
      _$ApprovalStateFromJson(json);
}
