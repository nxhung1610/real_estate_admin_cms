import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:real_estate_admin_cms/core/data/common/i_failure_repository.dart';
import 'package:real_estate_admin_cms/core/data/common/repo/repository_action_mixin.dart';
import 'package:real_estate_admin_cms/core/data_source/network/api_service.dart';
import 'package:real_estate_admin_cms/core/data_source/network/file/image/image_dto_mapper.dart';
import 'package:real_estate_admin_cms/utils/image/image_compress.dart';
import 'package:uuid/uuid.dart';
import '../../../utils/logger/logger.dart';
import '../../data_source/network/file/constant.dart';
import '../../data_source/network/file/image/image_response.dart';
import 'file_failure.dart';
import 'i_file_repository.dart';
import 'model/app_image.dart';

@LazySingleton(as: IFileRepository)
class FileRepository
    with RepositoryActionMixin<FileFailure>
    implements IFileRepository {
  final IApiService apiService;

  FileRepository(@Named.from(AuthApiService) this.apiService);

  @override
  Future<OutputRepository<AppImage>> upload(String path) async {
    try {
      final resultPath =
          await compressAndTryCatch(path, maxSize: 50 * 1024 * 1024);
      if (resultPath == null) {
        throw const FileFailure.compressFailed();
      }
      final tempPath = await getTemporaryDirectory();

      final file = MultipartFile.fromBytes(
        resultPath,
        filename: '${tempPath.path}/${const Uuid().v4()}',
      );
      final fromData = FormData.fromMap({
        'file': file,
      });
      final res = await apiService.post(
        FileConstant.upload,
        fromData,
        options: Options(headers: {
          'Content-Type': 'multipart/form-data',
          "Accept": "multipart/form-data",
        }),
        resultParser: (json) {
          return ImageResponse.fromJson(json);
        },
      );
      if (!res.success) throw res.errorKey ?? res.message ?? '';
      return right(ImageDtoMapper.fromResponse(res.data!));
    } on Exception catch (e, trace) {
      printLog(this, message: e, error: e, trace: trace);
      if (e is FileFailure) {
        return left(e);
      }

      return left(handleException(e, trace));
    }
  }
}
