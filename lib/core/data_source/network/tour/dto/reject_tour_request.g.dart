// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reject_tour_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RejectTourRequest _$$_RejectTourRequestFromJson(Map<String, dynamic> json) =>
    _$_RejectTourRequest(
      tourId: json['tour_id'] as int?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$$_RejectTourRequestToJson(
        _$_RejectTourRequest instance) =>
    <String, dynamic>{
      'tour_id': instance.tourId,
      'reason': instance.reason,
    };
