// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatusIdle _$$StatusIdleFromJson(Map<String, dynamic> json) => _$StatusIdle(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StatusIdleToJson(_$StatusIdle instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$StatusSuccess _$$StatusSuccessFromJson(Map<String, dynamic> json) =>
    _$StatusSuccess(
      value: json['value'],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StatusSuccessToJson(_$StatusSuccess instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$StatusLoading _$$StatusLoadingFromJson(Map<String, dynamic> json) =>
    _$StatusLoading(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StatusLoadingToJson(_$StatusLoading instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$StatusFailure _$$StatusFailureFromJson(Map<String, dynamic> json) =>
    _$StatusFailure(
      value: json['value'],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StatusFailureToJson(_$StatusFailure instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };
