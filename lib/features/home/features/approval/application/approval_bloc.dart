import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_admin_cms/core/data/admin/i_admin_repository.dart';
import 'package:real_estate_admin_cms/core/data/estate/i_real_estate_repository.dart';
import 'package:real_estate_admin_cms/core/data/tour/enum/tour_status.dart';
import 'package:real_estate_admin_cms/core/data/tour/i_tour_repository.dart';
import 'package:real_estate_admin_cms/core/data/tour/model/filter_admin_tour.dart';
import 'package:real_estate_admin_cms/core/data/tour/model/tour.dart';
import 'package:real_estate_admin_cms/features/common/model/status.dart';
import 'package:real_estate_admin_cms/utils/logger/logger.dart';

part 'approval_state.dart';
part 'approval_event.dart';
part 'approval_bloc.freezed.dart';

@injectable
class ApprovalBloc extends Bloc<ApprovalEvent, ApprovalState> {
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
  }

  FutureOr<void> _onStarted(
    ApprovalEventOnStarted event,
    Emitter<ApprovalState> emit,
  ) async {
    try {
      add(const ApprovalEvent.onFetch());
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
      final tours = await tourRepository.toursAdmin(FilterAdminTour(
        page: event.page,
        size: event.size,
        status: event.status?.value,
        staffId: event.staffId,
      ));

      tours.fold(
        (l) => throw l,
        (r) {
          // if (event.page == 0) {
          //   return emit(
          //     state.copyWith(
          //       tours: [],
          //       newTours: r,
          //       canLoadMore: r.isNotEmpty,
          //       page: event.page,
          //       status: const Status.success(),
          //     ),
          //   );
          // }

          // final tourss = List<Tour>.from(state.tours);
          // tourss.addAll(r);
          emit(
            state.copyWith(
              tours: r,
              // newTours: r,
              // canLoadMore: r.isNotEmpty,
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
          // newTours: null,
        ),
      );
    }
  }
}
