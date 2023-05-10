import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_admin_cms/utils/freezed/freezed_annotation.dart';

part 'auth_state.dart';
part 'auth_event.dart';
part 'auth_bloc.freezed.dart';
part 'auth_bloc.g.dart';

@injectable
class AuthBloc extends HydratedBloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.unknown()) {
    on<AuthEventOnAuthentication>(_onAuthen);
    on<AuthEventOnUnAuthentication>(_onUnAuthen);
  }

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    return AuthState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    return state.toJson();
  }

  FutureOr<void> _onAuthen(
    AuthEventOnAuthentication event,
    Emitter<AuthState> emit,
  ) {
    emit(const AuthState.authentication());
  }

  FutureOr<void> _onUnAuthen(
    AuthEventOnUnAuthentication event,
    Emitter<AuthState> emit,
  ) {
    emit(const AuthState.unAuthentication());
  }
}
