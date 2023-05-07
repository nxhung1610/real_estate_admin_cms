import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:real_estate_admin_cms/core/data_source/network/auth/dto/response_token_dto.dart';

class AuthToken extends Equatable {
  final String? token;
  final DateTime? created;
  final int? expiry;

  const AuthToken({this.token, this.created, this.expiry});

  AuthToken copyWith({
    String? token,
    DateTime? created,
    int? expiry,
  }) {
    return AuthToken(
      token: token ?? this.token,
      created: created ?? this.created,
      expiry: expiry ?? this.expiry,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [token, created, expiry];

  factory AuthToken.fromDto(ResponseTokenDto dto) {
    return AuthToken(
      created: dto.created,
      expiry: dto.expiry,
      token: dto.token,
    );
  }
}
