import 'package:real_estate_admin_cms/core/data/common/i_failure_repository.dart';
import 'package:real_estate_admin_cms/core/data_source/network/auth/dto/info/user_dto/user_dto.dart';
import 'package:real_estate_admin_cms/core/data_source/network/common/base_response.dart';

abstract class IAdminDataSource {
  Future<BaseResponse<List<UserDto>>> getStaffs();
  Future<BaseResponse<UserDto>> getStaffById(String id);
}
