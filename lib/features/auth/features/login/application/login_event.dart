part of 'login_bloc.dart';

@freezedBlocEvent
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.onPhoneNumberChange(String phoneNumber) =
      LoginEventOnPhoneNumberChange;
  const factory LoginEvent.onPasswordChange(String password) =
      LoginEventOnPasswordChange;
  const factory LoginEvent.onLogin() = LoginEventOnLogin;
  const factory LoginEvent.onPasswordVisibleChange() =
      LoginEventOnPasswordVisibleChange;
}
