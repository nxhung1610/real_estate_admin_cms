// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginState _$$_LoginStateFromJson(Map<String, dynamic> json) =>
    _$_LoginState(
      phoneNumberAuth: json['phoneNumberAuth'] == null
          ? null
          : PhoneNumberAuth.fromJson(
              json['phoneNumberAuth'] as Map<String, dynamic>),
      passwordAuth: json['passwordAuth'] == null
          ? null
          : PasswordAuth.fromJson(json['passwordAuth'] as Map<String, dynamic>),
      status: json['status'] == null
          ? const Status.idle()
          : Status.fromJson(json['status'] as Map<String, dynamic>),
      passwordVisible: json['passwordVisible'] as bool? ?? false,
    );

Map<String, dynamic> _$$_LoginStateToJson(_$_LoginState instance) =>
    <String, dynamic>{
      'phoneNumberAuth': instance.phoneNumberAuth,
      'passwordAuth': instance.passwordAuth,
      'status': instance.status,
      'passwordVisible': instance.passwordVisible,
    };
