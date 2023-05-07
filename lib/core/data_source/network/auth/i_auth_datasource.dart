import 'package:dartz/dartz.dart';
import 'package:real_estate_admin_cms/core/data_source/network/auth/dto/login_response_dto.dart';
import 'package:real_estate_admin_cms/core/data_source/network/common/base_response.dart';

abstract class IAuthDataSource {
  Future<BaseResponse<LoginResponseDto>> login({
    required String phoneNumber,
    required String password,
  });
  Future<BaseResponse> register({
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String password,
  });
  Future<BaseResponse<LoginResponseDto>> refreshToken({
    required String refreshToken,
  });
  Future<BaseResponse> userInfo();
  Future<BaseResponse> verifyPhoneExist(String phone);
  Future<BaseResponse<Unit>> resetPassword({
    required String phoneNumber,
    required String password,
  });
  Future<BaseResponse> changePassword({
    required String oldPassword,
    required String newPassword,
  });
}
