import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_admin_cms/core/data_source/grpc/tour/tour.pb.dart';
import 'package:real_estate_admin_cms/core/data_source/network/auth/dto/info/user_dto/user_dto.dart';
import 'package:real_estate_admin_cms/core/data_source/network/tour/dto/tour_response.dart';

import '../../auth/model/user.dart';
import '../enum/tour_status.dart';
import '../enum/tour_type.dart';

part 'tour.freezed.dart';

@freezed
class Tour with _$Tour {
  const factory Tour({
    required int id,
    DateTime? date,
    required TourType type,
    String? extraData,
    User? staff,
    required TourStatus status,
    required int reId,
    required int userId,
  }) = _Tour;

  factory Tour.fromDto(TourInfo dto) {
    return Tour(
      id: dto.id,
      staff: User.fromDto(dto.staff),
      date: DateTime.tryParse(dto.date),
      reId: dto.reId,
      status: TourStatus.fromValue(dto.status),
      type: TourType.fromValue(dto.type),
      userId: dto.userId,
      extraData: dto.extraData,
    );
  }

  factory Tour.fromResponse(TourResponse dto) {
    return Tour(
      id: dto.id,
      date: dto.date,
      reId: dto.reId,
      status: TourStatus.fromValue(dto.status),
      type: TourType.fromValue(dto.type),
      userId: dto.userId,
      extraData: dto.extraData,
      staff: dto.staff?.toModel(),
    );
  }
}
