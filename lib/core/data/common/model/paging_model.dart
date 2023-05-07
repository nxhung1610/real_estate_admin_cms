import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_admin_cms/core/data_source/network/common/paging_response.dart';

part 'paging_model.freezed.dart';

@freezed
class PagingModel<T> with _$PagingModel<T> {
  const factory PagingModel({
    required int totalElements,
    required int totalPages,
    List<T>? content,
  }) = _PagingModel;

  /// {T} is Paging of model
  ///
  static PagingModel<M> fromDto<M, D>(
      PagingResponse<D> dto, M Function(D dto) convert) {
    return PagingModel<M>(
      totalElements: dto.totalElements,
      totalPages: dto.totalPages,
      content: dto.content
          ?.map(
            (e) => convert.call(e),
          )
          .toList(),
    );
  }
}
