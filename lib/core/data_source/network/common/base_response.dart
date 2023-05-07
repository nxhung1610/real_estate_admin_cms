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
  final Response? response;

  factory BaseResponse.fromJson(
    Map<String, dynamic> json, {
    T Function(dynamic data)? parse,
    Response? response,
  }) {
    return BaseResponse._(
      success: json["success"],
      data: parse?.call(json["data"]),
      message: json["message"],
      statusCode: json['status_code'],
      errorKey: json['error_key'],
      log: json['log'],
      response: response,
    );
  }

  BaseResponse._({
    required this.statusCode,
    this.response,
    this.errorKey,
    this.log,
    required this.success,
    this.data,
    this.message,
  });
}
