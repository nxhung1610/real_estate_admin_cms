import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_admin_cms/core/data_source/network/auth/dto/info/user_dto/user_dto.dart';
import 'package:real_estate_admin_cms/utils/.utils.dart';

part 'tour_response.freezed.dart';
part 'tour_response.g.dart';

@freezedApiResponse
class TourResponse with _$TourResponse {
  factory TourResponse({
    required int id,
    @DateTimeOrNull() DateTime? date,
    required String type,
    @JsonKey(name: "extra_data") String? extraData,
    UserDto? staff,
    required int status,
    @JsonKey(name: "re_id") required int reId,
    @JsonKey(name: "user_id") required int userId,
  }) = _TourResponse;

  factory TourResponse.fromJson(Map<String, dynamic> json) =>
      _$TourResponseFromJson(json);
}
