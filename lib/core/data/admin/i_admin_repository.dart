import 'package:dartz/dartz.dart';
import 'package:real_estate_admin_cms/core/data/auth/model/user.dart';
import 'package:real_estate_admin_cms/core/data/common/i_failure_repository.dart';

abstract class IAdminRepository {
  Future<OutputRepository<List<User>>> getStaffs();
  Future<OutputRepository<User>> getStaffById({
    String? id,
  });
  Future<OutputRepository<Unit>> assignStaffTour(
    String id,
    String staffId,
  );
  Future<OutputRepository<Unit>> rejectTour(
    String id,
    String reason,
  );
}
