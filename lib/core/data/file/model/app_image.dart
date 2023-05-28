import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_image.freezed.dart';
part 'app_image.g.dart';

@freezed
class AppImage with _$AppImage {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AppImage({
    int? id,
    String? url,
    int? width,
    int? height,
    String? cloudName,
    String? extension,
    int? omitempty,
  }) = _AppImage;

  factory AppImage.fromJson(Map<String, dynamic> json) =>
      _$AppImageFromJson(json);
}