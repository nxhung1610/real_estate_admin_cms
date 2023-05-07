import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_admin_cms/utils/freezed/freezed_annotation.dart';

part 'login_request.freezed.dart';
part 'login_request.g.dart';

@freezedApiRequest
class LoginRequest with _$LoginRequest {
  const factory LoginRequest({
    required String phone,
    required String password,
  }) = _LoginRequest;
}
