// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connectivity_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConnectivityState _$$_ConnectivityStateFromJson(Map<String, dynamic> json) =>
    _$_ConnectivityState(
      status:
          $enumDecodeNullable(_$ConnectivityStatusEnumMap, json['status']) ??
              ConnectivityStatus.none,
    );

Map<String, dynamic> _$$_ConnectivityStateToJson(
        _$_ConnectivityState instance) =>
    <String, dynamic>{
      'status': _$ConnectivityStatusEnumMap[instance.status]!,
    };

const _$ConnectivityStatusEnumMap = {
  ConnectivityStatus.internet: 'internet',
  ConnectivityStatus.none: 'none',
};
