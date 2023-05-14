import 'package:dartz/dartz.dart';
import 'package:real_estate_admin_cms/core/data/auth/model/user.dart';
import 'package:real_estate_admin_cms/core/data/common/i_failure_repository.dart';

abstract class IAdminRepository {
  Future<OutputRepository<User>> getStaffById(String id);
}
