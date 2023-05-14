import 'package:injectable/injectable.dart';
import 'package:real_estate_admin_cms/core/data/common/i_failure_repository.dart';
import 'package:real_estate_admin_cms/core/data/estate/i_real_estate_repository.dart';
import 'package:real_estate_admin_cms/core/data/estate/model/real_estate.dart';

@LazySingleton(as: IRealEstateRepository)
class RealEstateRepository implements IRealEstateRepository {
  @override
  Future<OutputRepository<RealEstate>> detailEstate(String id) {
    // TODO: implement detailEstate
    throw UnimplementedError();
  }
}
