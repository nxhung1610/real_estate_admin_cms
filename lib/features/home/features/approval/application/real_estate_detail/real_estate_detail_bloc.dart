import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_admin_cms/core/data/estate/model/real_estate.dart';
import 'package:real_estate_admin_cms/core/data/estate/real_estate_repository.dart';
import 'package:real_estate_admin_cms/features/common/model/status.dart';
import 'package:real_estate_admin_cms/utils/logger/logger.dart';

part 'real_estate_detail_bloc.freezed.dart';
part 'real_estate_detail_event.dart';
part 'real_estate_detail_state.dart';

@injectable
class RealEstateDetailBloc
    extends Bloc<RealEstateDetailEvent, RealEstateDetailState> {
  final RealEstateRepository realEstateRepository;

  RealEstateDetailBloc(
    @factoryParam String id,
    this.realEstateRepository,
  ) : super(RealEstateDetailState(
          id: id,
        )) {
    on<RealEstateDetailEventOnStarted>(_onStarted);
    on<RealEstateDetailEventOnDelete>(_onDelete);
  }

  FutureOr<void> _onDelete(
    RealEstateDetailEventOnDelete event,
    Emitter<RealEstateDetailState> emit,
  ) async {
    try {
      if (state.estate == null) return;
      emit(state.copyWith(status: const Status.loading()));
      final result = await realEstateRepository.deleteRealEstate(
        state.estate!.id.toString(),
      );
      result.fold(
        (l) => throw l,
        (r) => emit(
          state.copyWith(
            status: const Status.success(
              value: RealEstateDetailSuccess.deleteRoom(),
            ),
          ),
        ),
      );
    } catch (e, trace) {
      printLog(this, message: e, error: e, trace: trace);
      emit(state.copyWith(status: Status.failure(value: e)));
    } finally {
      emit(state.copyWith(status: const Status.idle()));
    }
  }

  FutureOr<void> _onStarted(
    RealEstateDetailEventOnStarted event,
    Emitter<RealEstateDetailState> emit,
  ) async {
    try {
      final estate = await realEstateRepository.detailEstate(state.id);
      estate.fold(
        (l) => throw l,
        (r) {
          emit(
            state.copyWith(estate: r),
          );
        },
      );
    } catch (e, trace) {
      printLog(this, message: e, error: e, trace: trace);
    } finally {
      emit(state.copyWith(isShimmer: false));
    }
  }
}
