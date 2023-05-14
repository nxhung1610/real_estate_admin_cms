// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'approval_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApprovalState {
  bool get shimmer => throw _privateConstructorUsedError;
  List<Tour> get tours => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApprovalStateCopyWith<ApprovalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApprovalStateCopyWith<$Res> {
  factory $ApprovalStateCopyWith(
          ApprovalState value, $Res Function(ApprovalState) then) =
      _$ApprovalStateCopyWithImpl<$Res, ApprovalState>;
  @useResult
  $Res call({bool shimmer, List<Tour> tours, int page, Status status});

  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class _$ApprovalStateCopyWithImpl<$Res, $Val extends ApprovalState>
    implements $ApprovalStateCopyWith<$Res> {
  _$ApprovalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shimmer = null,
    Object? tours = null,
    Object? page = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      shimmer: null == shimmer
          ? _value.shimmer
          : shimmer // ignore: cast_nullable_to_non_nullable
              as bool,
      tours: null == tours
          ? _value.tours
          : tours // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get status {
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApprovalStateCopyWith<$Res>
    implements $ApprovalStateCopyWith<$Res> {
  factory _$$_ApprovalStateCopyWith(
          _$_ApprovalState value, $Res Function(_$_ApprovalState) then) =
      __$$_ApprovalStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool shimmer, List<Tour> tours, int page, Status status});

  @override
  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_ApprovalStateCopyWithImpl<$Res>
    extends _$ApprovalStateCopyWithImpl<$Res, _$_ApprovalState>
    implements _$$_ApprovalStateCopyWith<$Res> {
  __$$_ApprovalStateCopyWithImpl(
      _$_ApprovalState _value, $Res Function(_$_ApprovalState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shimmer = null,
    Object? tours = null,
    Object? page = null,
    Object? status = null,
  }) {
    return _then(_$_ApprovalState(
      shimmer: null == shimmer
          ? _value.shimmer
          : shimmer // ignore: cast_nullable_to_non_nullable
              as bool,
      tours: null == tours
          ? _value._tours
          : tours // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$_ApprovalState implements _ApprovalState {
  const _$_ApprovalState(
      {this.shimmer = false,
      final List<Tour> tours = const [],
      this.page = 0,
      this.status = const Status.idle()})
      : _tours = tours;

  @override
  @JsonKey()
  final bool shimmer;
  final List<Tour> _tours;
  @override
  @JsonKey()
  List<Tour> get tours {
    if (_tours is EqualUnmodifiableListView) return _tours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tours);
  }

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final Status status;

  @override
  String toString() {
    return 'ApprovalState(shimmer: $shimmer, tours: $tours, page: $page, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApprovalState &&
            (identical(other.shimmer, shimmer) || other.shimmer == shimmer) &&
            const DeepCollectionEquality().equals(other._tours, _tours) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shimmer,
      const DeepCollectionEquality().hash(_tours), page, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApprovalStateCopyWith<_$_ApprovalState> get copyWith =>
      __$$_ApprovalStateCopyWithImpl<_$_ApprovalState>(this, _$identity);
}

abstract class _ApprovalState implements ApprovalState {
  const factory _ApprovalState(
      {final bool shimmer,
      final List<Tour> tours,
      final int page,
      final Status status}) = _$_ApprovalState;

  @override
  bool get shimmer;
  @override
  List<Tour> get tours;
  @override
  int get page;
  @override
  Status get status;
  @override
  @JsonKey(ignore: true)
  _$$_ApprovalStateCopyWith<_$_ApprovalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ApprovalEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(
            int page, int size, TourStatus? status, int? staffId)
        onFetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(int page, int size, TourStatus? status, int? staffId)?
        onFetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(int page, int size, TourStatus? status, int? staffId)?
        onFetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApprovalEventOnStarted value) onStarted,
    required TResult Function(ApprovalEventOnFetch value) onFetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApprovalEventOnStarted value)? onStarted,
    TResult? Function(ApprovalEventOnFetch value)? onFetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApprovalEventOnStarted value)? onStarted,
    TResult Function(ApprovalEventOnFetch value)? onFetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApprovalEventCopyWith<$Res> {
  factory $ApprovalEventCopyWith(
          ApprovalEvent value, $Res Function(ApprovalEvent) then) =
      _$ApprovalEventCopyWithImpl<$Res, ApprovalEvent>;
}

/// @nodoc
class _$ApprovalEventCopyWithImpl<$Res, $Val extends ApprovalEvent>
    implements $ApprovalEventCopyWith<$Res> {
  _$ApprovalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ApprovalEventOnStartedCopyWith<$Res> {
  factory _$$ApprovalEventOnStartedCopyWith(_$ApprovalEventOnStarted value,
          $Res Function(_$ApprovalEventOnStarted) then) =
      __$$ApprovalEventOnStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApprovalEventOnStartedCopyWithImpl<$Res>
    extends _$ApprovalEventCopyWithImpl<$Res, _$ApprovalEventOnStarted>
    implements _$$ApprovalEventOnStartedCopyWith<$Res> {
  __$$ApprovalEventOnStartedCopyWithImpl(_$ApprovalEventOnStarted _value,
      $Res Function(_$ApprovalEventOnStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ApprovalEventOnStarted implements ApprovalEventOnStarted {
  const _$ApprovalEventOnStarted();

  @override
  String toString() {
    return 'ApprovalEvent.onStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ApprovalEventOnStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(
            int page, int size, TourStatus? status, int? staffId)
        onFetch,
  }) {
    return onStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(int page, int size, TourStatus? status, int? staffId)?
        onFetch,
  }) {
    return onStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(int page, int size, TourStatus? status, int? staffId)?
        onFetch,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApprovalEventOnStarted value) onStarted,
    required TResult Function(ApprovalEventOnFetch value) onFetch,
  }) {
    return onStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApprovalEventOnStarted value)? onStarted,
    TResult? Function(ApprovalEventOnFetch value)? onFetch,
  }) {
    return onStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApprovalEventOnStarted value)? onStarted,
    TResult Function(ApprovalEventOnFetch value)? onFetch,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted(this);
    }
    return orElse();
  }
}

