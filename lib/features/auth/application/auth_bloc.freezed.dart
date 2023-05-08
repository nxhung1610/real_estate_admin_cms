// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthState _$AuthStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'unknown':
      return AuthStateUnknown.fromJson(json);
    case 'authentication':
      return AuthStateAuthentication.fromJson(json);
    case 'unAuthentication':
      return AuthStateUnAuthentication.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AuthState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() authentication,
    required TResult Function() unAuthentication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? authentication,
    TResult? Function()? unAuthentication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? authentication,
    TResult Function()? unAuthentication,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateUnknown value) unknown,
    required TResult Function(AuthStateAuthentication value) authentication,
    required TResult Function(AuthStateUnAuthentication value) unAuthentication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateUnknown value)? unknown,
    TResult? Function(AuthStateAuthentication value)? authentication,
    TResult? Function(AuthStateUnAuthentication value)? unAuthentication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateUnknown value)? unknown,
    TResult Function(AuthStateAuthentication value)? authentication,
    TResult Function(AuthStateUnAuthentication value)? unAuthentication,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthStateUnknownCopyWith<$Res> {
  factory _$$AuthStateUnknownCopyWith(
          _$AuthStateUnknown value, $Res Function(_$AuthStateUnknown) then) =
      __$$AuthStateUnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateUnknownCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateUnknown>
    implements _$$AuthStateUnknownCopyWith<$Res> {
  __$$AuthStateUnknownCopyWithImpl(
      _$AuthStateUnknown _value, $Res Function(_$AuthStateUnknown) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AuthStateUnknown implements AuthStateUnknown {
  const _$AuthStateUnknown({final String? $type}) : $type = $type ?? 'unknown';

  factory _$AuthStateUnknown.fromJson(Map<String, dynamic> json) =>
      _$$AuthStateUnknownFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStateUnknown);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() authentication,
    required TResult Function() unAuthentication,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? authentication,
    TResult? Function()? unAuthentication,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? authentication,
    TResult Function()? unAuthentication,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateUnknown value) unknown,
    required TResult Function(AuthStateAuthentication value) authentication,
    required TResult Function(AuthStateUnAuthentication value) unAuthentication,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateUnknown value)? unknown,
    TResult? Function(AuthStateAuthentication value)? authentication,
    TResult? Function(AuthStateUnAuthentication value)? unAuthentication,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateUnknown value)? unknown,
    TResult Function(AuthStateAuthentication value)? authentication,
    TResult Function(AuthStateUnAuthentication value)? unAuthentication,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStateUnknownToJson(
      this,
    );
  }
}

abstract class AuthStateUnknown implements AuthState {
  const factory AuthStateUnknown() = _$AuthStateUnknown;

  factory AuthStateUnknown.fromJson(Map<String, dynamic> json) =
      _$AuthStateUnknown.fromJson;
}

