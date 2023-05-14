import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:real_estate_admin_cms/core/data/common/i_failure_repository.dart';

import 'file_failure.dart';
import 'model/app_image.dart';

abstract class IFileRepository {
  Future<OutputRepository<AppImage>> upload(String data);
}
