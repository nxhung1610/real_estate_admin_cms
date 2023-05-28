import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_admin_cms/core/data/common/network/freezed_annotation.dart';
import 'package:real_estate_admin_cms/core/data/estate/model/real_estate_type.dart';

part 'real_estate_type_response.freezed.dart';
part 'real_estate_type_response.g.dart';

@freezedResponse
class RealEstateTypeResponse with _$RealEstateTypeResponse {
  factory RealEstateTypeResponse({
    required int id,
    required String name,
  }) = _RealEstateTypeResponse;

  factory RealEstateTypeResponse.fromJson(Map<String, dynamic> json) =>
      _$RealEstateTypeResponseFromJson(json);
}

extension RealEstateTypeResponseMapper on RealEstateTypeResponse {
  RealEstateType toModel() {
    return RealEstateType(
      id: id,
      name: name,
    );
  }
}
