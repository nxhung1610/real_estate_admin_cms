import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_admin_cms/core/data_source/grpc/shared_proto/response.pb.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  User._();

  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  factory User({
    required int id,
    int? status,
    DateTime? createdAt,
    DateTime? updatedAt,
    required String phone,
    String? lastName,
    String? firstName,
    String? role,
    String? identityNumber,
    String? avatarUrl,
  }) = _User;

  String get fullName => '$firstName $lastName';

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @unfreezed
  factory User.fromDto(AUser dto) {
    return User(
      id: dto.id,
      phone: dto.phone,
      lastName: dto.lastName,
      firstName: dto.firstName,
      role: dto.role,
      avatarUrl: dto.avatarUrl,
    );
  }
}
