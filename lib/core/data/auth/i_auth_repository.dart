import 'package:dartz/dartz.dart';
import 'package:real_estate_admin_cms/core/data/common/i_failure_repository.dart';

import 'auth_failures.dart';
import 'model/auth_session.dart';
import 'value_objects.dart';

abstract class IAuthRepository {
  Future<OutputRepository<AuthSession>> login(
      PhoneNumberAuth phoneNumber, PasswordAuth password);
  Future<OutputRepository> register(NameAuth firstName, NameAuth lastName,
      PhoneNumberAuth phoneNumber, PasswordAuth password);
  Future<OutputRepository<AuthSession>> refreshToken();
  Future<OutputRepository> userInfo();
  Future<OutputRepository> verifyPhoneExist(PhoneNumberAuth phone);
  Future<OutputRepository> resetPassword(
      PhoneNumberAuth phoneNumber, PasswordAuth password);
  Future<OutputRepository> changePassword(
    String oldPassword,
    PasswordAuth newPassword,
  );
}
