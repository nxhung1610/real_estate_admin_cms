import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_admin_cms/core/data/admin/admin_failure.dart';
import 'package:real_estate_admin_cms/core/data/admin/i_admin_repository.dart';
import 'package:real_estate_admin_cms/core/data/auth/model/user.dart';
import 'package:real_estate_admin_cms/core/data/common/i_failure_repository.dart';
import 'package:real_estate_admin_cms/core/data/common/repo/repository_action_mixin.dart';
import 'package:real_estate_admin_cms/core/data_source/grpc/admin/admin.pb.dart';
import 'package:real_estate_admin_cms/core/data_source/grpc/admin/service.pbgrpc.dart';
import 'package:real_estate_admin_cms/core/data_source/grpc/grpc_module.dart';

@LazySingleton(as: IAdminRepository)
class AdminRepository
    with RepositoryActionMixin<AdminFailure>
    implements IAdminRepository {
  final AdminServiceClient adminServiceClient;

  AdminRepository(
    @Named(GrpcModuleKeys.gRpcAdminService) this.adminServiceClient,
  );

  @override
  Future<OutputRepository<User>> getStaffById(String id) async {
    try {
      final res = await adminServiceClient.getStaffById(
        GetStaffByIdRequest(
          staffId: int.tryParse(id),
        ),
      );
      return right(User.fromDto(res.data));
    } on Exception catch (e, trace) {
      return left(handleException(e, trace));
    }
  }
}
