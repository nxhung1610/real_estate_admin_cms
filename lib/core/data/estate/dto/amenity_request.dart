import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_admin_cms/core/data/common/network/freezed_annotation.dart';
import 'package:real_estate_admin_cms/core/data/estate/model/amenity.dart';

part 'amenity_request.freezed.dart';
part 'amenity_request.g.dart';

@freezedRequest
class AmenityRequest with _$AmenityRequest {
  factory AmenityRequest({
    int? id,
    String? name,
  }) = _AmenityRequest;

  factory AmenityRequest.fromModel(Amenity data) {
    return AmenityRequest(
      id: data.id,
      name: data.name,
    );
  }
}
