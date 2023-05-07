import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_admin_cms/core/data/auth/i_auth_repository.dart';
import 'package:real_estate_admin_cms/core/data/auth/value_objects.dart';
import 'package:real_estate_admin_cms/features/common/application/I_loading_state.dart';
import 'package:real_estate_admin_cms/features/common/model/status.dart';
import 'package:real_estate_admin_cms/utils/freezed/freezed_annotation.dart';
import 'package:real_estate_admin_cms/utils/logger/logger.dart';

part 'login_state.dart';
part 'login_event.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IAuthRepository authRepository;
  LoginBloc(this.authRepository) : super(const LoginState()) {
    on<LoginEventOnPhoneNumberChange>(_onPhoneNumberChanged);
    on<LoginEventOnPasswordChange>(_onPasswordChanged);
    on<LoginEventOnLogin>(_onLogin);
    on<LoginEventOnPasswordVisibleChange>(_onPasswordVisibleChanged);
  }

  FutureOr<void> _onPhoneNumberChanged(
    LoginEventOnPhoneNumberChange event,
    Emitter<LoginState> emit,
  ) {
    emit(state.copyWith(phoneNumberAuth: PhoneNumberAuth(event.phoneNumber)));
  }

  FutureOr<void> _onPasswordChanged(
    LoginEventOnPasswordChange event,
    Emitter<LoginState> emit,
  ) {
    emit(state.copyWith(passwordAuth: PasswordAuth(event.password)));
  }

  FutureOr<void> _onLogin(
    LoginEventOnLogin event,
    Emitter<LoginState> emit,
  ) async {
    try {
      emit(state.copyWith(status: const Status.loading()));
      if (state.phoneNumberAuth?.isValid() != true ||
          state.passwordAuth?.isValid() != true) {
        return;
      }

      final res = await authRepository.login(
        state.phoneNumberAuth!,
        state.passwordAuth!,
      );
      res.fold(
        (l) => throw l,
        (r) => emit(
          state.copyWith(
            status: Status.success(
              value: r,
            ),
          ),
        ),
      );
    } catch (e, trace) {
      printLog(this, message: e, error: e, trace: trace);
      emit(state.copyWith(status: Status.failure(value: e)));
    } finally {
      emit(state.copyWith(status: const Status.idle()));
    }
  }

  FutureOr<void> _onPasswordVisibleChanged(
    LoginEventOnPasswordVisibleChange event,
    Emitter<LoginState> emit,
  ) {
    emit(state.copyWith(passwordVisible: !state.passwordVisible));
  }
}
