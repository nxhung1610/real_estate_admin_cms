import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_admin_cms/utils/logger/logger.dart';

import 'common/base_response.dart';

abstract class IApiService {
  Future<BaseResponse<T>> post<T>(
    String path,
    Object? body, {
    Map<String, dynamic>? queryParameters,
    T Function(Map<String, dynamic> json)? resultParser,
  });

  Future<BaseResponse<T>> put<T>(
    String path, {
    Object? body,
    Map<String, dynamic>? queryParameters,
    T Function(Map<String, dynamic> json)? resultParser,
  });

  Future<BaseResponse<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParams,
    T Function(Map<String, dynamic> json)? resultParser,
  });

  Future<BaseResponse<T>> delete<T>(
    String path, {
    Map<String, dynamic>? queryParams,
    Object? body,
    T Function(Map<String, dynamic> json)? resultParser,
  });

  Future<BaseResponse<List<T>>> postWithListResponse<T>(
    String path,
    Object body, {
    Map<String, dynamic>? queryParameters,
    List<T> Function(List<Map<String, dynamic>> result)? resultParser,
  });

  Future<BaseResponse<List<T>>> putWithListResponse<T>(
    String path,
    Object body, {
    Map<String, dynamic>? queryParameters,
    List<T> Function(List<Map<String, dynamic>> result)? resultParser,
  });

  Future<BaseResponse<List<T>>> getWithListResponse<T>(
    String path, {
    Map<String, dynamic>? queryParams,
    List<T> Function(List<Map<String, dynamic>> result)? resultParser,
  });

  Future<BaseResponse<List<T>>> deleteWithListResponse<T>(
    String path,
    Object? body, {
    Map<String, dynamic>? queryParams,
    List<T> Function(List<Map<String, dynamic>> result)? resultParser,
  });

  Future<void> downloadFile(
    String fileUrl,
    String filePath,
    Function(int, int) onReceiveProgress,
  );
}

abstract class ApiService implements IApiService {
  Dio dio;

  /// inject dio by DI
  ApiService(this.dio);

  @override
  @protected
  Future<BaseResponse<T>> post<T>(
    String path,
    Object? body, {
    Map<String, dynamic>? queryParameters,
    T Function(Map<String, dynamic> json)? resultParser,
  }) async {
    return _post<T>(
      path,
      body,
      queryParameters: queryParameters,
      resultParser:
          resultParser != null ? (value) => resultParser.call(value) : null,
    );
  }

  @override
  @protected
  Future<BaseResponse<T>> put<T>(
    String path, {
    Object? body,
    Map<String, dynamic>? queryParameters,
    T Function(Map<String, dynamic> json)? resultParser,
  }) {
    return _put<T>(
      path,
      body: body,
      queryParameters: queryParameters,
      resultParser:
          resultParser != null ? (value) => resultParser.call(value) : null,
    );
  }

