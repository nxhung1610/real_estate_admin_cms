import 'package:real_estate_admin_cms/utils/string_utils.dart';

class ValidatorUtils {
  /// Check if phone number is wrong
  /// Return true if phone number is ok
  /// else return false
  static bool validatePhoneNumber(String? phoneNumber) {
    return hasMatch(
      phoneNumber,
      r'^([0-9]{10})?$',
    );
  }

  static bool validatePassword(String? password) {
    if (password == null || password.isEmpty || password.length < 6) {
      return false;
    }
    return true;
  }

  static bool validateEmail(String? email) {
    return email?.isEmail ?? false;
  }

  /// Validate chứng minh nhân dân, căn cước công dân
  static bool validatePersonalIdNumber(String? id) {
    return id != null && (id.trim().length == 9 || id.trim().length == 12);
  }

  static bool hasMatch(String? value, String pattern) {
    return (value != null) && RegExp(pattern).hasMatch(value);
  }
}
