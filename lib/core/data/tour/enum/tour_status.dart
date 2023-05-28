import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: "value")
enum TourStatus {
  waiting(1),
  // deleted(2),
  processing(3),
  // failed(4),
  approved(5),
  rejected(6);

  const TourStatus(this.value);

  final int value;

  factory TourStatus.fromValue(int value) {
    return TourStatus.values.firstWhere((element) => element.value == value);
  }

  String get title {
    switch (this) {
      case TourStatus.waiting:
        return 'Đợi xét duyệt';
      case TourStatus.processing:
        return 'Đang xét duyệt';
      case TourStatus.approved:
        return 'Đã xét duyệt';
      case TourStatus.rejected:
        return 'Từ chối';
    }
  }
}
