import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'i_failure_repository.freezed.dart';

typedef OutputRepository<T> = Either<IFailureRepository, T>;

abstract class IFailureRepository implements Exception {}

@freezed
class FailureRepo with _$FailureRepo, IFailureRepository {
  const factory FailureRepo.unknow() = _FailureRepoUnknow;
}
