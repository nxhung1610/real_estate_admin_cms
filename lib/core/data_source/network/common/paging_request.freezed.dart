// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paging_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PagingRequest {
  int get page => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PagingRequestCopyWith<PagingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagingRequestCopyWith<$Res> {
  factory $PagingRequestCopyWith(
          PagingRequest value, $Res Function(PagingRequest) then) =
      _$PagingRequestCopyWithImpl<$Res, PagingRequest>;
  @useResult
  $Res call({int page, int size});
}

/// @nodoc
class _$PagingRequestCopyWithImpl<$Res, $Val extends PagingRequest>
    implements $PagingRequestCopyWith<$Res> {
  _$PagingRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? size = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PagingRequestCopyWith<$Res>
    implements $PagingRequestCopyWith<$Res> {
  factory _$$_PagingRequestCopyWith(
          _$_PagingRequest value, $Res Function(_$_PagingRequest) then) =
      __$$_PagingRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int size});
}

/// @nodoc
class __$$_PagingRequestCopyWithImpl<$Res>
    extends _$PagingRequestCopyWithImpl<$Res, _$_PagingRequest>
    implements _$$_PagingRequestCopyWith<$Res> {
  __$$_PagingRequestCopyWithImpl(
      _$_PagingRequest _value, $Res Function(_$_PagingRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? size = null,
  }) {
    return _then(_$_PagingRequest(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_PagingRequest implements _PagingRequest {
  const _$_PagingRequest({required this.page, required this.size});

  @override
  final int page;
  @override
  final int size;

  @override
  String toString() {
    return 'PagingRequest(page: $page, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PagingRequest &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PagingRequestCopyWith<_$_PagingRequest> get copyWith =>
      __$$_PagingRequestCopyWithImpl<_$_PagingRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PagingRequestToJson(
      this,
    );
  }
}

abstract class _PagingRequest implements PagingRequest {
  const factory _PagingRequest(
      {required final int page, required final int size}) = _$_PagingRequest;

  @override
  int get page;
  @override
  int get size;
  @override
  @JsonKey(ignore: true)
  _$$_PagingRequestCopyWith<_$_PagingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
