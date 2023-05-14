import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_admin_cms/utils/logger/logger.dart';

class BaseResponse<T> {
  final bool success;
  // final int status;
  final T? data;
  final String? message;
  final int statusCode;
  final String? errorKey;
  final String? log;

  factory BaseResponse.fromJson({
    Response? response,
    T Function(dynamic data)? parse,
  }) {
    final Map<String, dynamic>? json = response?.data;
    return BaseResponse._(
      success: json?["success"] ??
          [201, 200].contains(response?.statusCode) ??
          false,
      data: json?["data"] != null ? parse?.call(json?["data"]) : null,
      message: json?["message"],
      statusCode: response?.statusCode ?? json?['status_code'] ?? 503,
      errorKey: json?['error_key'],
      log: json?['log'],
    );
  }

  BaseResponse._({
    required this.statusCode,
    this.errorKey,
    this.log,
    required this.success,
    this.data,
    this.message,
  });
}
