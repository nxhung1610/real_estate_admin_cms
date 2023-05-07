import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_admin_cms/core/data_source/network/api_service.dart';
import 'package:real_estate_admin_cms/core/data_source/network/auth/dto/login_request.dart';
import 'package:real_estate_admin_cms/core/data_source/network/auth/i_auth_datasource.dart';
import 'package:real_estate_admin_cms/core/data_source/network/common/base_response.dart';

@LazySingleton(as: IAuthDataSource)
class AuthDataSource implements IAuthDataSource {
  final IApiService apiService;

  AuthDataSource(@Named.from(DefaultApiService) this.apiService);
  @override
  Future<BaseResponse> changePassword({
    required String oldPassword,
    required String newPassword,
  }) {
    // TODO: implement changePassword
    throw UnimplementedError();
  }

  @override
  Future<BaseResponse> login({
    required String phoneNumber,
    required String password,
  }) {
    return apiService.post(
      '/login',
      LoginRequest(
        phone: phoneNumber,
        password: password,
      ),
    );
  }

  @override
  Future<BaseResponse> refreshToken() {
    // TODO: implement refreshToken
    throw UnimplementedError();
  }

  @override
  Future<BaseResponse> register({
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String password,
  }) {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  Future<BaseResponse<Unit>> resetPassword({
    required String phoneNumber,
    required String password,
  }) {
    // TODO: implement resetPassword
    throw UnimplementedError();
  }

  @override
  Future<BaseResponse> userInfo() {
    // TODO: implement userInfo
    throw UnimplementedError();
  }

  @override
  Future<BaseResponse> verifyPhoneExist(String phone) {
    // TODO: implement verifyPhoneExist
    throw UnimplementedError();
  }
}
