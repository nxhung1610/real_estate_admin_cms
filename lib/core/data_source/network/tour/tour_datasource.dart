import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_admin_cms/core/data_source/grpc/admin/admin.pb.dart';
import 'package:real_estate_admin_cms/core/data_source/network/api_service.dart';
import 'package:real_estate_admin_cms/core/data_source/network/common/paging_response.dart';
import 'package:real_estate_admin_cms/core/data_source/network/tour/dto/tour_response.dart';
import 'package:real_estate_admin_cms/core/data_source/network/tour/dto/filter_admin_tour_request.dart';
import 'package:real_estate_admin_cms/core/data_source/network/common/base_response.dart';
import 'package:real_estate_admin_cms/core/data_source/network/tour/i_tour_datasource.dart';
import 'package:real_estate_admin_cms/core/data_source/network/tour/tour_constant.dart';

import 'dto/assign_staff_tour_request.dart';
import 'dto/reject_tour_request.dart';

@LazySingleton(as: ITourDataSource)
class TourDataSource implements ITourDataSource {
  final IApiService apiService;

  TourDataSource(@Named.from(AuthApiService) this.apiService);
  @override
  Future<BaseResponse<PagingResponse<TourResponse>>> tourAdmin(
      FilterAdminTourRequest request) {
    return apiService.post(
      TourConstant.admin,
      request.toJson(),
      resultParser: (result) {
        return PagingResponse.fromJson(
          result,
          parse: (value) {
            return TourResponse.fromJson(value);
          },
        );
      },
    );
  }

  @override
  Future<BaseResponse<Unit>> assignStaffForTour(
    AssignStaffTourRRequest request,
  ) {
    return apiService.post(
      TourConstant.assign,
      request.toJson(),
    );
  }

  @override
  Future<BaseResponse<Unit>> rejectTour(RejectTourRRequest request) {
    return apiService.post<Unit>(
      TourConstant.rejectStaff,
      request.toJson(),
    );
  }
}
