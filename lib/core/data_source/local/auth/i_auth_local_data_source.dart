abstract class IAuthLocalDataSource {
  Future<String?> accessToken();
  Future<void> setAccessToken({required String accessToken});
  Future<String?> refreshToken();
  Future<void> setRefreshToken({required String refreshToken});
  Future<void> removeAccessToken();
  Future<void> removeRefreshToken();
  Future<void> removeAllToken();
}
