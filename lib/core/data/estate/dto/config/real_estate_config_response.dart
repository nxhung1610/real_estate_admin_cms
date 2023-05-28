import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_admin_cms/core/data/common/network/freezed_annotation.dart';
import 'package:real_estate_admin_cms/core/data/estate/dto/amenity_response.dart';
import 'package:real_estate_admin_cms/core/data/estate/dto/real_estate_post_type_response.dart';
import 'package:real_estate_admin_cms/core/data/estate/dto/real_estate_type_response.dart';
import 'package:real_estate_admin_cms/core/data/estate/model/real_estate_config.dart';

part 'real_estate_config_response.freezed.dart';
part 'real_estate_config_response.g.dart';

@freezedResponse
class RealEstateConfigResponse with _$RealEstateConfigResponse {
  factory RealEstateConfigResponse({
    List<AmenityResponse>? amenities,
    @JsonKey(name: 'real_estate_types')
        List<RealEstateTypeResponse>? realEstateTypes,
    @JsonKey(name: 'real_estate_post_types')
        List<RealEstatePostTypeResponse>? realEstatePostTypes,
  }) = _RealEstateConfigResponse;

  factory RealEstateConfigResponse.fromJson(Map<String, dynamic> json) =>
      _$RealEstateConfigResponseFromJson(json);
}

extension RealEstateConfigResponseMapper on RealEstateConfigResponse {
  RealEstateConfig toModel() {
    return RealEstateConfig(
      amenities: amenities?.map((e) => e.toModel()).toList(),
      realEstatePostTypes:
          realEstatePostTypes?.map((e) => e.toModel()).toList(),
      realEstateTypes: realEstateTypes?.map((e) => e.toModel()).toList(),
    );
  }
}
