import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_admin_cms/core/data_source/local/auth/i_auth_local_data_source.dart';

@LazySingleton(as: IAuthLocalDataSource)
class AuthLocalDataSource implements IAuthLocalDataSource {
  final _accessTokenKey = 'ACCESS_TOKEN';
  final _refreshTokenKey = 'REFRESH_TOKEN';
  final FlutterSecureStorage storage;

  AuthLocalDataSource(this.storage);
  @override
  Future<String?> accessToken() {
    return storage.read(key: _accessTokenKey);
  }

  @override
  Future<String?> refreshToken() {
    return storage.read(key: _refreshTokenKey);
  }

  @override
  Future<void> removeAccessToken() {
    return storage.delete(key: _accessTokenKey);
  }

  @override
  Future<void> removeAllToken() async {
    await Future.wait([
      storage.delete(key: _accessTokenKey),
      storage.delete(key: _refreshTokenKey)
    ]);
  }

  @override
  Future<void> removeRefreshToken() {
    return storage.delete(key: _refreshTokenKey);
  }

  @override
  Future<void> setAccessToken({required String accessToken}) {
    return storage.write(key: _accessTokenKey, value: accessToken);
  }

  @override
  Future<void> setRefreshToken({required String refreshToken}) {
    return storage.write(key: _refreshTokenKey, value: refreshToken);
  }
}
