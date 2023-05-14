import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/browser.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_admin_cms/config/app_config.dart';
import 'package:real_estate_admin_cms/core/data_source/network/common/interceptor/auth_interceptor.dart';
import 'package:real_estate_admin_cms/dependency_injection/dependencies_injection.dart';
import 'package:real_estate_admin_cms/utils/logger/logger.dart';

@module
abstract class NetworkModule {
  @Named("baseUrl")
  String get baseUrl => AppConfig.instance.baseUrl;
  // @Named("gRpcUrl")
  // String get gRpcUrl => AppConfig.instance.gRpcUrl;
  // @Named("gRpcPort")
  // String get gRpcPort => AppConfig.instance.gRpcPort;
  // @Named("connectionTimeout")
  // int get connectionTimeout => AppConfig.instance.connectionTimeout;
  // @Named("receiveTimeout")
  // int get receiveTimeout => AppConfig.instance.receiveTimeout;
  // @Named("accessTokenMap")
  // String get accessTokenMap => AppConfig.instance.accessTokenMap;
  // @Named("stringStyleUrlMap")
  // String get stringStyleUrlMap => AppConfig.instance.stringStyleUrlMap;

  @Named('authDio')
  Dio get dioAuth => _dio(AppConfig.instance, _authInterceptors);
  @Named('tokenDio')
  Dio get dioToken => _dio(AppConfig.instance, _authInterceptors);
  @Named('defaultDio')
  Dio get dioDefault => _dio(AppConfig.instance, _normalInterceptors);

  List<Interceptor> get _authInterceptors => [
        getIt.call<AuthInterceptor>(
          param1: () {
            // Expired token
          },
        ),
      ];

  List<Interceptor> get _normalInterceptors => [];

  Dio _dio(
    AppConfig config,
    List<Interceptor> interceptors,
  ) {
    final Dio dio = Dio();
    try {
      dio
        ..options.baseUrl = config.baseUrl
        ..options.connectTimeout =
            Duration(milliseconds: config.connectionTimeout)
        ..options.receiveTimeout = Duration(milliseconds: config.receiveTimeout)
        // // ..options.followRedirects = false
        ..options.headers = {
          'Content-Type': 'application/json; charset=utf-8',
          "Accept": "application/json",
          // "Access-Control-Allow-Origin": "*",
          // "Access-Control-Allow-Methods":
          //     "POST, GET, OPTIONS, PUT, DELETE, HEAD",
        }
        ..interceptors.add(QueuedInterceptorsWrapper())
        ..interceptors.addAll(interceptors);
      // ..interceptors.add(PrettyDioLogger(
      //   request: true,
      //   requestBody: true,
      //   responseBody: true,
      //   requestHeader: true,
      //   responseHeader: false,
      //   error: true,
      // ))
      dio.httpClientAdapter = BrowserHttpClientAdapter();
    } catch (e, trace) {
      printLog(this, message: e, error: e, trace: trace);
    }

    return dio;
  }
}
