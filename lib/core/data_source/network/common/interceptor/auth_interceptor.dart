import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:dio/dio.dart' as app_dio;
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_admin_cms/core/data_source/local/auth/i_auth_local_data_source.dart';
import 'package:real_estate_admin_cms/core/data_source/network/auth/i_auth_datasource.dart';
import 'package:real_estate_admin_cms/dependency_injection/dependencies_injection.dart';
import 'package:real_estate_admin_cms/utils/logger/logger.dart';

@injectable
class AuthInterceptor extends QueuedInterceptorsWrapper {
  AuthInterceptor({
    required this.authenticationLocalDataSource,
    required this.authDataSource,
    @factoryParam required this.onExpireToken,
  });
  final VoidCallback? onExpireToken;
  final IAuthLocalDataSource authenticationLocalDataSource;
  final IAuthDataSource authDataSource;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final accessToken = await authenticationLocalDataSource.accessToken();

    if (accessToken == null) {
      try {
        final refreshAccessToken =
            await authenticationLocalDataSource.refreshToken();
        if (refreshAccessToken != null) {
          options.headers["Authorization"] = refreshAccessToken;
        } else {
          handler.reject(DioError(requestOptions: options));
        }
      } on DioError catch (e) {
        if ([403, 401].contains(e.response?.statusCode)) {
          handler.reject(DioError(requestOptions: options));
        } else {
          handler.reject(e);
        }
      }
    } else {
      printLog(this,
          message: 'Authorized! Put access token to header: $accessToken');
      options.headers["Authorization"] = accessToken;
    }

    super.onRequest(options, handler);
  }

  @override
  Future<void> onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) async {
    super.onResponse(response, handler);
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    if ([403, 401].contains(err.response?.statusCode)) {
      executeExpire() {
        onExpireToken?.call();
        return handler.next(err);
      }

      try {
        final refreshToken = await authenticationLocalDataSource.refreshToken();
        if (refreshToken == null) {
          throw Exception('Refresh token is null');
        }
        final token =
            await authDataSource.refreshToken(refreshToken: refreshToken);
        if (!token.success) {
          throw Exception('Refresh token fail');
        }
        final response =
            await retry(err.requestOptions, token.data!.token!.token!);
        return handler.resolve(response);
      } catch (e, trace) {
        printLog(this, message: e, error: e, trace: trace);
        return executeExpire.call();
      }
    }
    return handler.next(err);
  }

  Future<Response<dynamic>> retry(
    RequestOptions requestOptions,
    String accessToken,
  ) async {
    const httpTimeOut = 300000;
    printLog(this, message: 'retry');
    final dio = app_dio.Dio(
      app_dio.BaseOptions(baseUrl: getIt.call(instanceName: 'baseUrl')),
    );

    requestOptions.headers["Authorization"] = accessToken;
    final options = Options(
      sendTimeout: const Duration(milliseconds: httpTimeOut),
      receiveTimeout: const Duration(milliseconds: httpTimeOut),
      method: requestOptions.method,
      headers: requestOptions.headers,
    );
    return dio.request<dynamic>(requestOptions.path, options: options);
  }
}
