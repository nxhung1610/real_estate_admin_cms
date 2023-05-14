import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_admin_cms/core/data_source/network/api_service.dart';
import 'package:real_estate_admin_cms/dependency_injection/dependencies_injection.dart';

import 'core/jwt_grpc_intercepter.dart';

@lazySingleton
class GrpcService {
  VoidCallback? _onExpireToken;
  Future<Either<dynamic, dynamic>> Function()? _refreshToken;
  Future<String> Function()? _token;
  init({
    required VoidCallback onExpireToken,
    Future<Either<dynamic, dynamic>> Function()? refreshToken,
    Future<String> Function()? token,
  }) {
    _onExpireToken = onExpireToken;
    _refreshToken = refreshToken;
    _token = token;
    JwtGrpcIntercepter.initCallBack(
      onExpireToken: onExpireToken,
      refreshToken: refreshToken,
      token: token,
    );
  }

  @singleton
  JwtGrpcIntercepter get jwtGrpcIntercepter => JwtGrpcIntercepter();
}
