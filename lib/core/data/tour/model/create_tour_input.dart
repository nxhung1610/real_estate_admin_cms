import 'package:real_estate_admin_cms/core/data_source/grpc/tour/tour.pb.dart';

import '../enum/tour_type.dart';

class CreateTourInput {
  final int reId;
  final TourType type;
  final String extraData;
  final DateTime dateTime;

  CreateTourInput({
    required this.reId,
    required this.type,
    required this.extraData,
    required this.dateTime,
  });

  CreateTourRequest toDto() {
    return CreateTourRequest(
      reId: reId,
      date: dateTime.toUtc().toIso8601String(),
      extraData: extraData,
      type: type.value,
    );
  }
}
