part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.unAuthenticate() = AuthStateUnAuthenticate;
  const factory AuthState.authentication() = AuthStateAuthentication;
}