abstract class ApprovalEventOnStarted implements ApprovalEvent {
  const factory ApprovalEventOnStarted() = _$ApprovalEventOnStarted;
}

/// @nodoc
abstract class _$$ApprovalEventOnFetchCopyWith<$Res> {
  factory _$$ApprovalEventOnFetchCopyWith(_$ApprovalEventOnFetch value,
          $Res Function(_$ApprovalEventOnFetch) then) =
      __$$ApprovalEventOnFetchCopyWithImpl<$Res>;
  @useResult
  $Res call({int page, int size, TourStatus? status, int? staffId});
}

/// @nodoc
class __$$ApprovalEventOnFetchCopyWithImpl<$Res>
    extends _$ApprovalEventCopyWithImpl<$Res, _$ApprovalEventOnFetch>
    implements _$$ApprovalEventOnFetchCopyWith<$Res> {
  __$$ApprovalEventOnFetchCopyWithImpl(_$ApprovalEventOnFetch _value,
      $Res Function(_$ApprovalEventOnFetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? size = null,
    Object? status = freezed,
    Object? staffId = freezed,
  }) {
    return _then(_$ApprovalEventOnFetch(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TourStatus?,
      staffId: freezed == staffId
          ? _value.staffId
          : staffId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ApprovalEventOnFetch implements ApprovalEventOnFetch {
  const _$ApprovalEventOnFetch(
      {this.page = 0, this.size = 15, this.status, this.staffId});

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int size;
  @override
  final TourStatus? status;
  @override
  final int? staffId;

  @override
  String toString() {
    return 'ApprovalEvent.onFetch(page: $page, size: $size, status: $status, staffId: $staffId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApprovalEventOnFetch &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.staffId, staffId) || other.staffId == staffId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, size, status, staffId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApprovalEventOnFetchCopyWith<_$ApprovalEventOnFetch> get copyWith =>
      __$$ApprovalEventOnFetchCopyWithImpl<_$ApprovalEventOnFetch>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(
            int page, int size, TourStatus? status, int? staffId)
        onFetch,
  }) {
    return onFetch(page, size, status, staffId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(int page, int size, TourStatus? status, int? staffId)?
        onFetch,
  }) {
    return onFetch?.call(page, size, status, staffId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(int page, int size, TourStatus? status, int? staffId)?
        onFetch,
    required TResult orElse(),
  }) {
    if (onFetch != null) {
      return onFetch(page, size, status, staffId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApprovalEventOnStarted value) onStarted,
    required TResult Function(ApprovalEventOnFetch value) onFetch,
  }) {
    return onFetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApprovalEventOnStarted value)? onStarted,
    TResult? Function(ApprovalEventOnFetch value)? onFetch,
  }) {
    return onFetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApprovalEventOnStarted value)? onStarted,
    TResult Function(ApprovalEventOnFetch value)? onFetch,
    required TResult orElse(),
  }) {
    if (onFetch != null) {
      return onFetch(this);
    }
    return orElse();
  }
}

abstract class ApprovalEventOnFetch implements ApprovalEvent {
  const factory ApprovalEventOnFetch(
      {final int page,
      final int size,
      final TourStatus? status,
      final int? staffId}) = _$ApprovalEventOnFetch;

  int get page;
  int get size;
  TourStatus? get status;
  int? get staffId;
  @JsonKey(ignore: true)
  _$$ApprovalEventOnFetchCopyWith<_$ApprovalEventOnFetch> get copyWith =>
      throw _privateConstructorUsedError;
}
