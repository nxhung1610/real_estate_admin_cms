import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_admin_cms/utils/.utils.dart';

import '../common/i_failure_repository.dart';

part 'connectivity_failure.freezed.dart';

@freezedFailure
class ConnectivityFailure with _$ConnectivityFailure, IFailureRepository {
  factory ConnectivityFailure() = _ConnectivityFailure;
}
