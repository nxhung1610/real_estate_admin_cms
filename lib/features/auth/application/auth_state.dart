part of 'auth_bloc.dart';

@freezedBlocState
class AuthState with _$AuthState {
  const factory AuthState.unknown() = AuthStateUnknown;
  const factory AuthState.authentication() = AuthStateAuthentication;
  const factory AuthState.unAuthentication() = AuthStateUnAuthentication;
}
