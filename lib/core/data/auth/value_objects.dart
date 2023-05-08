import 'package:dartz/dartz.dart';
import 'package:json_annotation/json_annotation.dart';

import '../common/value_failures.dart';
import '../common/value_objects.dart';
import '../common/value_validations.dart';
part 'value_objects.g.dart';

// abstract class ValueObjectsFactory {
//   static ValueObjects<String> fromGenericClass(Type t, String input) {
//     switch (t.runtimeType) {
//       case EmailAddressAuth:
//         return EmailAddressAuth(input);
//       case PasswordAuth:
//         return PasswordAuth(input);
//       case FullNameAuth:
//         return FullNameAuth(input);
//       case PhoneNumberAuth:
//         return PhoneNumberAuth(input);
//       case NameAuth:
//         return NameAuth(input);
//       default:
//         throw Exception();
//     }
//   }
// }

// class ValueObjectsMapper
//     extends JsonConverter<ValueObjects<String>, Map<String, dynamic>> {
//   final Type as;

//   const ValueObjectsMapper({required this.as});
//   @override
//   ValueObjects<String> fromJson(Map<String, dynamic> json) {
//     return ValueObjectsFactory.fromGenericClass(
//       as,
//       json['value'],
//     );
//   }

//   @override
//   Map<String, dynamic> toJson(ValueObjects<String> object) {
//     return {
//       'value': object.value.fold((l) => l.failedValue, (r) => r),
//     };
//   }
// }

@JsonSerializable()
class EmailAddressAuth extends ValueObjects<String> {
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  late final Either<ValueFailures<String>, String> value;

  final String valueData;

  EmailAddressAuth(this.valueData) {
    value = validateEmailAddress(valueData);
  }

  factory EmailAddressAuth.fromJson(Map<String, dynamic> json) =>
      _$EmailAddressAuthFromJson(json);

  Map<String, dynamic> toJson() => _$EmailAddressAuthToJson(this);
}

@JsonSerializable()
class PasswordAuth extends ValueObjects<String> {
  final String valueData;
  PasswordAuth(this.valueData) {
    value = validatePassword(valueData);
  }
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  late final Either<ValueFailures<String>, String> value;

  factory PasswordAuth.fromJson(Map<String, dynamic> json) =>
      _$PasswordAuthFromJson(json);

  Map<String, dynamic> toJson() => _$PasswordAuthToJson(this);
}

@JsonSerializable()
class FullNameAuth extends ValueObjects<String> {
  final String valueData;
  FullNameAuth(
    this.valueData,
  ) {
    value = validateFullName(valueData);
  }
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  late final Either<ValueFailures<String>, String> value;

  factory FullNameAuth.fromJson(Map<String, dynamic> json) =>
      _$FullNameAuthFromJson(json);

  Map<String, dynamic> toJson() => _$FullNameAuthToJson(this);
}

@JsonSerializable()
class PhoneNumberAuth extends ValueObjects<String> {
  PhoneNumberAuth(this.valueData) {
    value = validatePhoneNumber(valueData);
  }
  final String valueData;

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  late final Either<ValueFailures<String>, String> value;

  factory PhoneNumberAuth.fromJson(Map<String, dynamic> json) =>
      _$PhoneNumberAuthFromJson(json);

  Map<String, dynamic> toJson() => _$PhoneNumberAuthToJson(this);
}

@JsonSerializable()
class NameAuth extends ValueObjects<String> {
  final String valueData;
  NameAuth(this.valueData) {
    value = validateName(valueData);
  }

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  late final Either<ValueFailures<String>, String> value;

  factory NameAuth.fromJson(Map<String, dynamic> json) =>
      _$NameAuthFromJson(json);

  Map<String, dynamic> toJson() => _$NameAuthToJson(this);
}
