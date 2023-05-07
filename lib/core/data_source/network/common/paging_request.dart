import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_admin_cms/utils/freezed/freezed_annotation.dart';

part 'paging_request.freezed.dart';

part 'paging_request.g.dart';

@freezedApiRequest
class PagingRequest with _$PagingRequest {
  const factory PagingRequest({
    required int page,
    required int size,
  }) = _PagingRequest;
}
