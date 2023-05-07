part of 'auth_bloc.dart';

@freezedBlocEvent
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.onAuthentication() = AuthEventOnAuthentication;
  const factory AuthEvent.onUnAuthentication() = AuthEventOnUnAuthentication;
}
