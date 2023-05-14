import 'package:real_estate_admin_cms/core/data_source/network/common/base_response.dart';
import 'package:real_estate_admin_cms/core/data_source/network/tour/dto/filter_admin_tour_request.dart';
import 'package:real_estate_admin_cms/core/data_source/network/tour/dto/tour_response.dart';

abstract class ITourDataSource {
  Future<BaseResponse<List<TourResponse>>> tourAdmin(
      FilterAdminTourRequest request);
}
