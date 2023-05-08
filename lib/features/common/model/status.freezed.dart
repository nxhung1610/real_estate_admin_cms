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

Status _$StatusFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'idle':
      return StatusIdle.fromJson(json);
    case 'success':
      return StatusSuccess.fromJson(json);
    case 'loading':
      return StatusLoading.fromJson(json);
    case 'failure':
      return StatusFailure.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Status',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Status {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(dynamic value) success,
    required TResult Function() loading,
    required TResult Function(dynamic value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(dynamic value)? success,
    TResult? Function()? loading,
    TResult? Function(dynamic value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(dynamic value)? success,
    TResult Function()? loading,
    TResult Function(dynamic value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusIdle value) idle,
    required TResult Function(StatusSuccess value) success,
    required TResult Function(StatusLoading value) loading,
    required TResult Function(StatusFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusIdle value)? idle,
    TResult? Function(StatusSuccess value)? success,
    TResult? Function(StatusLoading value)? loading,
    TResult? Function(StatusFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusIdle value)? idle,
    TResult Function(StatusSuccess value)? success,
    TResult Function(StatusLoading value)? loading,
    TResult Function(StatusFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res, Status>;
}

/// @nodoc
class _$StatusCopyWithImpl<$Res, $Val extends Status>
    implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StatusIdleCopyWith<$Res> {
  factory _$$StatusIdleCopyWith(
          _$StatusIdle value, $Res Function(_$StatusIdle) then) =
      __$$StatusIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatusIdleCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$StatusIdle>
    implements _$$StatusIdleCopyWith<$Res> {
  __$$StatusIdleCopyWithImpl(
      _$StatusIdle _value, $Res Function(_$StatusIdle) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$StatusIdle implements StatusIdle {
  const _$StatusIdle({final String? $type}) : $type = $type ?? 'idle';

  factory _$StatusIdle.fromJson(Map<String, dynamic> json) =>
      _$$StatusIdleFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Status.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatusIdle);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(dynamic value) success,
    required TResult Function() loading,
    required TResult Function(dynamic value) failure,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(dynamic value)? success,
    TResult? Function()? loading,
    TResult? Function(dynamic value)? failure,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(dynamic value)? success,
    TResult Function()? loading,
    TResult Function(dynamic value)? failure,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusIdle value) idle,
    required TResult Function(StatusSuccess value) success,
    required TResult Function(StatusLoading value) loading,
    required TResult Function(StatusFailure value) failure,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusIdle value)? idle,
    TResult? Function(StatusSuccess value)? success,
    TResult? Function(StatusLoading value)? loading,
    TResult? Function(StatusFailure value)? failure,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusIdle value)? idle,
    TResult Function(StatusSuccess value)? success,
    TResult Function(StatusLoading value)? loading,
    TResult Function(StatusFailure value)? failure,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusIdleToJson(
      this,
    );
  }
}

abstract class StatusIdle implements Status {
  const factory StatusIdle() = _$StatusIdle;

  factory StatusIdle.fromJson(Map<String, dynamic> json) =
      _$StatusIdle.fromJson;
}

/// @nodoc
abstract class _$$StatusSuccessCopyWith<$Res> {
  factory _$$StatusSuccessCopyWith(
          _$StatusSuccess value, $Res Function(_$StatusSuccess) then) =
      __$$StatusSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic value});
}

