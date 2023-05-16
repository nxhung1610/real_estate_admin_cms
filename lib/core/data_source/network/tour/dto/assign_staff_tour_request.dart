import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_admin_cms/utils/freezed/freezed_annotation.dart';

part 'assign_staff_tour_request.freezed.dart';
part 'assign_staff_tour_request.g.dart';

@freezedApiRequest
class AssignStaffTourRRequest with _$AssignStaffTourRRequest {
  factory AssignStaffTourRRequest({
    @JsonKey(name: 'staff_id') int? staffId,
    @JsonKey(name: 'tour_id') int? tourId,
  }) = _AssignStaffTourRequest;
}
