// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthSession _$AuthSessionFromJson(Map<String, dynamic> json) {
  return _AuthSession.fromJson(json);
}

/// @nodoc
mixin _$AuthSession {
  AuthToken? get refreshToken => throw _privateConstructorUsedError;
  AuthToken? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthSessionCopyWith<AuthSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthSessionCopyWith<$Res> {
  factory $AuthSessionCopyWith(
          AuthSession value, $Res Function(AuthSession) then) =
      _$AuthSessionCopyWithImpl<$Res, AuthSession>;
  @useResult
  $Res call({AuthToken? refreshToken, AuthToken? token});

  $AuthTokenCopyWith<$Res>? get refreshToken;
  $AuthTokenCopyWith<$Res>? get token;
}

/// @nodoc
class _$AuthSessionCopyWithImpl<$Res, $Val extends AuthSession>
    implements $AuthSessionCopyWith<$Res> {
  _$AuthSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as AuthToken?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as AuthToken?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthTokenCopyWith<$Res>? get refreshToken {
    if (_value.refreshToken == null) {
      return null;
    }

    return $AuthTokenCopyWith<$Res>(_value.refreshToken!, (value) {
      return _then(_value.copyWith(refreshToken: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthTokenCopyWith<$Res>? get token {
    if (_value.token == null) {
      return null;
    }

    return $AuthTokenCopyWith<$Res>(_value.token!, (value) {
      return _then(_value.copyWith(token: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthSessionCopyWith<$Res>
    implements $AuthSessionCopyWith<$Res> {
  factory _$$_AuthSessionCopyWith(
          _$_AuthSession value, $Res Function(_$_AuthSession) then) =
      __$$_AuthSessionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthToken? refreshToken, AuthToken? token});

  @override
  $AuthTokenCopyWith<$Res>? get refreshToken;
  @override
  $AuthTokenCopyWith<$Res>? get token;
}

/// @nodoc
class __$$_AuthSessionCopyWithImpl<$Res>
    extends _$AuthSessionCopyWithImpl<$Res, _$_AuthSession>
    implements _$$_AuthSessionCopyWith<$Res> {
  __$$_AuthSessionCopyWithImpl(
      _$_AuthSession _value, $Res Function(_$_AuthSession) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_AuthSession(
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as AuthToken?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as AuthToken?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthSession with DiagnosticableTreeMixin implements _AuthSession {
  const _$_AuthSession({this.refreshToken, this.token});

  factory _$_AuthSession.fromJson(Map<String, dynamic> json) =>
      _$$_AuthSessionFromJson(json);

  @override
  final AuthToken? refreshToken;
  @override
  final AuthToken? token;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthSession(refreshToken: $refreshToken, token: $token)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthSession'))
      ..add(DiagnosticsProperty('refreshToken', refreshToken))
      ..add(DiagnosticsProperty('token', token));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthSession &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthSessionCopyWith<_$_AuthSession> get copyWith =>
      __$$_AuthSessionCopyWithImpl<_$_AuthSession>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthSessionToJson(
      this,
    );
  }
}

abstract class _AuthSession implements AuthSession {
  const factory _AuthSession(
      {final AuthToken? refreshToken, final AuthToken? token}) = _$_AuthSession;

  factory _AuthSession.fromJson(Map<String, dynamic> json) =
      _$_AuthSession.fromJson;

  @override
  AuthToken? get refreshToken;
  @override
  AuthToken? get token;
  @override
  @JsonKey(ignore: true)
  _$$_AuthSessionCopyWith<_$_AuthSession> get copyWith =>
      throw _privateConstructorUsedError;
}
