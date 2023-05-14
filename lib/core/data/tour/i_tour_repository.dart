import 'package:dartz/dartz.dart';
import 'package:real_estate_admin_cms/core/data/common/i_failure_repository.dart';

import 'model/create_tour_input.dart';
import 'model/filter_admin_tour.dart';
import 'model/filter_tour.dart';
import 'model/tour.dart';

abstract class ITourRepository {
  Future<OutputRepository<Unit>> createTour(CreateTourInput input);
  Future<OutputRepository<List<Tour>>> tours(FilterTour filter);
  Future<OutputRepository<List<Tour>>> toursAdmin(FilterAdminTour filter);
  Stream<OutputRepository<Tour>> streamTour();
}
