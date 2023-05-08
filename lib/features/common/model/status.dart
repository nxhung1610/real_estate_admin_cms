import 'package:freezed_annotation/freezed_annotation.dart';

part 'status.freezed.dart';
part 'status.g.dart';

abstract class StatusValue {
  dynamic get value;
}

@freezed
class Status with _$Status {
  const factory Status.idle() = StatusIdle;
  @Implements<StatusValue>()
  const factory Status.success({
    dynamic value,
  }) = StatusSuccess;
  const factory Status.loading() = StatusLoading;
  @Implements<StatusValue>()
  const factory Status.failure({
    dynamic value,
  }) = StatusFailure;

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}
