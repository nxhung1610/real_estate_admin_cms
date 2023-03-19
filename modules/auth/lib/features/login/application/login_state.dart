part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    String? phoneNumber,
    String? password,
  }) = _LoginState;
}
