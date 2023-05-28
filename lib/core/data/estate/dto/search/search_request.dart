import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_admin_cms/core/data/common/network/freezed_annotation.dart';
import 'package:real_estate_admin_cms/core/data/estate/params/search/real_estate_search_input.dart';

part 'search_request.freezed.dart';
part 'search_request.g.dart';

@freezedRequest
class SearchRequest with _$SearchRequest {
  factory SearchRequest({
    String? keyword,
  }) = _SearchRequest;

  static SearchRequest fromModel(RealEstateSearchInput model) {
    return SearchRequest(
      keyword: model.keyword,
    );
  }
}
