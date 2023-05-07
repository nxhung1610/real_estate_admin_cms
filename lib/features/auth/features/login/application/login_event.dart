part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.onPhoneNumberChange(String phoneNumber) =
      LoginEventOnPhoneNumberChange;
  const factory LoginEvent.onPasswordChange(String password) =
      LoginEventOnPasswordChange;
  const factory LoginEvent.onLogin() = LoginEventOnLogin;
}
