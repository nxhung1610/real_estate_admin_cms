import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_admin_cms/core/data/common/i_failure_repository.dart';

part 'file_failure.freezed.dart';

@freezed
class FileFailure with _$FileFailure, IFailureRepository {
  const factory FileFailure.unknown() = FileFailureUnknown;
  const factory FileFailure.compressFailed() = FileFailureCompressFailed;
}
