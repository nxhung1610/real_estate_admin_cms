import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:real_estate_admin_cms/assets/assets.gen.dart';
import 'package:real_estate_admin_cms/languages/generated/l10n.dart';

part 'amenity.freezed.dart';
part 'amenity.g.dart';

@freezed
class Amenity with _$Amenity {
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
const factory Amenity({
    required int id,
    required String name,
  }) = _Amenity;


factory Amenity.fromJson(Map<String, dynamic> json) =>
_$AmenityFromJson(json);
}

extension AmenityExt on Amenity {
  Widget? icon({
    Color? color,
    double? width,
    double? height,
  }) {
    switch (id) {
      case 1:
        return Assets.icons.icPool
            .svg(color: color, width: width, height: height);
      case 2:
        return Assets.icons.icSpa
            .svg(color: color, width: width, height: height);
      case 3:
        return Assets.icons.icBar
            .svg(color: color, width: width, height: height);
      case 4:
        return Assets.icons.icScenery
            .svg(color: color, width: width, height: height);
      case 5:
        return Assets.icons.icElevator
            .svg(color: color, width: width, height: height);
      case 6:
        return Assets.icons.icGarage
            .svg(color: color, width: width, height: height);
      case 7:
        return Assets.icons.icWindy
            .svg(color: color, width: width, height: height);
      default:
        break;
    }
    return null;
  }

  String? title(BuildContext context) {
    final s = S.of(context);
    switch (id) {
      case 1:
        return s.pool;
      case 2:
        return s.spa;
      case 3:
        return s.bar;
      case 4:
        return s.view;
      case 5:
        return s.elevator;
      case 6:
        return s.garage;
      case 7:
        return s.air_conditioning;
      default:
        break;
    }
    return null;
  }
}
