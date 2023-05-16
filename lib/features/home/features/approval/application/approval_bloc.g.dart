// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'approval_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApprovalState _$$_ApprovalStateFromJson(Map<String, dynamic> json) =>
    _$_ApprovalState(
      shimmer: json['shimmer'] as bool? ?? false,
      tours: (json['tours'] as List<dynamic>?)
              ?.map((e) => Tour.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      page: json['page'] as int? ?? 0,
      status: json['status'] == null
          ? const Status.idle()
          : Status.fromJson(json['status'] as Map<String, dynamic>),
      staffs: (json['staffs'] as List<dynamic>?)
              ?.map((e) => User.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      staffFilter: json['staffFilter'] == null
          ? null
          : User.fromJson(json['staffFilter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ApprovalStateToJson(_$_ApprovalState instance) =>
    <String, dynamic>{
      'shimmer': instance.shimmer,
      'tours': instance.tours,
      'page': instance.page,
      'status': instance.status,
      'staffs': instance.staffs,
      'staffFilter': instance.staffFilter,
    };
