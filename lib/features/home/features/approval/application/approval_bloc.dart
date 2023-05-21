import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_admin_cms/core/data/admin/i_admin_repository.dart';
import 'package:real_estate_admin_cms/core/data/auth/model/user.dart';
import 'package:real_estate_admin_cms/core/data/estate/i_real_estate_repository.dart';
import 'package:real_estate_admin_cms/core/data/tour/enum/contact_tour_type.dart';
import 'package:real_estate_admin_cms/core/data/tour/enum/tour_status.dart';
import 'package:real_estate_admin_cms/core/data/tour/enum/tour_type.dart';
import 'package:real_estate_admin_cms/core/data/tour/i_tour_repository.dart';
import 'package:real_estate_admin_cms/core/data/tour/model/filter_admin_tour.dart';
import 'package:real_estate_admin_cms/core/data/tour/model/tour.dart';
import 'package:real_estate_admin_cms/features/common/application/I_loading_state.dart';
import 'package:real_estate_admin_cms/features/common/model/status.dart';
import 'package:real_estate_admin_cms/utils/.utils.dart';
import 'package:real_estate_admin_cms/utils/logger/logger.dart';

part 'approval_state.dart';
part 'approval_event.dart';
part 'approval_bloc.freezed.dart';
part 'approval_bloc.g.dart';

@injectable
class ApprovalBloc extends HydratedBloc<ApprovalEvent, ApprovalState> {
  final ITourRepository tourRepository;
  final IAdminRepository adminRepository;
  final IRealEstateRepository realEstateRepository;
  ApprovalBloc(
    this.tourRepository,
    this.adminRepository,
    this.realEstateRepository,
  ) : super(const ApprovalState()) {
    on<ApprovalEventOnStarted>(_onStarted);
    on<ApprovalEventOnFetch>(_onFetch);
    on<ApprovalEventOnFetchStaffs>(_onFetchStaffs);
    on<ApprovalEventOnAssignStaff>(_onAssignStaff);
    on<ApprovalEventOnStaffFilterChange>(_onStaffFilterChanged);
    on<ApprovalEventOnContactTourStatusChange>(_onTourStatusChange);
    on<ApprovalEventOnReject>(_onReject);
    // on<ApprovalEventOnTourTypeChange>(_onTourTypeChange);
  }

  FutureOr<void> _onStarted(
    ApprovalEventOnStarted event,
    Emitter<ApprovalState> emit,
  ) async {
    try {
      add(const ApprovalEvent.onFetch());
      add(const ApprovalEvent.onFetchStaffs());
    } catch (e, trace) {
      printLog(this, message: e, error: e, trace: trace);
    } finally {
      emit(state.copyWith(shimmer: false));
    }
  }

  FutureOr<void> _onFetch(
    ApprovalEventOnFetch event,
    Emitter<ApprovalState> emit,
  ) async {
    try {
      emit(state.copyWith(shimmer: true));
      final tours = await tourRepository.toursAdmin(FilterAdminTour(
        page: event.page,
        size: event.size,
        status: event.status ?? state.tourStatus,
        staffId: event.staffId ?? state.staffFilter?.id,
      ));

      tours.fold(
        (l) => throw l,
        (r) {
          emit(
            state.copyWith(
              tours: r,
              status: const Status.success(),
              page: event.page,
            ),
          );
        },
      );
    } catch (e, trace) {
      printLog(this, message: e, error: e, trace: trace);
      emit(
        state.copyWith(
          status: Status.failure(value: e),
        ),
      );
    } finally {
      emit(
        state.copyWith(
          status: const Status.idle(),
          shimmer: false,
          // newTours: null,
        ),
      );
    }
  }

  FutureOr<void> _onAssignStaff(
    ApprovalEventOnAssignStaff event,
    Emitter<ApprovalState> emit,
  ) async {
    try {
      emit(state.copyWith(status: const Status.loading()));
      final data = await adminRepository.assignStaffTour(
        event.tourId.toString(),
        event.staffId.toString(),
      );
      data.fold(
        (l) => throw l,
        (r) => emit(
          state.copyWith(
            status: const Status.success(),
          ),
        ),
      );
      add(const ApprovalEvent.onFetch());
    } catch (e, trace) {
      printLog(e, message: e, trace: trace);
      emit(state.copyWith(status: const Status.failure()));
    } finally {
      emit(state.copyWith(status: const Status.idle()));
    }
  }

  @override
  ApprovalState? fromJson(Map<String, dynamic> json) {
    return ApprovalState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(ApprovalState state) {
    return state.toJson();
  }

  FutureOr<void> _onStaffFilterChanged(
    ApprovalEventOnStaffFilterChange event,
    Emitter<ApprovalState> emit,
  ) {
    emit(state.copyWith(staffFilter: event.staff));
    add(const ApprovalEvent.onFetch());
  }

  FutureOr<void> _onFetchStaffs(
    ApprovalEventOnFetchStaffs event,
    Emitter<ApprovalState> emit,
  ) async {
    try {
      final staffs = await adminRepository.getStaffs();
      staffs.fold((l) => throw l, (r) => emit(state.copyWith(staffs: r)));
    } catch (e, trace) {
      printLog(e, message: e, trace: trace);
    } finally {}
  }

  FutureOr<void> _onTourStatusChange(
    ApprovalEventOnContactTourStatusChange event,
    Emitter<ApprovalState> emit,
  ) {
    emit(state.copyWith(
      tourStatus: event.tourStatus,
    ));
    add(const ApprovalEvent.onFetch());
  }

  FutureOr<void> _onReject(
    ApprovalEventOnReject event,
    Emitter<ApprovalState> emit,
  ) async {
    try {
      emit(state.copyWith(status: const Status.loading()));
      final data = await adminRepository.rejectTour(
        event.tourId.toString(),
        event.reason.toString(),
      );
      data.fold(
        (l) => throw l,
        (r) => emit(
          state.copyWith(
            status: const Status.success(),
          ),
        ),
      );
      add(const ApprovalEvent.onFetch());
    } catch (e, trace) {
      printLog(e, message: e, trace: trace);
      emit(state.copyWith(status: const Status.failure()));
    } finally {
      emit(state.copyWith(status: const Status.idle()));
    }
  }
}
