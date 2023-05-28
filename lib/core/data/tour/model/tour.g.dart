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
      extraData: json['extra_data'] as String?,
      staff: json['staff'] == null
          ? null
          : User.fromJson(json['staff'] as Map<String, dynamic>),
      status: $enumDecode(_$TourStatusEnumMap, json['status']),
      realEstate:
          RealEstate.fromJson(json['real_estate'] as Map<String, dynamic>),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TourToJson(_$_Tour instance) => <String, dynamic>{
      'id': instance.id,
      'date': instance.date?.toIso8601String(),
      'type': _$TourTypeEnumMap[instance.type]!,
      'extra_data': instance.extraData,
      'staff': instance.staff?.toJson(),
      'status': _$TourStatusEnumMap[instance.status]!,
      'real_estate': instance.realEstate.toJson(),
      'user': instance.user.toJson(),
    };

const _$TourTypeEnumMap = {
  TourType.virtual: 'virtual',
  TourType.inPerson: 'in_person',
};

const _$TourStatusEnumMap = {
  TourStatus.waiting: 1,
  TourStatus.processing: 3,
  TourStatus.approved: 5,
  TourStatus.rejected: 6,
};
