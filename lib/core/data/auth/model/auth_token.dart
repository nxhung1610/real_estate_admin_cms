import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:real_estate_admin_cms/core/data_source/network/auth/dto/response_token_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_token.freezed.dart';
part 'auth_token.g.dart';

@freezed
class AuthToken with _$AuthToken {
  const factory AuthToken({
    String? token,
    DateTime? created,
    int? expiry,
  }) = _AuthToken;

  factory AuthToken.fromJson(Map<String, dynamic> json) =>
      _$AuthTokenFromJson(json);

  factory AuthToken.fromDto(ResponseTokenDto dto) {
    return AuthToken(
      created: dto.created,
      expiry: dto.expiry,
      token: dto.token,
    );
  }
}
