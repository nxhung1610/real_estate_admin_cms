import 'package:freezed_annotation/freezed_annotation.dart';

part 'status.freezed.dart';

abstract class BaseStatus {
  dynamic get value;
}

@freezed
class Status extends BaseStatus with _$Status {
  factory Status.success({
    dynamic value,
  }) = _StatusSuccess;
  factory Status.failure({
    dynamic value,
  }) = _StatusFailure;
  factory Status.loading({
    dynamic value,
  }) = _StatusLoading;
}
