import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_admin_cms/core/data/common/network/freezed_annotation.dart';
import 'package:real_estate_admin_cms/core/data/estate/params/real_estate_creation_ouput/real_estate_creation_ouput.dart';

part 'real_estate_creation_response.freezed.dart';
part 'real_estate_creation_response.g.dart';

@freezedResponse
class RealEstateCreationResponse with _$RealEstateCreationResponse {
  factory RealEstateCreationResponse({
    String? hash,
  }) = _RealEstateCreationResponse;

  factory RealEstateCreationResponse.fromJson(Map<String, dynamic> json) =>
      _$RealEstateCreationResponseFromJson(json);
}

extension RealEstateCreationResponseMapper on RealEstateCreationResponse {
  RealEstateCreationOuput toModel() {
    return RealEstateCreationOuput(hash: hash);
  }
}
