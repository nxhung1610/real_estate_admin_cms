// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'real_estate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RealEstate _$$_RealEstateFromJson(Map<String, dynamic> json) =>
    _$_RealEstate(
      id: json['id'] as int,
      status: $enumDecodeNullable(_$RealEstateStatusEnumMap, json['status']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      realEstateType: json['real_estate_type'] == null
          ? null
          : RealEstateType.fromJson(
              json['real_estate_type'] as Map<String, dynamic>),
      provinceId: json['province_id'] as String?,
      districtId: json['district_id'] as String?,
      wardId: json['ward_id'] as String?,
      address: json['address'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      price: json['price'] as num,
      ownerId: json['owner_id'] as int?,
      floors: json['floors'] as int?,
      area: (json['area'] as num?)?.toDouble(),
      noBedrooms: json['no_bedrooms'] as int?,
      noWc: json['no_wc'] as int?,
      houseFacing: json['house_facing'] as String?,
      balconyFacing: json['balcony_facing'] as String?,
      reason: json['reason'] as String?,
      builtAt: json['built_at'] as String?,
      documents: json['documents'] as String?,
      interiors: json['interiors'] as String?,
      amenities: (json['amenities'] as List<dynamic>?)
          ?.map((e) => Amenity.fromJson(e as Map<String, dynamic>))
          .toList(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => AppImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_RealEstateToJson(_$_RealEstate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': _$RealEstateStatusEnumMap[instance.status],
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'real_estate_type': instance.realEstateType?.toJson(),
      'province_id': instance.provinceId,
      'district_id': instance.districtId,
      'ward_id': instance.wardId,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'price': instance.price,
      'owner_id': instance.ownerId,
      'floors': instance.floors,
      'area': instance.area,
      'no_bedrooms': instance.noBedrooms,
      'no_wc': instance.noWc,
      'house_facing': instance.houseFacing,
      'balcony_facing': instance.balconyFacing,
      'reason': instance.reason,
      'built_at': instance.builtAt,
      'documents': instance.documents,
      'interiors': instance.interiors,
      'amenities': instance.amenities?.map((e) => e.toJson()).toList(),
      'images': instance.images?.map((e) => e.toJson()).toList(),
      'name': instance.name,
    };

const _$RealEstateStatusEnumMap = {
  RealEstateStatus.normal: 1,
  RealEstateStatus.delete: 2,
  RealEstateStatus.processing: 3,
  RealEstateStatus.failed: 4,
  RealEstateStatus.approved: 5,
};
