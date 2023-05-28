import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:real_estate_admin_cms/languages/generated/l10n.dart';

part 'real_estate_type.freezed.dart';
part 'real_estate_type.g.dart';

@freezed
class RealEstateType with _$RealEstateType {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
  const factory RealEstateType({
    required int id,
    required String name,
  }) = _RealEstateType;

  factory RealEstateType.fromJson(Map<String, dynamic> json) =>
      _$RealEstateTypeFromJson(json);
}

extension RealEstateTypeEx on RealEstateType {
  String? title(BuildContext context) {
    final s = S.of(context);
    switch (name) {
      case 'apartment':
        return s.apartment;
      case 'house':
        return s.house;
      case 'villa':
        return s.villa;
      case 'townhouse':
        return s.townhouse;
      case 'ground':
        return s.ground;
      case 'land':
        return s.land;
      case 'resort':
        return s.resort;
      case 'condotel':
        return s.condotel;
      case 'warehouse':
        return s.warehouse;
      case 'other':
        return s.other;
      default:
    }
    return null;
  }
}
