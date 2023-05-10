// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthSession _$$_AuthSessionFromJson(Map<String, dynamic> json) =>
    _$_AuthSession(
      refreshToken: json['refreshToken'] == null
          ? null
          : AuthToken.fromJson(json['refreshToken'] as Map<String, dynamic>),
      token: json['token'] == null
          ? null
          : AuthToken.fromJson(json['token'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AuthSessionToJson(_$_AuthSession instance) =>
    <String, dynamic>{
      'refreshToken': instance.refreshToken,
      'token': instance.token,
    };
