import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_admin_cms/core/data/admin/i_admin_repository.dart';
import 'package:real_estate_admin_cms/core/data/auth/model/user.dart';
import 'package:real_estate_admin_cms/utils/freezed/freezed_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_admin_cms/utils/logger/logger.dart';

part 'staff_selected_state.dart';
part 'staff_selected_cubit.freezed.dart';

@injectable
class StaffSelectedCubit extends Cubit<StaffSelectedState> {
  final IAdminRepository adminRepository;
  StaffSelectedCubit(this.adminRepository) : super(const StaffSelectedState());

  Future<void> loadStaffs() async {
    try {
      final staffs = await adminRepository.getStaffs();
      staffs.fold((l) => throw l, (r) => emit(state.copyWith(staffs: r)));
    } catch (e, trace) {
      printLog(e, message: e, trace: trace);
    }
  }
}
