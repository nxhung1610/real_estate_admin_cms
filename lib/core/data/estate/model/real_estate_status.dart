import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: "value")
enum RealEstateStatus {
  normal(1),
  delete(2),
  processing(3),
  failed(4),
  approved(5);

  const RealEstateStatus(this.value);

  final int value;

  factory RealEstateStatus.fromValue(int? value) {
    return RealEstateStatus.values.firstWhere(
      (element) => element.value == value,
      orElse: () => RealEstateStatus.processing,
    );
  }

  String get title => () {
        switch (this) {
          case RealEstateStatus.processing:
            return 'Chờ xử lý';
          case RealEstateStatus.normal:
            return 'Khả dụng';
          case RealEstateStatus.delete:
            return 'Đã xoá';
          case RealEstateStatus.failed:
            return 'Thất bại';
          case RealEstateStatus.approved:
            return "Đã duyệt";
        }
      }();
}
