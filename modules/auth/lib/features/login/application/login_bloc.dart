import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.dart';
part 'login_event.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<LoginEventOnPhoneNumberChanged>(_onPhoneNumberChanged);
    on<LoginEventOnPasswordChanged>(_onPasswordChanged);
    on<LoginEventOnLoginPressed>(_onLoginPressed);
  }

  FutureOr<void> _onPhoneNumberChanged(
    LoginEventOnPhoneNumberChanged event,
    Emitter<LoginState> emit,
  ) {
    emit(state.copyWith(phoneNumber: event.phoneNumber));
  }

  FutureOr<void> _onPasswordChanged(
    LoginEventOnPasswordChanged event,
    Emitter<LoginState> emit,
  ) {
    emit(state.copyWith(password: event.password));
  }

  FutureOr<void> _onLoginPressed(
    LoginEventOnLoginPressed event,
    Emitter<LoginState> emit,
  ) async {}
}
