// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reject_tour_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RejectTourRRequest _$RejectTourRRequestFromJson(Map<String, dynamic> json) {
  return _RejectTourRequest.fromJson(json);
}

/// @nodoc
mixin _$RejectTourRRequest {
  @JsonKey(name: 'tour_id')
  int? get tourId => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RejectTourRRequestCopyWith<RejectTourRRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RejectTourRRequestCopyWith<$Res> {
  factory $RejectTourRRequestCopyWith(
          RejectTourRRequest value, $Res Function(RejectTourRRequest) then) =
      _$RejectTourRRequestCopyWithImpl<$Res, RejectTourRRequest>;
  @useResult
  $Res call({@JsonKey(name: 'tour_id') int? tourId, String? reason});
}

/// @nodoc
class _$RejectTourRRequestCopyWithImpl<$Res, $Val extends RejectTourRRequest>
    implements $RejectTourRRequestCopyWith<$Res> {
  _$RejectTourRRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tourId = freezed,
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      tourId: freezed == tourId
          ? _value.tourId
          : tourId // ignore: cast_nullable_to_non_nullable
              as int?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RejectTourRequestCopyWith<$Res>
    implements $RejectTourRRequestCopyWith<$Res> {
  factory _$$_RejectTourRequestCopyWith(_$_RejectTourRequest value,
          $Res Function(_$_RejectTourRequest) then) =
      __$$_RejectTourRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'tour_id') int? tourId, String? reason});
}

/// @nodoc
class __$$_RejectTourRequestCopyWithImpl<$Res>
    extends _$RejectTourRRequestCopyWithImpl<$Res, _$_RejectTourRequest>
    implements _$$_RejectTourRequestCopyWith<$Res> {
  __$$_RejectTourRequestCopyWithImpl(
      _$_RejectTourRequest _value, $Res Function(_$_RejectTourRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tourId = freezed,
    Object? reason = freezed,
  }) {
    return _then(_$_RejectTourRequest(
      tourId: freezed == tourId
          ? _value.tourId
          : tourId // ignore: cast_nullable_to_non_nullable
              as int?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RejectTourRequest implements _RejectTourRequest {
  _$_RejectTourRequest({@JsonKey(name: 'tour_id') this.tourId, this.reason});

  factory _$_RejectTourRequest.fromJson(Map<String, dynamic> json) =>
      _$$_RejectTourRequestFromJson(json);

  @override
  @JsonKey(name: 'tour_id')
  final int? tourId;
  @override
  final String? reason;

  @override
  String toString() {
    return 'RejectTourRRequest(tourId: $tourId, reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RejectTourRequest &&
            (identical(other.tourId, tourId) || other.tourId == tourId) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tourId, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RejectTourRequestCopyWith<_$_RejectTourRequest> get copyWith =>
      __$$_RejectTourRequestCopyWithImpl<_$_RejectTourRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RejectTourRequestToJson(
      this,
    );
  }
}

abstract class _RejectTourRequest implements RejectTourRRequest {
  factory _RejectTourRequest(
      {@JsonKey(name: 'tour_id') final int? tourId,
      final String? reason}) = _$_RejectTourRequest;

  factory _RejectTourRequest.fromJson(Map<String, dynamic> json) =
      _$_RejectTourRequest.fromJson;

  @override
  @JsonKey(name: 'tour_id')
  int? get tourId;
  @override
  String? get reason;
  @override
  @JsonKey(ignore: true)
  _$$_RejectTourRequestCopyWith<_$_RejectTourRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
