import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:real_estate_admin_cms/core/data_source/network/auth/dto/login_response_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'auth_token.dart';

part 'auth_session.freezed.dart';
part 'auth_session.g.dart';

@freezed
class AuthSession with _$AuthSession {
  const factory AuthSession({
    AuthToken? refreshToken,
    AuthToken? token,
  }) = _AuthSession;

  factory AuthSession.fromJson(Map<String, dynamic> json) =>
      _$AuthSessionFromJson(json);

  factory AuthSession.fromDto(LoginResponseDto dto) {
    return AuthSession(
      refreshToken: dto.refreshToken != null
          ? AuthToken.fromDto(dto.refreshToken!)
          : null,
      token: dto.token != null ? AuthToken.fromDto(dto.token!) : null,
    );
  }
}
