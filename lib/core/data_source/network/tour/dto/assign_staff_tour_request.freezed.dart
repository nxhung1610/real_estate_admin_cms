// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assign_staff_tour_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AssignStaffTourRRequest {
  @JsonKey(name: 'staff_id')
  int? get staffId => throw _privateConstructorUsedError;
  @JsonKey(name: 'tour_id')
  int? get tourId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssignStaffTourRRequestCopyWith<AssignStaffTourRRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignStaffTourRRequestCopyWith<$Res> {
  factory $AssignStaffTourRRequestCopyWith(AssignStaffTourRRequest value,
          $Res Function(AssignStaffTourRRequest) then) =
      _$AssignStaffTourRRequestCopyWithImpl<$Res, AssignStaffTourRRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'staff_id') int? staffId,
      @JsonKey(name: 'tour_id') int? tourId});
}

/// @nodoc
class _$AssignStaffTourRRequestCopyWithImpl<$Res,
        $Val extends AssignStaffTourRRequest>
    implements $AssignStaffTourRRequestCopyWith<$Res> {
  _$AssignStaffTourRRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? staffId = freezed,
    Object? tourId = freezed,
  }) {
    return _then(_value.copyWith(
      staffId: freezed == staffId
          ? _value.staffId
          : staffId // ignore: cast_nullable_to_non_nullable
              as int?,
      tourId: freezed == tourId
          ? _value.tourId
          : tourId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AssignStaffTourRequestCopyWith<$Res>
    implements $AssignStaffTourRRequestCopyWith<$Res> {
  factory _$$_AssignStaffTourRequestCopyWith(_$_AssignStaffTourRequest value,
          $Res Function(_$_AssignStaffTourRequest) then) =
      __$$_AssignStaffTourRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'staff_id') int? staffId,
      @JsonKey(name: 'tour_id') int? tourId});
}

/// @nodoc
class __$$_AssignStaffTourRequestCopyWithImpl<$Res>
    extends _$AssignStaffTourRRequestCopyWithImpl<$Res,
        _$_AssignStaffTourRequest>
    implements _$$_AssignStaffTourRequestCopyWith<$Res> {
  __$$_AssignStaffTourRequestCopyWithImpl(_$_AssignStaffTourRequest _value,
      $Res Function(_$_AssignStaffTourRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? staffId = freezed,
    Object? tourId = freezed,
  }) {
    return _then(_$_AssignStaffTourRequest(
      staffId: freezed == staffId
          ? _value.staffId
          : staffId // ignore: cast_nullable_to_non_nullable
              as int?,
      tourId: freezed == tourId
          ? _value.tourId
          : tourId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_AssignStaffTourRequest implements _AssignStaffTourRequest {
  _$_AssignStaffTourRequest(
      {@JsonKey(name: 'staff_id') this.staffId,
      @JsonKey(name: 'tour_id') this.tourId});

  @override
  @JsonKey(name: 'staff_id')
  final int? staffId;
  @override
  @JsonKey(name: 'tour_id')
  final int? tourId;

  @override
  String toString() {
    return 'AssignStaffTourRRequest(staffId: $staffId, tourId: $tourId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssignStaffTourRequest &&
            (identical(other.staffId, staffId) || other.staffId == staffId) &&
            (identical(other.tourId, tourId) || other.tourId == tourId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, staffId, tourId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AssignStaffTourRequestCopyWith<_$_AssignStaffTourRequest> get copyWith =>
      __$$_AssignStaffTourRequestCopyWithImpl<_$_AssignStaffTourRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssignStaffTourRequestToJson(
      this,
    );
  }
}

abstract class _AssignStaffTourRequest implements AssignStaffTourRRequest {
  factory _AssignStaffTourRequest(
      {@JsonKey(name: 'staff_id') final int? staffId,
      @JsonKey(name: 'tour_id') final int? tourId}) = _$_AssignStaffTourRequest;

  @override
  @JsonKey(name: 'staff_id')
  int? get staffId;
  @override
  @JsonKey(name: 'tour_id')
  int? get tourId;
  @override
  @JsonKey(ignore: true)
  _$$_AssignStaffTourRequestCopyWith<_$_AssignStaffTourRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
