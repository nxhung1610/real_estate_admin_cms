// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connectivity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConnectivityState {
  ConnectivityStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectivityStateCopyWith<ConnectivityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectivityStateCopyWith<$Res> {
  factory $ConnectivityStateCopyWith(
          ConnectivityState value, $Res Function(ConnectivityState) then) =
      _$ConnectivityStateCopyWithImpl<$Res, ConnectivityState>;
  @useResult
  $Res call({ConnectivityStatus status});
}

/// @nodoc
class _$ConnectivityStateCopyWithImpl<$Res, $Val extends ConnectivityState>
    implements $ConnectivityStateCopyWith<$Res> {
  _$ConnectivityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ConnectivityStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConnectivityStateCopyWith<$Res>
    implements $ConnectivityStateCopyWith<$Res> {
  factory _$$_ConnectivityStateCopyWith(_$_ConnectivityState value,
          $Res Function(_$_ConnectivityState) then) =
      __$$_ConnectivityStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConnectivityStatus status});
}

/// @nodoc
class __$$_ConnectivityStateCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res, _$_ConnectivityState>
    implements _$$_ConnectivityStateCopyWith<$Res> {
  __$$_ConnectivityStateCopyWithImpl(
      _$_ConnectivityState _value, $Res Function(_$_ConnectivityState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_ConnectivityState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ConnectivityStatus,
    ));
  }
}

/// @nodoc

class _$_ConnectivityState implements _ConnectivityState {
  const _$_ConnectivityState({this.status = ConnectivityStatus.none});

  @override
  @JsonKey()
  final ConnectivityStatus status;

  @override
  String toString() {
    return 'ConnectivityState(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConnectivityState &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConnectivityStateCopyWith<_$_ConnectivityState> get copyWith =>
      __$$_ConnectivityStateCopyWithImpl<_$_ConnectivityState>(
          this, _$identity);
}

abstract class _ConnectivityState implements ConnectivityState {
  const factory _ConnectivityState({final ConnectivityStatus status}) =
      _$_ConnectivityState;

  @override
  ConnectivityStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_ConnectivityStateCopyWith<_$_ConnectivityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConnectivityEvent {}

/// @nodoc

class _$_ConnectivityEventInit implements _ConnectivityEventInit {
  const _$_ConnectivityEventInit();

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ConnectivityEventInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _ConnectivityEventInit implements ConnectivityEvent {
  const factory _ConnectivityEventInit() = _$_ConnectivityEventInit;
}

/// @nodoc

class _$_ConnectivityEventConnectivityChanged
    implements _ConnectivityEventConnectivityChanged {
  const _$_ConnectivityEventConnectivityChanged(this.status);

  @override
  final ConnectivityStatus status;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConnectivityEventConnectivityChanged &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);
}

abstract class _ConnectivityEventConnectivityChanged
    implements ConnectivityEvent {
  const factory _ConnectivityEventConnectivityChanged(
          final ConnectivityStatus status) =
      _$_ConnectivityEventConnectivityChanged;

  ConnectivityStatus get status;
}
