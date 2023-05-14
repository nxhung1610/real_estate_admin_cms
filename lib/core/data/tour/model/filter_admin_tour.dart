import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_admin_cms/core/data_source/grpc/tour/tour.pb.dart';
import 'package:real_estate_admin_cms/core/data_source/network/tour/dto/filter_admin_tour_request.dart';

part 'filter_admin_tour.freezed.dart';

@freezed
class FilterAdminTour with _$FilterAdminTour {
  const factory FilterAdminTour({
    int? reId,
    int? page,
    int? size,
    int? status,
    int? staffId,
    int? userId,
    String? type,
    String? fromDate,
    String? toDate,
  }) = _FilterAdminTour;
}

extension FilterAdminTourMapper on FilterAdminTour {
  ListTourAdminRequest toDto() {
    return ListTourAdminRequest(
      reId: reId,
      page: page,
      size: size,
      status: status,
      staffId: staffId,
      userId: userId,
      type: type,
      fromDate: fromDate,
      toDate: toDate,
    );
  }

  FilterAdminTourRequest toDtoRequest() {
    return FilterAdminTourRequest(
      reId: reId,
      page: page,
      size: size,
      status: status,
      staffId: staffId,
      userId: userId,
      type: type,
      fromDate: fromDate,
      toDate: toDate,
    );
  }
}
