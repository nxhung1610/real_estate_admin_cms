part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.onPhoneNumberChanged(String phoneNumber) =
      LoginEventOnPhoneNumberChanged;
  const factory LoginEvent.onPasswordChanged(String password) =
      LoginEventOnPasswordChanged;
  const factory LoginEvent.onLoginPressed() = LoginEventOnLoginPressed;
}
