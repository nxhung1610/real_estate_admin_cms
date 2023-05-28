import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_admin_cms/core/data/common/i_failure_repository.dart';

part 'tour_failure.freezed.dart';

@freezed
class TourFailure with _$TourFailure implements IFailureRepository {
  factory TourFailure() = _TourFailure;
}
