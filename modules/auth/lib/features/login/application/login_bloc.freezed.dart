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

/// @nodoc
mixin _$LoginState {
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

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
  $Res call({String? phoneNumber, String? password});
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
    Object? phoneNumber = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
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
  $Res call({String? phoneNumber, String? password});
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
    Object? phoneNumber = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_LoginState(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState({this.phoneNumber, this.password});

  @override
  final String? phoneNumber;
  @override
  final String? password;

  @override
  String toString() {
    return 'LoginState(phoneNumber: $phoneNumber, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final String? phoneNumber, final String? password}) = _$_LoginState;

  @override
  String? get phoneNumber;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) onPhoneNumberChanged,
    required TResult Function(String password) onPasswordChanged,
    required TResult Function() onLoginPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? onPhoneNumberChanged,
    TResult? Function(String password)? onPasswordChanged,
    TResult? Function()? onLoginPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? onPhoneNumberChanged,
    TResult Function(String password)? onPasswordChanged,
    TResult Function()? onLoginPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventOnPhoneNumberChanged value)
        onPhoneNumberChanged,
    required TResult Function(LoginEventOnPasswordChanged value)
        onPasswordChanged,
    required TResult Function(LoginEventOnLoginPressed value) onLoginPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEventOnPhoneNumberChanged value)?
        onPhoneNumberChanged,
    TResult? Function(LoginEventOnPasswordChanged value)? onPasswordChanged,
    TResult? Function(LoginEventOnLoginPressed value)? onLoginPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventOnPhoneNumberChanged value)?
        onPhoneNumberChanged,
    TResult Function(LoginEventOnPasswordChanged value)? onPasswordChanged,
    TResult Function(LoginEventOnLoginPressed value)? onLoginPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginEventOnPhoneNumberChangedCopyWith<$Res> {
  factory _$$LoginEventOnPhoneNumberChangedCopyWith(
          _$LoginEventOnPhoneNumberChanged value,
          $Res Function(_$LoginEventOnPhoneNumberChanged) then) =
      __$$LoginEventOnPhoneNumberChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$LoginEventOnPhoneNumberChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginEventOnPhoneNumberChanged>
    implements _$$LoginEventOnPhoneNumberChangedCopyWith<$Res> {
  __$$LoginEventOnPhoneNumberChangedCopyWithImpl(
      _$LoginEventOnPhoneNumberChanged _value,
      $Res Function(_$LoginEventOnPhoneNumberChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$LoginEventOnPhoneNumberChanged(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginEventOnPhoneNumberChanged
    implements LoginEventOnPhoneNumberChanged {
  const _$LoginEventOnPhoneNumberChanged(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'LoginEvent.onPhoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEventOnPhoneNumberChanged &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEventOnPhoneNumberChangedCopyWith<_$LoginEventOnPhoneNumberChanged>
      get copyWith => __$$LoginEventOnPhoneNumberChangedCopyWithImpl<
          _$LoginEventOnPhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) onPhoneNumberChanged,
    required TResult Function(String password) onPasswordChanged,
    required TResult Function() onLoginPressed,
  }) {
    return onPhoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? onPhoneNumberChanged,
    TResult? Function(String password)? onPasswordChanged,
    TResult? Function()? onLoginPressed,
  }) {
    return onPhoneNumberChanged?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? onPhoneNumberChanged,
    TResult Function(String password)? onPasswordChanged,
    TResult Function()? onLoginPressed,
    required TResult orElse(),
  }) {
    if (onPhoneNumberChanged != null) {
      return onPhoneNumberChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventOnPhoneNumberChanged value)
        onPhoneNumberChanged,
    required TResult Function(LoginEventOnPasswordChanged value)
        onPasswordChanged,
    required TResult Function(LoginEventOnLoginPressed value) onLoginPressed,
  }) {
    return onPhoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEventOnPhoneNumberChanged value)?
        onPhoneNumberChanged,
    TResult? Function(LoginEventOnPasswordChanged value)? onPasswordChanged,
    TResult? Function(LoginEventOnLoginPressed value)? onLoginPressed,
  }) {
    return onPhoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventOnPhoneNumberChanged value)?
        onPhoneNumberChanged,
    TResult Function(LoginEventOnPasswordChanged value)? onPasswordChanged,
    TResult Function(LoginEventOnLoginPressed value)? onLoginPressed,
    required TResult orElse(),
  }) {
    if (onPhoneNumberChanged != null) {
      return onPhoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class LoginEventOnPhoneNumberChanged implements LoginEvent {
  const factory LoginEventOnPhoneNumberChanged(final String phoneNumber) =
      _$LoginEventOnPhoneNumberChanged;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$LoginEventOnPhoneNumberChangedCopyWith<_$LoginEventOnPhoneNumberChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginEventOnPasswordChangedCopyWith<$Res> {
  factory _$$LoginEventOnPasswordChangedCopyWith(
          _$LoginEventOnPasswordChanged value,
          $Res Function(_$LoginEventOnPasswordChanged) then) =
      __$$LoginEventOnPasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$LoginEventOnPasswordChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginEventOnPasswordChanged>
    implements _$$LoginEventOnPasswordChangedCopyWith<$Res> {
  __$$LoginEventOnPasswordChangedCopyWithImpl(
      _$LoginEventOnPasswordChanged _value,
      $Res Function(_$LoginEventOnPasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$LoginEventOnPasswordChanged(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginEventOnPasswordChanged implements LoginEventOnPasswordChanged {
  const _$LoginEventOnPasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.onPasswordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEventOnPasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEventOnPasswordChangedCopyWith<_$LoginEventOnPasswordChanged>
      get copyWith => __$$LoginEventOnPasswordChangedCopyWithImpl<
          _$LoginEventOnPasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) onPhoneNumberChanged,
    required TResult Function(String password) onPasswordChanged,
    required TResult Function() onLoginPressed,
  }) {
    return onPasswordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? onPhoneNumberChanged,
    TResult? Function(String password)? onPasswordChanged,
    TResult? Function()? onLoginPressed,
  }) {
    return onPasswordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? onPhoneNumberChanged,
    TResult Function(String password)? onPasswordChanged,
    TResult Function()? onLoginPressed,
    required TResult orElse(),
  }) {
    if (onPasswordChanged != null) {
      return onPasswordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventOnPhoneNumberChanged value)
        onPhoneNumberChanged,
    required TResult Function(LoginEventOnPasswordChanged value)
        onPasswordChanged,
    required TResult Function(LoginEventOnLoginPressed value) onLoginPressed,
  }) {
    return onPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEventOnPhoneNumberChanged value)?
        onPhoneNumberChanged,
    TResult? Function(LoginEventOnPasswordChanged value)? onPasswordChanged,
    TResult? Function(LoginEventOnLoginPressed value)? onLoginPressed,
  }) {
    return onPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventOnPhoneNumberChanged value)?
        onPhoneNumberChanged,
    TResult Function(LoginEventOnPasswordChanged value)? onPasswordChanged,
    TResult Function(LoginEventOnLoginPressed value)? onLoginPressed,
    required TResult orElse(),
  }) {
    if (onPasswordChanged != null) {
      return onPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class LoginEventOnPasswordChanged implements LoginEvent {
  const factory LoginEventOnPasswordChanged(final String password) =
      _$LoginEventOnPasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$$LoginEventOnPasswordChangedCopyWith<_$LoginEventOnPasswordChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginEventOnLoginPressedCopyWith<$Res> {
  factory _$$LoginEventOnLoginPressedCopyWith(_$LoginEventOnLoginPressed value,
          $Res Function(_$LoginEventOnLoginPressed) then) =
      __$$LoginEventOnLoginPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginEventOnLoginPressedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginEventOnLoginPressed>
    implements _$$LoginEventOnLoginPressedCopyWith<$Res> {
  __$$LoginEventOnLoginPressedCopyWithImpl(_$LoginEventOnLoginPressed _value,
      $Res Function(_$LoginEventOnLoginPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginEventOnLoginPressed implements LoginEventOnLoginPressed {
  const _$LoginEventOnLoginPressed();

  @override
  String toString() {
    return 'LoginEvent.onLoginPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEventOnLoginPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) onPhoneNumberChanged,
    required TResult Function(String password) onPasswordChanged,
    required TResult Function() onLoginPressed,
  }) {
    return onLoginPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? onPhoneNumberChanged,
    TResult? Function(String password)? onPasswordChanged,
    TResult? Function()? onLoginPressed,
  }) {
    return onLoginPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? onPhoneNumberChanged,
    TResult Function(String password)? onPasswordChanged,
    TResult Function()? onLoginPressed,
    required TResult orElse(),
  }) {
    if (onLoginPressed != null) {
      return onLoginPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventOnPhoneNumberChanged value)
        onPhoneNumberChanged,
    required TResult Function(LoginEventOnPasswordChanged value)
        onPasswordChanged,
    required TResult Function(LoginEventOnLoginPressed value) onLoginPressed,
  }) {
    return onLoginPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEventOnPhoneNumberChanged value)?
        onPhoneNumberChanged,
    TResult? Function(LoginEventOnPasswordChanged value)? onPasswordChanged,
    TResult? Function(LoginEventOnLoginPressed value)? onLoginPressed,
  }) {
    return onLoginPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventOnPhoneNumberChanged value)?
        onPhoneNumberChanged,
    TResult Function(LoginEventOnPasswordChanged value)? onPasswordChanged,
    TResult Function(LoginEventOnLoginPressed value)? onLoginPressed,
    required TResult orElse(),
  }) {
    if (onLoginPressed != null) {
      return onLoginPressed(this);
    }
    return orElse();
  }
}

abstract class LoginEventOnLoginPressed implements LoginEvent {
  const factory LoginEventOnLoginPressed() = _$LoginEventOnLoginPressed;
}
