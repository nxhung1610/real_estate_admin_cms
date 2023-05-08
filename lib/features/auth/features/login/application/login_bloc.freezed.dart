// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginState _$LoginStateFromJson(Map<String, dynamic> json) {
  return _LoginState.fromJson(json);
}

/// @nodoc
mixin _$LoginState {
  PhoneNumberAuth? get phoneNumberAuth => throw _privateConstructorUsedError;
  PasswordAuth? get passwordAuth => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  bool get passwordVisible => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {PhoneNumberAuth? phoneNumberAuth,
      PasswordAuth? passwordAuth,
      Status status,
      bool passwordVisible});

  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumberAuth = freezed,
    Object? passwordAuth = freezed,
    Object? status = null,
    Object? passwordVisible = null,
  }) {
    return _then(_value.copyWith(
      phoneNumberAuth: freezed == phoneNumberAuth
          ? _value.phoneNumberAuth
          : phoneNumberAuth // ignore: cast_nullable_to_non_nullable
              as PhoneNumberAuth?,
      passwordAuth: freezed == passwordAuth
          ? _value.passwordAuth
          : passwordAuth // ignore: cast_nullable_to_non_nullable
              as PasswordAuth?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      passwordVisible: null == passwordVisible
          ? _value.passwordVisible
          : passwordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PhoneNumberAuth? phoneNumberAuth,
      PasswordAuth? passwordAuth,
      Status status,
      bool passwordVisible});

  @override
  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginState>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumberAuth = freezed,
    Object? passwordAuth = freezed,
    Object? status = null,
    Object? passwordVisible = null,
  }) {
    return _then(_$_LoginState(
      phoneNumberAuth: freezed == phoneNumberAuth
          ? _value.phoneNumberAuth
          : phoneNumberAuth // ignore: cast_nullable_to_non_nullable
              as PhoneNumberAuth?,
      passwordAuth: freezed == passwordAuth
          ? _value.passwordAuth
          : passwordAuth // ignore: cast_nullable_to_non_nullable
              as PasswordAuth?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      passwordVisible: null == passwordVisible
          ? _value.passwordVisible
          : passwordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {this.phoneNumberAuth,
      this.passwordAuth,
      this.status = const Status.idle(),
      this.passwordVisible = false});

  factory _$_LoginState.fromJson(Map<String, dynamic> json) =>
      _$$_LoginStateFromJson(json);

  @override
  final PhoneNumberAuth? phoneNumberAuth;
  @override
  final PasswordAuth? passwordAuth;
  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final bool passwordVisible;

  @override
  String toString() {
    return 'LoginState(phoneNumberAuth: $phoneNumberAuth, passwordAuth: $passwordAuth, status: $status, passwordVisible: $passwordVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            (identical(other.phoneNumberAuth, phoneNumberAuth) ||
                other.phoneNumberAuth == phoneNumberAuth) &&
            (identical(other.passwordAuth, passwordAuth) ||
                other.passwordAuth == passwordAuth) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.passwordVisible, passwordVisible) ||
                other.passwordVisible == passwordVisible));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, phoneNumberAuth, passwordAuth, status, passwordVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginStateToJson(
      this,
    );
  }
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final PhoneNumberAuth? phoneNumberAuth,
      final PasswordAuth? passwordAuth,
      final Status status,
      final bool passwordVisible}) = _$_LoginState;

  factory _LoginState.fromJson(Map<String, dynamic> json) =
      _$_LoginState.fromJson;

  @override
  PhoneNumberAuth? get phoneNumberAuth;
  @override
  PasswordAuth? get passwordAuth;
  @override
  Status get status;
  @override
  bool get passwordVisible;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginEvent {}

/// @nodoc

class _$LoginEventOnPhoneNumberChange implements LoginEventOnPhoneNumberChange {
  const _$LoginEventOnPhoneNumberChange(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEventOnPhoneNumberChange &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);
}

abstract class LoginEventOnPhoneNumberChange implements LoginEvent {
  const factory LoginEventOnPhoneNumberChange(final String phoneNumber) =
      _$LoginEventOnPhoneNumberChange;

  String get phoneNumber;
}

/// @nodoc

class _$LoginEventOnPasswordChange implements LoginEventOnPasswordChange {
  const _$LoginEventOnPasswordChange(this.password);

  @override
  final String password;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEventOnPasswordChange &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);
}

abstract class LoginEventOnPasswordChange implements LoginEvent {
  const factory LoginEventOnPasswordChange(final String password) =
      _$LoginEventOnPasswordChange;

  String get password;
}

/// @nodoc

class _$LoginEventOnLogin implements LoginEventOnLogin {
  const _$LoginEventOnLogin();

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginEventOnLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class LoginEventOnLogin implements LoginEvent {
  const factory LoginEventOnLogin() = _$LoginEventOnLogin;
}

/// @nodoc

class _$LoginEventOnPasswordVisibleChange
    implements LoginEventOnPasswordVisibleChange {
  const _$LoginEventOnPasswordVisibleChange();

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEventOnPasswordVisibleChange);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class LoginEventOnPasswordVisibleChange implements LoginEvent {
  const factory LoginEventOnPasswordVisibleChange() =
      _$LoginEventOnPasswordVisibleChange;
}
