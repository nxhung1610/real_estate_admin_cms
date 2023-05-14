import '../common/i_failure_repository.dart';
import 'model/real_estate.dart';

abstract class IRealEstateRepository {
  Future<OutputRepository<RealEstate>> detailEstate(String id);
}
