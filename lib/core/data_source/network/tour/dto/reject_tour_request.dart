import 'package:freezed_annotation/freezed_annotation.dart';

part 'reject_tour_request.freezed.dart';
part 'reject_tour_request.g.dart';

@freezed
class RejectTourRRequest with _$RejectTourRRequest {
  factory RejectTourRRequest({
    @JsonKey(name: 'tour_id') int? tourId,
    String? reason,
  }) = _RejectTourRequest;

  factory RejectTourRRequest.fromJson(Map<String, dynamic> json) =>
      _$RejectTourRRequestFromJson(json);
}
