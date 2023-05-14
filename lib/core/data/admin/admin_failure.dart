import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_admin_cms/core/data/common/i_failure_repository.dart';

part 'admin_failure.freezed.dart';

@freezed
class AdminFailure with _$AdminFailure, IFailureRepository {
  factory AdminFailure() = _AdminFailure;
}
