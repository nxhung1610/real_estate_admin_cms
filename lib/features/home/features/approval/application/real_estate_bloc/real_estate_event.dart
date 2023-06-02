part of 'real_estate_bloc.dart';

@freezedBlocEvent
class RealEstateEvent with _$RealEstateEvent {
  const factory RealEstateEvent.onStarted() = RealEstateStarted;

  const factory RealEstateEvent.onFetch({
    @Default(1) int page,
    @Default(15) int size,
    TourStatus? status,
    int? staffId,
  }) = RealEstateEventOnFetch;

  const factory RealEstateEvent.onApproved(int tourId, int staffId) =
      RealEstateEventApproved;

  const factory RealEstateEvent.onReject(int tourId, String reason) =
      RealEstateEventOnReject;

  const factory RealEstateEvent.onKeywordChanged(String? keyword) =
      RealEstateEventKeywordChanged;

  const factory RealEstateEvent.onStatusChanged(TourStatus? status) =
      RealEstateEventStatusChanged;
}
