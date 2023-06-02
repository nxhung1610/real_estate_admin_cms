import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_admin_cms/core/data/admin/i_admin_repository.dart';
import 'package:real_estate_admin_cms/core/data/estate/model/real_estate.dart';
import 'package:real_estate_admin_cms/core/data/estate/params/search/real_estate_filter_input.dart';
import 'package:real_estate_admin_cms/core/data/estate/params/search/real_estate_search_input.dart';
import 'package:real_estate_admin_cms/core/data/estate/real_estate_repository.dart';
import 'package:real_estate_admin_cms/core/data/tour/enum/tour_status.dart';
import 'package:real_estate_admin_cms/features/common/model/status.dart';
import 'package:real_estate_admin_cms/utils/.utils.dart';
import 'package:real_estate_admin_cms/utils/logger/logger.dart';

part 'real_estate_bloc.freezed.dart';
part 'real_estate_bloc.g.dart';
part 'real_estate_event.dart';
part 'real_estate_state.dart';

@injectable
class RealEstateBloc extends HydratedBloc<RealEstateEvent, RealEstateState> {
  final IAdminRepository adminRepository;
  final RealEstateRepository realEstateRepository;

  RealEstateBloc(
    this.adminRepository,
    this.realEstateRepository,
  ) : super(const RealEstateState()) {
    on<RealEstateStarted>(_onStarted);
    on<RealEstateEventOnFetch>(_realEstateEventOnFetchToState);
  }

  FutureOr<void> _onStarted(
    RealEstateStarted event,
    Emitter<RealEstateState> emit,
  ) async {
    try {
      add(const RealEstateEvent.onFetch());
    } catch (e, trace) {
      printLog(this, message: e, error: e, trace: trace);
    } finally {
      emit(state.copyWith(shimmer: false));
    }
  }

  @override
  RealEstateState? fromJson(Map<String, dynamic> json) {
    return RealEstateState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(RealEstateState state) {
    return state.toJson();
  }

  FutureOr<void> _realEstateEventOnFetchToState(
      RealEstateEventOnFetch event, Emitter<RealEstateState> emit) async {
    try {
      emit(state.copyWith(shimmer: true));
      final realEstates = await realEstateRepository.search(
        RealEstateSearchInput(
          keyword: state.keyword,
        ),
        filter: RealEstateFilterInput(
            page: state.page,
            limit: event.size,
            statuses:
                state.tourStatus == null ? null : [state.tourStatus!.value]),
      );

      realEstates.fold(
        (l) => throw l,
        (r) {
          emit(
            state.copyWith(
              realEstates: r.data ?? [],
              totalPage: r.total % event.size == 0
                  ? r.total ~/ event.size
                  : (r.total ~/ event.size) + 1,
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
}
