import 'package:freezed_annotation/freezed_annotation.dart';

part 'paging_response.freezed.dart';

@freezed
class PagingResponse<T> with _$PagingResponse<T> {
  const factory PagingResponse({
    required int totalElements,
    required int totalPages,
    List<T>? content,
  }) = _PagingResponse;

  factory PagingResponse.fromJson(
    Map<String, dynamic> json, {
    T Function(Map<String, dynamic> value)? parse,
  }) {
    return PagingResponse<T>(
      totalElements: json["totalElements"],
      totalPages: json["totalPages"],
      content: parse != null
          ? (json['content'] as List<dynamic>)
              .map((e) => parse.call(e as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
}
