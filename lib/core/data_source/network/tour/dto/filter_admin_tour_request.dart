import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_admin_cms/utils/.utils.dart';

part 'filter_admin_tour_request.freezed.dart';
part 'filter_admin_tour_request.g.dart';

@freezedApiRequest
class FilterAdminTourRequest with _$FilterAdminTourRequest {
  factory FilterAdminTourRequest({
    int? reId,
    int? page,
    int? size,
    int? status,
    int? staffId,
    int? userId,
    String? type,
    String? fromDate,
    String? toDate,
  }) = _FilterAdminTourRequest;
}
