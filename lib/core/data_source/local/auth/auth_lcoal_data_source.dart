import 'package:injectable/injectable.dart';
import 'package:real_estate_admin_cms/core/data_source/local/auth/i_auth_local_data_source.dart';

@LazySingleton(as: IAuthLocalDataSource)
class AuthLocalDataSource implements IAuthLocalDataSource {
  @override
  Future<String?> accessToken() => Future.value(null);

  @override
  Future<String?> refreshToken() {
    // TODO: implement getRefreshToken
    throw UnimplementedError();
  }

  @override
  Future<void> removeAccessToken() {
    // TODO: implement removeAccessToken
    throw UnimplementedError();
  }

  @override
  Future<void> removeAllToken() {
    // TODO: implement removeAllToken
    throw UnimplementedError();
  }

  @override
  Future<void> removeRefreshToken() {
    // TODO: implement removeRefreshToken
    throw UnimplementedError();
  }

  @override
  Future<void> setAccessToken({required String accessToken}) {
    // TODO: implement setAccessToken
    throw UnimplementedError();
  }

  @override
  Future<void> setRefreshToken({required String refreshToken}) {
    // TODO: implement setRefreshToken
    throw UnimplementedError();
  }
}
