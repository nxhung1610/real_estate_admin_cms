// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Tour _$$_TourFromJson(Map<String, dynamic> json) => _$_Tour(
      id: json['id'] as int,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      type: $enumDecode(_$TourTypeEnumMap, json['type']),
      extraData: json['extraData'] as String?,
      staff: json['staff'] == null
          ? null
          : User.fromJson(json['staff'] as Map<String, dynamic>),
      status: $enumDecode(_$TourStatusEnumMap, json['status']),
      reId: json['reId'] as int,
      userId: json['userId'] as int,
    );

Map<String, dynamic> _$$_TourToJson(_$_Tour instance) => <String, dynamic>{
      'id': instance.id,
      'date': instance.date?.toIso8601String(),
      'type': _$TourTypeEnumMap[instance.type]!,
      'extraData': instance.extraData,
      'staff': instance.staff,
      'status': _$TourStatusEnumMap[instance.status]!,
      'reId': instance.reId,
      'userId': instance.userId,
    };

const _$TourTypeEnumMap = {
  TourType.virtual: 'virtual',
  TourType.inPerson: 'inPerson',
};

const _$TourStatusEnumMap = {
  TourStatus.waiting: 'waiting',
  TourStatus.processing: 'processing',
  TourStatus.approved: 'approved',
  TourStatus.rejected: 'rejected',
};
