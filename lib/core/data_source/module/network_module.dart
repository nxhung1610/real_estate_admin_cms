import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_admin_cms/config/app_config.dart';
import 'package:real_estate_admin_cms/core/data_source/network/common/interceptor/auth_interceptor.dart';
import 'package:real_estate_admin_cms/dependency_injection/dependencies_injection.dart';

@module
abstract class NetworkModule {
  @Named("baseUrl")
  String get baseUrl => AppConfig.instance.baseUrl;

  @Named('authDio')
  Dio get dioAuth => _dio(baseUrl, _authInterceptors);
  @Named('defaultDio')
  Dio get dioDefault => _dio(baseUrl, _normalInterceptors);

  List<Interceptor> get _authInterceptors => [
        getIt.call<AuthInterceptor>(
          param1: () {
            // Expired token
          },
        ),
      ];

  List<Interceptor> get _normalInterceptors => [];

  Dio _dio(
    String url,
    List<Interceptor> interceptors,
  ) {
    final dio = Dio(BaseOptions(
      baseUrl: url,
    ));
    dio.interceptors.addAll(interceptors);
    return dio;
  }
}
