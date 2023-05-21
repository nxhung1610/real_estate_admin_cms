import 'package:dartz/dartz.dart';
import 'package:real_estate_admin_cms/core/data_source/grpc/admin/admin.pb.dart';
import 'package:real_estate_admin_cms/core/data_source/network/common/base_response.dart';
import 'package:real_estate_admin_cms/core/data_source/network/tour/dto/filter_admin_tour_request.dart';
import 'package:real_estate_admin_cms/core/data_source/network/tour/dto/tour_response.dart';

import '../common/paging_response.dart';
import 'dto/assign_staff_tour_request.dart';
import 'dto/reject_tour_request.dart';

abstract class ITourDataSource {
  Future<BaseResponse<PagingResponse<TourResponse>>> tourAdmin(
      FilterAdminTourRequest request);
  Future<BaseResponse<Unit>> assignStaffForTour(
      AssignStaffTourRRequest request);
  Future<BaseResponse<Unit>> rejectTour(RejectTourRRequest request);
}
