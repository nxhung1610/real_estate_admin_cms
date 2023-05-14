import 'package:real_estate_admin_cms/core/data/file/model/app_image.dart';
import 'image_request.dart';
import 'image_response.dart';

class ImageDtoMapper {
  const ImageDtoMapper._();
  static AppImage fromResponse(ImageResponse response) {
    return AppImage(
      id: response.id,
      height: response.height,
      omitempty: response.omitempty,
      url: response.url,
      width: response.width,
    );
  }

  static ImageRequest fromModel(AppImage image) {
    return ImageRequest(
      id: image.id,
      height: image.height,
      omitempty: image.omitempty,
      url: image.url,
      width: image.width,
    );
  }
}