  @override
  @protected
  Future<BaseResponse<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParams,
    T Function(Map<String, dynamic> json)? resultParser,
  }) {
    return _get<T>(
      path,
      queryParams: queryParams,
      resultParser:
          resultParser != null ? (value) => resultParser.call(value) : null,
    );
  }

  @override
  @protected
  Future<BaseResponse<T>> delete<T>(
    String path, {
    Map<String, dynamic>? queryParams,
    Object? body,
    T Function(Map<String, Object?> json)? resultParser,
  }) {
    return _delete<T>(
      path,
      body,
      queryParams: queryParams,
      resultParser:
          resultParser != null ? (value) => resultParser.call(value) : null,
    );
  }

  @override
  Future<BaseResponse<List<T>>> deleteWithListResponse<T>(
    String path,
    Object? body, {
    Map<String, dynamic>? queryParams,
    List<T> Function(List<Map<String, dynamic>> result)? resultParser,
  }) {
    return _delete<List<T>>(
      path,
      body,
      queryParams: queryParams,
      resultParser: resultParser != null
          ? (value) {
              return resultParser.call((value as List<dynamic>)
                  .map((e) => e as Map<String, dynamic>)
                  .toList());
            }
          : null,
    );
  }

  @override
  Future<BaseResponse<List<T>>> getWithListResponse<T>(
    String path, {
    Map<String, dynamic>? queryParams,
    List<T> Function(List<Map<String, dynamic>> result)? resultParser,
  }) {
    return _get<List<T>>(
      path,
      queryParams: queryParams,
      resultParser: resultParser != null
          ? (value) {
              return resultParser.call((value as List<dynamic>)
                  .map((e) => e as Map<String, dynamic>)
                  .toList());
            }
          : null,
    );
  }

  @override
  Future<BaseResponse<List<T>>> postWithListResponse<T>(
      String path, Object body,
      {Map<String, dynamic>? queryParameters,
      List<T> Function(List<Map<String, dynamic>> result)? resultParser}) {
    return _post<List<T>>(
      path,
      body,
      queryParameters: queryParameters,
      resultParser: resultParser != null
          ? (value) {
              return resultParser.call((value as List<dynamic>)
                  .map((e) => e as Map<String, dynamic>)
                  .toList());
            }
          : null,
    );
  }

  @override
  Future<BaseResponse<List<T>>> putWithListResponse<T>(
    String path,
    Object body, {
    Map<String, dynamic>? queryParameters,
    List<T> Function(List<Map<String, dynamic>> result)? resultParser,
  }) {
    return _put<List<T>>(
      path,
      body: body,
      queryParameters: queryParameters,
      resultParser: resultParser != null
          ? (value) {
              return resultParser.call((value as List<dynamic>)
                  .map((e) => e as Map<String, dynamic>)
                  .toList());
            }
          : null,
    );
  }

  Future<BaseResponse<T>> _post<T>(
    String path,
    Object? body, {
    Map<String, dynamic>? queryParameters,
    T Function(dynamic value)? resultParser,
  }) async {
    Response? res;
    try {
      res = await dio.post(path, data: body, queryParameters: queryParameters);
    } on DioError catch (e, trace) {
      printLog(this, message: e, error: e, trace: trace);
      res = e.response;
    }
    return BaseResponse.fromJson(response: res?.data, parse: resultParser);
  }

  Future<BaseResponse<T>> _put<T>(
    String path, {
    Object? body,
    Map<String, dynamic>? queryParameters,
    T Function(dynamic value)? resultParser,
  }) async {
    Response? res;
    try {
      res = await dio.put(path, data: body, queryParameters: queryParameters);
    } on DioError catch (e, trace) {
      printLog(this, message: e, error: e, trace: trace);
      res = e.response;
    }
    return BaseResponse.fromJson(response: res?.data, parse: resultParser);
  }

  Future<BaseResponse<T>> _get<T>(
    String path, {
    Map<String, dynamic>? queryParams,
    T Function(dynamic value)? resultParser,
  }) async {
    Response? res;
    try {
      res = await dio.get(path, queryParameters: queryParams);
    } on DioError catch (e, trace) {
      printLog(this, message: e, error: e, trace: trace);
      res = e.response;
    }
    return BaseResponse.fromJson(response: res?.data, parse: resultParser);
  }

  Future<BaseResponse<T>> _delete<T>(
    String path,
    Object? body, {
    Map<String, dynamic>? queryParams,
    T Function(dynamic)? resultParser,
  }) async {
    Response? res;
    try {
      res = await dio.delete(path, queryParameters: queryParams);
    } on DioError catch (e, trace) {
      printLog(this, message: e, error: e, trace: trace);
      res = e.response;
    }
    return BaseResponse.fromJson(response: res?.data, parse: resultParser);
  }

  @override
  Future<void> downloadFile(
      String fileUrl, String filePath, Function(int, int) onReceiveProgress) {
    return dio
        .download(
      fileUrl,
      filePath,
      onReceiveProgress: onReceiveProgress,
    )
        .then((value) {
      return;
    });
  }
}

@named
@LazySingleton(as: IApiService)
class AuthApiService extends ApiService {
  AuthApiService(@Named('authDio') super.dio);
}

@named
@LazySingleton(as: IApiService)
class DefaultApiService extends ApiService {
  DefaultApiService(@Named('defaultDio') super.dio);
}
