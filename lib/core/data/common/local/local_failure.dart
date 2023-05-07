import 'package:freezed_annotation/freezed_annotation.dart';

import '../i_failure_repository.dart';

part 'local_failure.freezed.dart';

@freezed
class LocalFailure with _$LocalFailure, IFailureRepository {
  const factory LocalFailure.unknow() = _LocalFailureUnknow;
}
