import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_admin_cms/utils/freezed/freezed_annotation.dart';

import '../i_failure_repository.dart';

part 'server_failure.freezed.dart';

@freezedFailure
class ServerFailure with _$ServerFailure implements IFailureRepository {
  const factory ServerFailure.serverDown() = ServerFailureServerDown;

  const factory ServerFailure.parseFailed() = ServerFailureParseFailed;

  const factory ServerFailure.unknow() = ServerFailureUnknow;

  const factory ServerFailure.dataEmpty() = ServerFailureDataEmpty;

  const factory ServerFailure.unAuthorized() = ServerFailureUnAuthorized;
}

extension ServerFailureEx on ServerFailure {
  int get priority => when(
        serverDown: () => 0,
        unAuthorized: () => 1,
        parseFailed: () => 4,
        unknow: () => 5,
        dataEmpty: () => 3,
      );
}
