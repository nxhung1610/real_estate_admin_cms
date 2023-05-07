part of 'login_bloc.dart';

@freezedBlocState
class LoginState with _$LoginState {
  const factory LoginState({
    PhoneNumberAuth? phoneNumberAuth,
    PasswordAuth? passwordAuth,
    @Default(Status.idle()) Status status,
  }) = _LoginState;
}
