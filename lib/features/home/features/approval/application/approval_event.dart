part of 'approval_bloc.dart';

@freezedBlocEvent
class ApprovalEvent with _$ApprovalEvent {
  const factory ApprovalEvent.onStarted() = ApprovalEventOnStarted;
  const factory ApprovalEvent.onFetch({
    @Default(0) int page,
    @Default(15) int size,
    TourStatus? status,
    int? staffId,
  }) = ApprovalEventOnFetch;
  const factory ApprovalEvent.onFetchStaffs() = ApprovalEventOnFetchStaffs;
  const factory ApprovalEvent.onAssignStaff(int tourId, int staffId) =
      ApprovalEventOnAssignStaff;
  const factory ApprovalEvent.onReject(int tourId, String reason) =
      ApprovalEventOnReject;
  const factory ApprovalEvent.onStaffFilterChange(User? staff) =
      ApprovalEventOnStaffFilterChange;
  // const factory ApprovalEvent.onTourTypeChange(TourType? tourType) =
  //     ApprovalEventOnTourTypeChange;
  const factory ApprovalEvent.onContactTourStatusChange(
      TourStatus? tourStatus) = ApprovalEventOnContactTourStatusChange;
}
