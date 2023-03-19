// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Status {
  dynamic get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic value) success,
    required TResult Function(dynamic value) failure,
    required TResult Function(dynamic value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic value)? success,
    TResult? Function(dynamic value)? failure,
    TResult? Function(dynamic value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic value)? success,
    TResult Function(dynamic value)? failure,
    TResult Function(dynamic value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusSuccess value) success,
    required TResult Function(_StatusFailure value) failure,
    required TResult Function(_StatusLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatusSuccess value)? success,
    TResult? Function(_StatusFailure value)? failure,
    TResult? Function(_StatusLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusSuccess value)? success,
    TResult Function(_StatusFailure value)? failure,
    TResult Function(_StatusLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatusCopyWith<Status> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res, Status>;
  @useResult
  $Res call({dynamic value});
}

/// @nodoc
class _$StatusCopyWithImpl<$Res, $Val extends Status>
    implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StatusSuccessCopyWith<$Res>
    implements $StatusCopyWith<$Res> {
  factory _$$_StatusSuccessCopyWith(
          _$_StatusSuccess value, $Res Function(_$_StatusSuccess) then) =
      __$$_StatusSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic value});
}

/// @nodoc
class __$$_StatusSuccessCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$_StatusSuccess>
    implements _$$_StatusSuccessCopyWith<$Res> {
  __$$_StatusSuccessCopyWithImpl(
      _$_StatusSuccess _value, $Res Function(_$_StatusSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_StatusSuccess(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_StatusSuccess implements _StatusSuccess {
  _$_StatusSuccess({this.value});

  @override
  final dynamic value;

  @override
  String toString() {
    return 'Status.success(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatusSuccess &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatusSuccessCopyWith<_$_StatusSuccess> get copyWith =>
      __$$_StatusSuccessCopyWithImpl<_$_StatusSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic value) success,
    required TResult Function(dynamic value) failure,
    required TResult Function(dynamic value) loading,
  }) {
    return success(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic value)? success,
    TResult? Function(dynamic value)? failure,
    TResult? Function(dynamic value)? loading,
  }) {
    return success?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic value)? success,
    TResult Function(dynamic value)? failure,
    TResult Function(dynamic value)? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusSuccess value) success,
    required TResult Function(_StatusFailure value) failure,
    required TResult Function(_StatusLoading value) loading,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatusSuccess value)? success,
    TResult? Function(_StatusFailure value)? failure,
    TResult? Function(_StatusLoading value)? loading,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusSuccess value)? success,
    TResult Function(_StatusFailure value)? failure,
    TResult Function(_StatusLoading value)? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _StatusSuccess implements Status {
  factory _StatusSuccess({final dynamic value}) = _$_StatusSuccess;

  @override
  dynamic get value;
  @override
  @JsonKey(ignore: true)
  _$$_StatusSuccessCopyWith<_$_StatusSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StatusFailureCopyWith<$Res>
    implements $StatusCopyWith<$Res> {
  factory _$$_StatusFailureCopyWith(
          _$_StatusFailure value, $Res Function(_$_StatusFailure) then) =
      __$$_StatusFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic value});
}

/// @nodoc
class __$$_StatusFailureCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$_StatusFailure>
    implements _$$_StatusFailureCopyWith<$Res> {
  __$$_StatusFailureCopyWithImpl(
      _$_StatusFailure _value, $Res Function(_$_StatusFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_StatusFailure(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_StatusFailure implements _StatusFailure {
  _$_StatusFailure({this.value});

  @override
  final dynamic value;

  @override
  String toString() {
    return 'Status.failure(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatusFailure &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatusFailureCopyWith<_$_StatusFailure> get copyWith =>
      __$$_StatusFailureCopyWithImpl<_$_StatusFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic value) success,
    required TResult Function(dynamic value) failure,
    required TResult Function(dynamic value) loading,
  }) {
    return failure(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic value)? success,
    TResult? Function(dynamic value)? failure,
    TResult? Function(dynamic value)? loading,
  }) {
    return failure?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic value)? success,
    TResult Function(dynamic value)? failure,
    TResult Function(dynamic value)? loading,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusSuccess value) success,
    required TResult Function(_StatusFailure value) failure,
    required TResult Function(_StatusLoading value) loading,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatusSuccess value)? success,
    TResult? Function(_StatusFailure value)? failure,
    TResult? Function(_StatusLoading value)? loading,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusSuccess value)? success,
    TResult Function(_StatusFailure value)? failure,
    TResult Function(_StatusLoading value)? loading,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _StatusFailure implements Status {
  factory _StatusFailure({final dynamic value}) = _$_StatusFailure;

  @override
  dynamic get value;
  @override
  @JsonKey(ignore: true)
  _$$_StatusFailureCopyWith<_$_StatusFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StatusLoadingCopyWith<$Res>
    implements $StatusCopyWith<$Res> {
  factory _$$_StatusLoadingCopyWith(
          _$_StatusLoading value, $Res Function(_$_StatusLoading) then) =
      __$$_StatusLoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic value});
}

/// @nodoc
class __$$_StatusLoadingCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$_StatusLoading>
    implements _$$_StatusLoadingCopyWith<$Res> {
  __$$_StatusLoadingCopyWithImpl(
      _$_StatusLoading _value, $Res Function(_$_StatusLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_StatusLoading(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_StatusLoading implements _StatusLoading {
  _$_StatusLoading({this.value});

  @override
  final dynamic value;

  @override
  String toString() {
    return 'Status.loading(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatusLoading &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatusLoadingCopyWith<_$_StatusLoading> get copyWith =>
      __$$_StatusLoadingCopyWithImpl<_$_StatusLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic value) success,
    required TResult Function(dynamic value) failure,
    required TResult Function(dynamic value) loading,
  }) {
    return loading(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic value)? success,
    TResult? Function(dynamic value)? failure,
    TResult? Function(dynamic value)? loading,
  }) {
    return loading?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic value)? success,
    TResult Function(dynamic value)? failure,
    TResult Function(dynamic value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusSuccess value) success,
    required TResult Function(_StatusFailure value) failure,
    required TResult Function(_StatusLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatusSuccess value)? success,
    TResult? Function(_StatusFailure value)? failure,
    TResult? Function(_StatusLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusSuccess value)? success,
    TResult Function(_StatusFailure value)? failure,
    TResult Function(_StatusLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _StatusLoading implements Status {
  factory _StatusLoading({final dynamic value}) = _$_StatusLoading;

  @override
  dynamic get value;
  @override
  @JsonKey(ignore: true)
  _$$_StatusLoadingCopyWith<_$_StatusLoading> get copyWith =>
      throw _privateConstructorUsedError;
}
