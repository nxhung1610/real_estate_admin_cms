import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_admin_cms/core/data/file/model/app_image.dart';

import 'amenity.dart';
import 'real_estate_status.dart';
import 'real_estate_type.dart';

part 'real_estate.freezed.dart';

@freezed
class RealEstate with _$RealEstate {
  factory RealEstate({
    required int id,
    RealEstateStatus? status,
    DateTime? createdAt,
    DateTime? updatedAt,
    RealEstateType? realEstateType,
    String? provinceId,
    String? districtId,
    String? wardId,
    String? address,
    double? latitude,
    double? longitude,
    required num price,
    int? ownerId,
    int? floors,
    double? area,
    int? noBedrooms,
    int? noWc,
    String? houseFacing,
    String? balconyFacing,
    String? reason,
    String? builtAt,
    String? documents,
    String? interiors,
    List<Amenity>? amenities,
    List<AppImage>? images,
    required String name,
  }) = _RealEstate;
}
