import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_admin_cms/core/data/common/model/paging_model.dart';
import 'package:real_estate_admin_cms/core/data/estate/dto/config/real_estate_config_response.dart';
import 'package:real_estate_admin_cms/core/data/estate/dto/creation/real_estate_creation_request.dart';
import 'package:real_estate_admin_cms/core/data/estate/dto/real_estate_response.dart';
import 'package:real_estate_admin_cms/core/data/estate/dto/search/real_filter_request.dart';
import 'package:real_estate_admin_cms/core/data/estate/dto/search/search_request.dart';
import 'package:real_estate_admin_cms/core/data/estate/model/real_estate.dart';
import 'package:real_estate_admin_cms/core/data/estate/model/real_estate_config.dart';
import 'package:real_estate_admin_cms/core/data/estate/params/real_estate_creation_input/real_estate_creation_input.dart';
import 'package:real_estate_admin_cms/core/data/estate/params/real_estate_failure.dart';
import 'package:real_estate_admin_cms/core/data/estate/params/search/real_estate_filter_input.dart';
import 'package:real_estate_admin_cms/core/data/estate/params/search/real_estate_search_input.dart';
import 'package:real_estate_admin_cms/core/data/estate/real_estate_constants.dart';
import 'package:real_estate_admin_cms/core/data/province/domain/entities/province.dart';
import 'package:real_estate_admin_cms/core/data_source/network/api_service.dart';
import 'package:real_estate_admin_cms/utils/logger/logger.dart';

@LazySingleton()
class RealEstateRepository {
  final IApiService _apiRemote;

  RealEstateRepository(@Named.from(AuthApiService) this._apiRemote);

  Future<Either<RealEstateFailure, RealEstateConfig>> configData() async {
    try {
      final res = await _apiRemote.get<RealEstateConfigResponse>(
        RealEstateConstants.config,
        resultParser: (data) {
          return RealEstateConfigResponse.fromJson(data);
        },
      );
      if (res.success) {
        return right(res.data!.toModel());
      }
      throw Exception();
    } catch (e, strace) {
      inspect(strace);
      return left(const RealEstateFailure.unknown());
    }
  }

  Future<Either<RealEstateFailure, Unit>> createRealEstate(
      RealEstateCreationInput data) async {
    try {
      final res = await _apiRemote.post(
        RealEstateConstants.root,
        RealEstateCreationRequest.fromModel(data).toJson(),
      );
      if (!res.success) throw res.errorKey!;
      return right(unit);
    } catch (e, strace) {
      printLog(this, message: e, error: e, trace: strace);
      // inspect(strace);
      return left(const RealEstateFailure.unknown());
    }
  }

  Future<Either<RealEstateFailure, List<RealEstate>>> realEstates() async {
    try {
      final res = await _apiRemote.post<List<RealEstateResponse>>(
        RealEstateConstants.list,
        {},
        resultParser: (data) {
          return (data as List<dynamic>)
              .map((e) => RealEstateResponse.fromJson(e))
              .toList();
        },
      );
      if (!res.success) throw res.errorKey!;
      return right(res.data?.map((e) => e.toModel()).toList() ?? []);
    } catch (e) {
      return left(const RealEstateFailure.unknown());
    }
  }

  Future<Either<RealEstateFailure, PagingModel<RealEstate>>> search(
    RealEstateSearchInput data, {
    RealEstateFilterInput? filter,
  }) async {
    try {
      final res = await _apiRemote.post<PagingModel<RealEstate>>(
        RealEstateConstants.search,
        filter != null ? RealFilterRequest.fromModel(filter).toJson() : {},
        queryParameters: SearchRequest.fromModel(data).toJson(),
        resultParser: (data) {
          return PagingModel.fromJson(data, (dto) => RealEstate.fromJson(dto));
        },
      );
      if (!res.success) throw res.errorKey!;
      return right(res.data!);
    } catch (e) {
      return left(const RealEstateFailure.unknown());
    }
  }

  Future<Either<RealEstateFailure, List<RealEstate>>> newfeeds({
    Province? provice,
  }) async {
    try {
      final res = await _apiRemote.post<List<RealEstateResponse>>(
        RealEstateConstants.newfeeds,
        provice != null
            ? RealFilterRequest(
                provinceId: provice.code,
              )
            : {},
        resultParser: (data) {
          return (data as List<dynamic>)
              .map((e) => RealEstateResponse.fromJson(e))
              .toList();
        },
      );
      if (!res.success) throw res.errorKey!;
      return right(res.data?.map((e) => e.toModel()).toList() ?? []);
    } catch (e) {
      return left(const RealEstateFailure.unknown());
    }
  }

  Future<Either<RealEstateFailure, List<RealEstate>>> favorites() async {
    try {
      final res = await _apiRemote.get<List<RealEstateResponse>>(
        RealEstateConstants.favorites,
        resultParser: (data) {
          return (data as List<dynamic>)
              .map((e) => RealEstateResponse.fromJson(e))
              .toList();
        },
      );
      if (!res.success) throw res.errorKey!;
      return right(res.data?.map((e) => e.toModel()).toList() ?? []);
    } catch (e) {
      return left(const RealEstateFailure.unknown());
    }
  }

  Future<Either<RealEstateFailure, Unit>> setFavorite(int id) async {
    try {
      final res =
          await _apiRemote.post('${RealEstateConstants.favorites}/$id', {});
      if (!res.success) throw res.errorKey!;
      return right(unit);
    } catch (e) {
      return left(const RealEstateFailure.unknown());
    }
  }

  Future<Either<RealEstateFailure, Unit>> removeFavorite(int id) async {
    try {
      final res = await _apiRemote.delete(
        '${RealEstateConstants.favorites}/$id',
      );
      if (!res.success) throw res.errorKey!;
      return right(unit);
    } catch (e) {
      return left(const RealEstateFailure.unknown());
    }
  }

  Future<Either<RealEstateFailure, Unit>> deleteRealEstate(
      String estateId) async {
    try {
      final res = await _apiRemote.delete(
        '${RealEstateConstants.root}/$estateId',
      );
      if (!res.success) throw res.errorKey!;
      return right(unit);
    } catch (e, trace) {
      printLog(this, message: e, error: e, trace: trace);
      return left(const RealEstateFailure.unknown());
    }
  }

  Future<Either<RealEstateFailure, RealEstate>> detailEstate(String id) async {
    try {
      final res = await _apiRemote.get<RealEstateResponse>(
        RealEstateConstants.detail.replaceAll(RegExp(':id'), id),
        resultParser: (data) {
          return RealEstateResponse.fromJson(data);
        },
      );
      if (!res.success) throw res.errorKey!;
      return right(res.data!.toModel());
    } catch (e, trace) {
      printLog(this, message: e, error: e, trace: trace);
      return left(const RealEstateFailure.unknown());
    }
  }
}
