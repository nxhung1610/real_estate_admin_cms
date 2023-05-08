import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_admin_cms/helper/extensions/date_time.dart';

const freezedSqfileEntity = freezed;

const freezedApiResponse = Freezed(fromJson: true, toJson: false);
const freezedApiRequest = Freezed(fromJson: false, toJson: true);
const freezedBlocState = Freezed();
const freezedBlocEvent = Freezed(
  copyWith: false,
  toStringOverride: false,
  fromJson: false,
  toJson: false,
  genericArgumentFactories: false,
  makeCollectionsUnmodifiable: false,
  map: FreezedMapOptions(map: false, mapOrNull: false, maybeMap: false),
  equal: true,
  when: FreezedWhenOptions(
    when: false,
    maybeWhen: false,
    whenOrNull: false,
  ),
);
const freezedFailure = Freezed(
  copyWith: false,
  toStringOverride: false,
  fromJson: false,
  toJson: false,
  genericArgumentFactories: false,
  makeCollectionsUnmodifiable: false,
  equal: false,
);

class DateTimeConverterFromString implements JsonConverter<DateTime, String> {
  const DateTimeConverterFromString();

  @override
  DateTime fromJson(String dateTime) {
    return DateTime.parse(dateTime).toLocal();
  }

  @override
  String toJson(DateTime date) {
    return date.toUtc().toIso8601String();
  }
}

class DateTimeOrNullConverterFromString
    implements JsonConverter<DateTime?, String?> {
  const DateTimeOrNullConverterFromString();

  @override
  DateTime? fromJson(String? dateTime) {
    return dateTime != null ? DateTime.parse(dateTime).toLocal() : null;
  }

  @override
  String? toJson(DateTime? date) => date?.toUtc().toIso8601String();
}

/// Convert to UTC format
class DateTimeAsUTC implements JsonConverter<DateTime, String> {
  const DateTimeAsUTC();
  @override
  DateTime fromJson(String dateTime) {
    return DateTime.parse(dateTime);
  }

  @override
  String toJson(DateTime date) {
    return date.asUtc.toIso8601String();
  }
}

class DateTimeOrNullAsUTC implements JsonConverter<DateTime?, String?> {
  const DateTimeOrNullAsUTC();

  @override
  DateTime? fromJson(String? dateTime) {
    return dateTime != null ? DateTime.parse(dateTime) : null;
  }

  @override
  String? toJson(DateTime? date) {
    final string = date?.asUtc.toIso8601String();
    return string;
  }
}
