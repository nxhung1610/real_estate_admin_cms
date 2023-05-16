import 'package:injectable/injectable.dart';
import 'package:real_estate_admin_cms/core/data_source/network/admin/admin_constant.dart';
import 'package:real_estate_admin_cms/core/data_source/network/admin/i_admin_datasource.dart';
import 'package:real_estate_admin_cms/core/data_source/network/api_service.dart';
import 'package:real_estate_admin_cms/core/data_source/network/common/base_response.dart';
import 'package:real_estate_admin_cms/core/data_source/network/auth/dto/info/user_dto/user_dto.dart';

@LazySingleton(as: IAdminDataSource)
class AdminDataSource implements IAdminDataSource {
  final IApiService apiService;

  AdminDataSource(@Named.from(AuthApiService) this.apiService);
  @override
  Future<BaseResponse<UserDto>> getStaffById(String id) {
    return apiService.post(
      AdminConstant.staffs,
      {
        "staff_id": id,
      },
      resultParser: (json) {
        return UserDto.fromJson(json);
      },
    );
  }

  @override
  Future<BaseResponse<List<UserDto>>> getStaffs({
    int? page,
    int? limit,
  }) {
    return apiService.getWithListResponse(
      AdminConstant.staffs,
      body: {
        "page": page,
        "limit": limit,
      },
      resultParser: (json) {
        return json.map((e) => UserDto.fromJson(e)).toList();
      },
    );
  }
}
