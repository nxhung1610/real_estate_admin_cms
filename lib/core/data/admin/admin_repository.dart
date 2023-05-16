import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_admin_cms/core/data/admin/admin_failure.dart';
import 'package:real_estate_admin_cms/core/data/admin/i_admin_repository.dart';
import 'package:real_estate_admin_cms/core/data/auth/model/user.dart';
import 'package:real_estate_admin_cms/core/data/common/i_failure_repository.dart';
import 'package:real_estate_admin_cms/core/data/common/repo/repository_action_mixin.dart';
import 'package:real_estate_admin_cms/core/data/tour/i_tour_repository.dart';
import 'package:real_estate_admin_cms/core/data_source/grpc/admin/admin.pb.dart';
import 'package:real_estate_admin_cms/core/data_source/grpc/admin/service.pbgrpc.dart';
import 'package:real_estate_admin_cms/core/data_source/grpc/grpc_module.dart';
import 'package:real_estate_admin_cms/core/data_source/network/admin/i_admin_datasource.dart';
import 'package:real_estate_admin_cms/core/data_source/network/auth/dto/info/user_dto/user_dto.dart';
import 'package:real_estate_admin_cms/core/data_source/network/tour/dto/assign_staff_tour_request.dart';
import 'package:real_estate_admin_cms/core/data_source/network/tour/i_tour_datasource.dart';
import 'package:real_estate_admin_cms/utils/logger/logger.dart';

import '../../data_source/network/tour/dto/reject_tour_request.dart';

@LazySingleton(as: IAdminRepository)
class AdminRepository
    with RepositoryActionMixin<AdminFailure>
    implements IAdminRepository {
  final AdminServiceClient adminServiceClient;
  final IAdminDataSource adminDataSource;
  final ITourDataSource dataSource;
  AdminRepository(
    @Named(GrpcModuleKeys.gRpcAdminService) this.adminServiceClient,
    this.dataSource,
    this.adminDataSource,
  );

  @override
  Future<OutputRepository<Unit>> assignStaffTour(
    String id,
    String staffId,
  ) async {
    try {
      await invokeWithoutData(
          action: dataSource.assignStaffForTour(
        AssignStaffTourRRequest(
          staffId: int.tryParse(staffId),
          tourId: int.tryParse(id),
        ),
      ));

      return right(unit);
    } on Exception catch (e, trace) {
      return left(handleException(e, trace));
    }
  }

  @override
  Future<OutputRepository<Unit>> rejectTour(String id, String reason) async {
    try {
      await invokeWithoutData(
        action: dataSource.rejectTour(
          RejectTourRRequest(
            tourId: int.tryParse(id),
            reason: reason,
          ),
        ),
      );
      return right(unit);
    } on Exception catch (e, trace) {
      return left(handleException(e, trace));
    }
  }

  @override
  Future<OutputRepository<List<User>>> getStaffs({String? id}) async {
    try {
      final res = await invokeWithData(action: adminDataSource.getStaffs());
      return right(
        res
            .map(
              (e) => e.toModel(),
            )
            .toList(),
      );
    } on Exception catch (e, trace) {
      return left(handleException(e, trace));
    }
  }

  @override
  Future<OutputRepository<User>> getStaffById({String? id}) async {
    try {
      final res = await adminServiceClient.getStaffById(
        GetStaffByIdRequest(
          staffId: id != null ? int.tryParse(id) : null,
        ),
      );
      return right(User.fromDto(res.data));
    } on Exception catch (e, trace) {
      return left(handleException(e, trace));
    }
  }
}