/// @nodoc
abstract class _$$AuthStateAuthenticationCopyWith<$Res> {
  factory _$$AuthStateAuthenticationCopyWith(_$AuthStateAuthentication value,
          $Res Function(_$AuthStateAuthentication) then) =
      __$$AuthStateAuthenticationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateAuthenticationCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateAuthentication>
    implements _$$AuthStateAuthenticationCopyWith<$Res> {
  __$$AuthStateAuthenticationCopyWithImpl(_$AuthStateAuthentication _value,
      $Res Function(_$AuthStateAuthentication) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AuthStateAuthentication implements AuthStateAuthentication {
  const _$AuthStateAuthentication({final String? $type})
      : $type = $type ?? 'authentication';

  factory _$AuthStateAuthentication.fromJson(Map<String, dynamic> json) =>
      _$$AuthStateAuthenticationFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.authentication()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateAuthentication);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() authentication,
    required TResult Function() unAuthentication,
  }) {
    return authentication();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? authentication,
    TResult? Function()? unAuthentication,
  }) {
    return authentication?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? authentication,
    TResult Function()? unAuthentication,
    required TResult orElse(),
  }) {
    if (authentication != null) {
      return authentication();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateUnknown value) unknown,
    required TResult Function(AuthStateAuthentication value) authentication,
    required TResult Function(AuthStateUnAuthentication value) unAuthentication,
  }) {
    return authentication(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateUnknown value)? unknown,
    TResult? Function(AuthStateAuthentication value)? authentication,
    TResult? Function(AuthStateUnAuthentication value)? unAuthentication,
  }) {
    return authentication?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateUnknown value)? unknown,
    TResult Function(AuthStateAuthentication value)? authentication,
    TResult Function(AuthStateUnAuthentication value)? unAuthentication,
    required TResult orElse(),
  }) {
    if (authentication != null) {
      return authentication(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStateAuthenticationToJson(
      this,
    );
  }
}

abstract class AuthStateAuthentication implements AuthState {
  const factory AuthStateAuthentication() = _$AuthStateAuthentication;

  factory AuthStateAuthentication.fromJson(Map<String, dynamic> json) =
      _$AuthStateAuthentication.fromJson;
}

/// @nodoc
abstract class _$$AuthStateUnAuthenticationCopyWith<$Res> {
  factory _$$AuthStateUnAuthenticationCopyWith(
          _$AuthStateUnAuthentication value,
          $Res Function(_$AuthStateUnAuthentication) then) =
      __$$AuthStateUnAuthenticationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateUnAuthenticationCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateUnAuthentication>
    implements _$$AuthStateUnAuthenticationCopyWith<$Res> {
  __$$AuthStateUnAuthenticationCopyWithImpl(_$AuthStateUnAuthentication _value,
      $Res Function(_$AuthStateUnAuthentication) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AuthStateUnAuthentication implements AuthStateUnAuthentication {
  const _$AuthStateUnAuthentication({final String? $type})
      : $type = $type ?? 'unAuthentication';

  factory _$AuthStateUnAuthentication.fromJson(Map<String, dynamic> json) =>
      _$$AuthStateUnAuthenticationFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.unAuthentication()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateUnAuthentication);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() authentication,
    required TResult Function() unAuthentication,
  }) {
    return unAuthentication();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? authentication,
    TResult? Function()? unAuthentication,
  }) {
    return unAuthentication?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? authentication,
    TResult Function()? unAuthentication,
    required TResult orElse(),
  }) {
    if (unAuthentication != null) {
      return unAuthentication();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateUnknown value) unknown,
    required TResult Function(AuthStateAuthentication value) authentication,
    required TResult Function(AuthStateUnAuthentication value) unAuthentication,
  }) {
    return unAuthentication(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateUnknown value)? unknown,
    TResult? Function(AuthStateAuthentication value)? authentication,
    TResult? Function(AuthStateUnAuthentication value)? unAuthentication,
  }) {
    return unAuthentication?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateUnknown value)? unknown,
    TResult Function(AuthStateAuthentication value)? authentication,
    TResult Function(AuthStateUnAuthentication value)? unAuthentication,
    required TResult orElse(),
  }) {
    if (unAuthentication != null) {
      return unAuthentication(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStateUnAuthenticationToJson(
      this,
    );
  }
}

abstract class AuthStateUnAuthentication implements AuthState {
  const factory AuthStateUnAuthentication() = _$AuthStateUnAuthentication;

  factory AuthStateUnAuthentication.fromJson(Map<String, dynamic> json) =
      _$AuthStateUnAuthentication.fromJson;
}

/// @nodoc
mixin _$AuthEvent {}

/// @nodoc

class _$AuthEventOnAuthentication implements AuthEventOnAuthentication {
  const _$AuthEventOnAuthentication();

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventOnAuthentication);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class AuthEventOnAuthentication implements AuthEvent {
  const factory AuthEventOnAuthentication() = _$AuthEventOnAuthentication;
}

/// @nodoc

class _$AuthEventOnUnAuthentication implements AuthEventOnUnAuthentication {
  const _$AuthEventOnUnAuthentication();

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventOnUnAuthentication);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class AuthEventOnUnAuthentication implements AuthEvent {
  const factory AuthEventOnUnAuthentication() = _$AuthEventOnUnAuthentication;
}
