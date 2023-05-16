// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff_selected_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StaffSelectedState {
  List<User> get staffs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StaffSelectedStateCopyWith<StaffSelectedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffSelectedStateCopyWith<$Res> {
  factory $StaffSelectedStateCopyWith(
          StaffSelectedState value, $Res Function(StaffSelectedState) then) =
      _$StaffSelectedStateCopyWithImpl<$Res, StaffSelectedState>;
  @useResult
  $Res call({List<User> staffs});
}

/// @nodoc
class _$StaffSelectedStateCopyWithImpl<$Res, $Val extends StaffSelectedState>
    implements $StaffSelectedStateCopyWith<$Res> {
  _$StaffSelectedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? staffs = null,
  }) {
    return _then(_value.copyWith(
      staffs: null == staffs
          ? _value.staffs
          : staffs // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StaffSelectedStateCopyWith<$Res>
    implements $StaffSelectedStateCopyWith<$Res> {
  factory _$$_StaffSelectedStateCopyWith(_$_StaffSelectedState value,
          $Res Function(_$_StaffSelectedState) then) =
      __$$_StaffSelectedStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<User> staffs});
}

/// @nodoc
class __$$_StaffSelectedStateCopyWithImpl<$Res>
    extends _$StaffSelectedStateCopyWithImpl<$Res, _$_StaffSelectedState>
    implements _$$_StaffSelectedStateCopyWith<$Res> {
  __$$_StaffSelectedStateCopyWithImpl(
      _$_StaffSelectedState _value, $Res Function(_$_StaffSelectedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? staffs = null,
  }) {
    return _then(_$_StaffSelectedState(
      staffs: null == staffs
          ? _value._staffs
          : staffs // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$_StaffSelectedState implements _StaffSelectedState {
  const _$_StaffSelectedState({final List<User> staffs = const []})
      : _staffs = staffs;

  final List<User> _staffs;
  @override
  @JsonKey()
  List<User> get staffs {
    if (_staffs is EqualUnmodifiableListView) return _staffs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_staffs);
  }

  @override
  String toString() {
    return 'StaffSelectedState(staffs: $staffs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StaffSelectedState &&
            const DeepCollectionEquality().equals(other._staffs, _staffs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_staffs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StaffSelectedStateCopyWith<_$_StaffSelectedState> get copyWith =>
      __$$_StaffSelectedStateCopyWithImpl<_$_StaffSelectedState>(
          this, _$identity);
}

abstract class _StaffSelectedState implements StaffSelectedState {
  const factory _StaffSelectedState({final List<User> staffs}) =
      _$_StaffSelectedState;

  @override
  List<User> get staffs;
  @override
  @JsonKey(ignore: true)
  _$$_StaffSelectedStateCopyWith<_$_StaffSelectedState> get copyWith =>
      throw _privateConstructorUsedError;
}
