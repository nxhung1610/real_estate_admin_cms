part of 'real_estate_bloc.dart';

@freezedBlocState
class RealEstateState with _$RealEstateState {
  const factory RealEstateState({
    @Default(false) bool shimmer,
    @JsonKey(includeToJson: false, includeFromJson: false)
    @Default([])
    List<RealEstate> realEstates,
    @Default(1) int page,
    @JsonKey(includeToJson: false, includeFromJson: false)
    @Default(0)
    int totalPage,
    @JsonKey(includeToJson: false, includeFromJson: false)
    @Default(Status.idle())
    Status status,
    // Filter
    @JsonKey(includeToJson: false, includeFromJson: false) String? keyword,
    @JsonKey(includeToJson: false, includeFromJson: false)
    TourStatus? tourStatus,
  }) = _RealEstateState;

  factory RealEstateState.fromJson(Map<String, dynamic> json) =>
      _$RealEstateStateFromJson(json);
}
