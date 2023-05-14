part of 'approval_bloc.dart';

@freezed
class ApprovalEvent with _$ApprovalEvent {
  const factory ApprovalEvent.onStarted() = ApprovalEventOnStarted;
  const factory ApprovalEvent.onFetch({
    @Default(0) int page,
    @Default(15) int size,
    TourStatus? status,
    int? staffId,
  }) = ApprovalEventOnFetch;
}
