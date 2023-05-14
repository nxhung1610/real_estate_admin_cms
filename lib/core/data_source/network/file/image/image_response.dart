import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_admin_cms/utils/.utils.dart';

part 'image_response.freezed.dart';
part 'image_response.g.dart';

@freezedApiResponse
class ImageResponse with _$ImageResponse {
  factory ImageResponse({
    int? id,
    String? url,
    int? width,
    int? height,
    @JsonKey(name: 'cloud_name') String? cloudName,
    String? extension,
    int? omitempty,
  }) = _ImageResponse;
  factory ImageResponse.fromJson(Map<String, dynamic> json) =>
      _$ImageResponseFromJson(json);
}
