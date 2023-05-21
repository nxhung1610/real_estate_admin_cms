import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:real_estate_admin_cms/core/data/common/repo/repository_action_mixin.dart';
import 'package:real_estate_admin_cms/core/data/tour/model/tour.dart';

import 'package:real_estate_admin_cms/core/data/tour/model/filter_tour.dart';

import 'package:real_estate_admin_cms/core/data/tour/model/create_tour_input.dart';

import 'package:real_estate_admin_cms/core/data/common/i_failure_repository.dart';

import 'package:dartz/dartz.dart';
import 'package:real_estate_admin_cms/core/data/tour/tour_failure.dart';
import 'package:real_estate_admin_cms/core/data_source/grpc/grpc_module.dart';
import 'package:real_estate_admin_cms/core/data_source/network/tour/dto/tour_response.dart';
import 'package:real_estate_admin_cms/core/data_source/network/tour/i_tour_datasource.dart';
import 'package:real_estate_admin_cms/utils/logger/logger.dart';

import '../../data_source/grpc/core/request.pb.dart';
import '../../data_source/grpc/tour/service.pbgrpc.dart';
import '../common/model/paging_model.dart';
import 'i_tour_repository.dart';
import 'model/filter_admin_tour.dart';

@LazySingleton(as: ITourRepository)
class TourRepository
    with RepositoryActionMixin<TourFailure>
    implements ITourRepository {
  final TourServiceClient tourServiceClient;
  final ITourDataSource tourDataSource;

  TourRepository(
    @Named(GrpcModuleKeys.gRpcTourService) this.tourServiceClient,
    this.tourDataSource,
  );
  @override
  Future<OutputRepository<Unit>> createTour(CreateTourInput input) async {
    try {
      await tourServiceClient.createTour(input.toDto());
      return right(unit);
    } on Exception catch (e, trace) {
      return left(handleException(e, trace));
    }
  }

  @override
  Stream<OutputRepository<Tour>> streamTour() {
    return tourServiceClient.getTourStream(EmptyRequest()).map((event) {
      try {
        return right(Tour.fromDto(event));
      } on Exception catch (e, trace) {
        return left(handleException(e, trace));
      }
    });
  }

  @override
  Future<OutputRepository<List<Tour>>> tours(FilterTour filter) async {
    try {
      final res = await tourServiceClient.listTour(filter.toDto());
      return right(res.data.map(Tour.fromDto).toList());
    } on Exception catch (e, trace) {
      return left(handleException(e, trace));
    }
  }

  @override
  Future<OutputRepository<PagingModel<Tour>>> toursAdmin(
    FilterAdminTour filter,
  ) async {
    try {
      final res = await invokeWithData(
        action: tourDataSource.tourAdmin(
          filter.toDtoRequest(),
        ),
      );
      return right(PagingModel.fromDto(
        res,
        (dto) {
          return Tour.fromResponse(dto);
        },
      ));
    } on Exception catch (e, trace) {
      return left(handleException(e, trace));
    }
  }
}
