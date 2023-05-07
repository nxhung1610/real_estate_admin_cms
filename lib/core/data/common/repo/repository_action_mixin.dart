import 'package:flutter/foundation.dart';
import 'package:real_estate_admin_cms/core/data_source/network/common/base_response.dart';
import 'package:real_estate_admin_cms/utils/logger/logger.dart';

import '../i_failure_repository.dart';
import '../network/server_failure.dart';

mixin RepositoryActionMixin<F extends IFailureRepository> {
  IFailureRepository handleException(
    Exception e,
    StackTrace trace,
  ) {
    printLog(this, message: e, trace: trace, error: e);
    if (e is IFailureRepository) {
      return e;
    } else {
      return const FailureRepo.unknow();
    }
  }

  Future<T> invokeWithData<T>({
    required Future<BaseResponse<T>> action,
    F? Function(String? errorKey)? onError,
  }) async {
    final result = await action;
    if (!result.success) {
      if (result.statusCode == 503 && result.data == null) {
        throw const ServerFailure.serverDown();
      }
      if (result.statusCode == 403) {
        throw const ServerFailure.unAuthorized();
      }
      if (onError != null && result.data != null) {
        final ex = onError.call(
          result.errorKey,
        );
        if (kDebugMode) {
          print(result.errorKey);
        }
        if (ex != null) throw ex;
      } else {
        throw const ServerFailure.unknow();
      }
    }
    final data = result.data;
    if (data == null) {
      throw const ServerFailure.dataEmpty();
    }
    return data;
  }

  Future<void> invokeWithoutData<T>({
    required Future<BaseResponse<T>> action,
    F? Function(String? errorKey)? onError,
  }) async {
    final result = await action;
    if (!result.success) {
      if (result.statusCode == 503 && result.data == null) {
        throw const ServerFailure.serverDown();
      }
      if (onError != null && result.data != null) {
        final ex = onError.call(
          result.errorKey,
        );
        if (kDebugMode) {
          print(ex);
        }
        if (ex != null) throw ex;
      } else {
        throw const ServerFailure.unknow();
      }
    }
    return;
  }
}
