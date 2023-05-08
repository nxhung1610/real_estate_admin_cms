part of 'login_bloc.dart';

@freezedBlocState
class LoginState with _$LoginState, ILoadingState {
  const factory LoginState({
    PhoneNumberAuth? phoneNumberAuth,
    PasswordAuth? passwordAuth,
    @Default(Status.idle()) Status status,
    @Default(false) bool passwordVisible,
  }) = _LoginState;

  factory LoginState.fromJson(Map<String, dynamic> json) =>
      _$LoginStateFromJson(json);
}
