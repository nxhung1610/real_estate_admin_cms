// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthToken _$$_AuthTokenFromJson(Map<String, dynamic> json) => _$_AuthToken(
      token: json['token'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      expiry: json['expiry'] as int?,
    );

Map<String, dynamic> _$$_AuthTokenToJson(_$_AuthToken instance) =>
    <String, dynamic>{
      'token': instance.token,
      'created': instance.created?.toIso8601String(),
      'expiry': instance.expiry,
    };
