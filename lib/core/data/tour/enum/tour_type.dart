import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'value')
enum TourType {
  @JsonValue('virtual')
  virtual('virtual'),
  @JsonValue('in_person')
  inPerson('in_person');

  const TourType(this.value);
  final String value;

  factory TourType.fromValue(String value) {
    return values.firstWhere(
      (element) => element.value == value,
      orElse: () => TourType.virtual,
    );
  }

  String get title {
    switch (this) {
      case TourType.virtual:
        return 'Online';
      case TourType.inPerson:
        return 'Trực tiếp';
    }
  }
}
