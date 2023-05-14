import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_admin_cms/utils/.utils.dart';

part 'image_request.freezed.dart';
part 'image_request.g.dart';

@freezedApiRequest
class ImageRequest with _$ImageRequest {
  factory ImageRequest({
    int? id,
    String? url,
    int? width,
    int? height,
    @JsonKey(name: 'cloud_name') String? cloudName,
    String? extension,
    int? omitempty,
  }) = _ImageRequest;
}
