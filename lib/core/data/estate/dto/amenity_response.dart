import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_admin_cms/core/data/common/network/freezed_annotation.dart';
import 'package:real_estate_admin_cms/core/data/estate/model/amenity.dart';

part 'amenity_response.freezed.dart';
part 'amenity_response.g.dart';

@freezedResponse
class AmenityResponse with _$AmenityResponse {
  factory AmenityResponse({
    required int id,
    required String name,
  }) = _AmenityResponse;

  factory AmenityResponse.fromJson(Map<String, dynamic> json) =>
      _$AmenityResponseFromJson(json);
}

extension AmenityResponseMapper on AmenityResponse {
  Amenity toModel() {
    return Amenity(id: id, name: name);
  }
}
