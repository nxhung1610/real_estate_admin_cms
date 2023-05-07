import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:real_estate_admin_cms/core/data_source/network/auth/dto/login_response_dto.dart';

import 'auth_token.dart';

class AuthSession extends Equatable {
  final AuthToken? refreshToken;
  final AuthToken? token;

  const AuthSession({this.refreshToken, this.token});

  AuthSession copyWith({
    AuthToken? refreshToken,
    AuthToken? token,
  }) {
    return AuthSession(
      refreshToken: refreshToken ?? this.refreshToken,
      token: token ?? this.token,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [refreshToken, token];

  factory AuthSession.fromDto(LoginResponseDto dto) {
    return AuthSession(
      refreshToken: dto.refreshToken != null
          ? AuthToken.fromDto(dto.refreshToken!)
          : null,
      token: dto.token != null ? AuthToken.fromDto(dto.token!) : null,
    );
  }
}