/// @nodoc
class __$$StatusSuccessCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$StatusSuccess>
    implements _$$StatusSuccessCopyWith<$Res> {
  __$$StatusSuccessCopyWithImpl(
      _$StatusSuccess _value, $Res Function(_$StatusSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$StatusSuccess(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatusSuccess implements StatusSuccess {
  const _$StatusSuccess({this.value, final String? $type})
      : $type = $type ?? 'success';

  factory _$StatusSuccess.fromJson(Map<String, dynamic> json) =>
      _$$StatusSuccessFromJson(json);

  @override
  final dynamic value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Status.success(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusSuccess &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusSuccessCopyWith<_$StatusSuccess> get copyWith =>
      __$$StatusSuccessCopyWithImpl<_$StatusSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(dynamic value) success,
    required TResult Function() loading,
    required TResult Function(dynamic value) failure,
  }) {
    return success(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(dynamic value)? success,
    TResult? Function()? loading,
    TResult? Function(dynamic value)? failure,
  }) {
    return success?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(dynamic value)? success,
    TResult Function()? loading,
    TResult Function(dynamic value)? failure,
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
    required TResult Function(StatusIdle value) idle,
    required TResult Function(StatusSuccess value) success,
    required TResult Function(StatusLoading value) loading,
    required TResult Function(StatusFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusIdle value)? idle,
    TResult? Function(StatusSuccess value)? success,
    TResult? Function(StatusLoading value)? loading,
    TResult? Function(StatusFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusIdle value)? idle,
    TResult Function(StatusSuccess value)? success,
    TResult Function(StatusLoading value)? loading,
    TResult Function(StatusFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusSuccessToJson(
      this,
    );
  }
}

abstract class StatusSuccess implements Status, StatusValue {
  const factory StatusSuccess({final dynamic value}) = _$StatusSuccess;

  factory StatusSuccess.fromJson(Map<String, dynamic> json) =
      _$StatusSuccess.fromJson;

  dynamic get value;
  @JsonKey(ignore: true)
  _$$StatusSuccessCopyWith<_$StatusSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusLoadingCopyWith<$Res> {
  factory _$$StatusLoadingCopyWith(
          _$StatusLoading value, $Res Function(_$StatusLoading) then) =
      __$$StatusLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatusLoadingCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$StatusLoading>
    implements _$$StatusLoadingCopyWith<$Res> {
  __$$StatusLoadingCopyWithImpl(
      _$StatusLoading _value, $Res Function(_$StatusLoading) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$StatusLoading implements StatusLoading {
  const _$StatusLoading({final String? $type}) : $type = $type ?? 'loading';

  factory _$StatusLoading.fromJson(Map<String, dynamic> json) =>
      _$$StatusLoadingFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Status.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatusLoading);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(dynamic value) success,
    required TResult Function() loading,
    required TResult Function(dynamic value) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(dynamic value)? success,
    TResult? Function()? loading,
    TResult? Function(dynamic value)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(dynamic value)? success,
    TResult Function()? loading,
    TResult Function(dynamic value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusIdle value) idle,
    required TResult Function(StatusSuccess value) success,
    required TResult Function(StatusLoading value) loading,
    required TResult Function(StatusFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusIdle value)? idle,
    TResult? Function(StatusSuccess value)? success,
    TResult? Function(StatusLoading value)? loading,
    TResult? Function(StatusFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusIdle value)? idle,
    TResult Function(StatusSuccess value)? success,
    TResult Function(StatusLoading value)? loading,
    TResult Function(StatusFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusLoadingToJson(
      this,
    );
  }
}

abstract class StatusLoading implements Status {
  const factory StatusLoading() = _$StatusLoading;

  factory StatusLoading.fromJson(Map<String, dynamic> json) =
      _$StatusLoading.fromJson;
}

/// @nodoc
abstract class _$$StatusFailureCopyWith<$Res> {
  factory _$$StatusFailureCopyWith(
          _$StatusFailure value, $Res Function(_$StatusFailure) then) =
      __$$StatusFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic value});
}

/// @nodoc
class __$$StatusFailureCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$StatusFailure>
    implements _$$StatusFailureCopyWith<$Res> {
  __$$StatusFailureCopyWithImpl(
      _$StatusFailure _value, $Res Function(_$StatusFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$StatusFailure(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatusFailure implements StatusFailure {
  const _$StatusFailure({this.value, final String? $type})
      : $type = $type ?? 'failure';

  factory _$StatusFailure.fromJson(Map<String, dynamic> json) =>
      _$$StatusFailureFromJson(json);

  @override
  final dynamic value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Status.failure(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusFailure &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusFailureCopyWith<_$StatusFailure> get copyWith =>
      __$$StatusFailureCopyWithImpl<_$StatusFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(dynamic value) success,
    required TResult Function() loading,
    required TResult Function(dynamic value) failure,
  }) {
    return failure(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(dynamic value)? success,
    TResult? Function()? loading,
    TResult? Function(dynamic value)? failure,
  }) {
    return failure?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(dynamic value)? success,
    TResult Function()? loading,
    TResult Function(dynamic value)? failure,
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
    required TResult Function(StatusIdle value) idle,
    required TResult Function(StatusSuccess value) success,
    required TResult Function(StatusLoading value) loading,
    required TResult Function(StatusFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusIdle value)? idle,
    TResult? Function(StatusSuccess value)? success,
    TResult? Function(StatusLoading value)? loading,
    TResult? Function(StatusFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusIdle value)? idle,
    TResult Function(StatusSuccess value)? success,
    TResult Function(StatusLoading value)? loading,
    TResult Function(StatusFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusFailureToJson(
      this,
    );
  }
}

abstract class StatusFailure implements Status, StatusValue {
  const factory StatusFailure({final dynamic value}) = _$StatusFailure;

  factory StatusFailure.fromJson(Map<String, dynamic> json) =
      _$StatusFailure.fromJson;

  dynamic get value;
  @JsonKey(ignore: true)
  _$$StatusFailureCopyWith<_$StatusFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
