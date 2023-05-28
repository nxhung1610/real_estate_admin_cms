import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_admin_cms/core/data/file/model/app_image.dart';
import 'package:real_estate_admin_cms/core/data_source/grpc/shared_proto/response.pb.dart';

import 'amenity.dart';
import 'real_estate_status.dart';
import 'real_estate_type.dart';

part 'real_estate.freezed.dart';
part 'real_estate.g.dart';

@freezed
class RealEstate with _$RealEstate {
  const RealEstate._();
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)

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

  factory RealEstate.fromJson(Map<String, dynamic> json) =>
      _$RealEstateFromJson(json);

  static RealEstate fromDto(ARealEstate dto){
    throw "haha";
    return RealEstate(id: dto.id, price: dto.price, name: dto.name,
    );
  }

}
