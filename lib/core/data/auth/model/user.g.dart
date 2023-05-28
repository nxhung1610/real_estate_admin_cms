// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int,
      status: json['status'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      phone: json['phone'] as String,
      lastName: json['last_name'] as String?,
      firstName: json['first_name'] as String?,
      role: json['role'] as String?,
      identityNumber: json['identity_number'] as String?,
      avatarUrl: json['avatar_url'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'phone': instance.phone,
      'last_name': instance.lastName,
      'first_name': instance.firstName,
      'role': instance.role,
      'identity_number': instance.identityNumber,
      'avatar_url': instance.avatarUrl,
    };
