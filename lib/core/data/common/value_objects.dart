import 'package:dartz/dartz.dart';
import 'package:json_annotation/json_annotation.dart';

import 'common_interfaces.dart';
import 'errors.dart';
import 'value_failures.dart';

abstract class ValueObjects<String> implements IValidatable {
  const ValueObjects();
  Either<ValueFailures<String>, String> get value;

  // Throw [UnexpectedValueError] containing the [ValueFailure]
  String getOrCrash() {
    return value.fold((l) => throw UnexpectedValueError(l), id);
  }

  Either<ValueFailures<String>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @override
  bool isValid() {
    return value.isRight();
  }
}
