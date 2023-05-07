// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_router.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BaseRoutePath {
  BaseRoutePath? get parent => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BaseRoutePathCopyWith<BaseRoutePath> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseRoutePathCopyWith<$Res> {
  factory $BaseRoutePathCopyWith(
          BaseRoutePath value, $Res Function(BaseRoutePath) then) =
      _$BaseRoutePathCopyWithImpl<$Res, BaseRoutePath>;
  @useResult
  $Res call({BaseRoutePath? parent, String path});

  $BaseRoutePathCopyWith<$Res>? get parent;
}

/// @nodoc
class _$BaseRoutePathCopyWithImpl<$Res, $Val extends BaseRoutePath>
    implements $BaseRoutePathCopyWith<$Res> {
  _$BaseRoutePathCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parent = freezed,
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as BaseRoutePath?,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseRoutePathCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $BaseRoutePathCopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BaseRoutePathCopyWith<$Res>
    implements $BaseRoutePathCopyWith<$Res> {
  factory _$$_BaseRoutePathCopyWith(
          _$_BaseRoutePath value, $Res Function(_$_BaseRoutePath) then) =
      __$$_BaseRoutePathCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseRoutePath? parent, String path});

  @override
  $BaseRoutePathCopyWith<$Res>? get parent;
}

/// @nodoc
class __$$_BaseRoutePathCopyWithImpl<$Res>
    extends _$BaseRoutePathCopyWithImpl<$Res, _$_BaseRoutePath>
    implements _$$_BaseRoutePathCopyWith<$Res> {
  __$$_BaseRoutePathCopyWithImpl(
      _$_BaseRoutePath _value, $Res Function(_$_BaseRoutePath) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parent = freezed,
    Object? path = null,
  }) {
    return _then(_$_BaseRoutePath(
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as BaseRoutePath?,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BaseRoutePath implements _BaseRoutePath {
  const _$_BaseRoutePath({required this.parent, required this.path});

  @override
  final BaseRoutePath? parent;
  @override
  final String path;

  @override
  String toString() {
    return 'BaseRoutePath(parent: $parent, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BaseRoutePath &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BaseRoutePathCopyWith<_$_BaseRoutePath> get copyWith =>
      __$$_BaseRoutePathCopyWithImpl<_$_BaseRoutePath>(this, _$identity);
}

abstract class _BaseRoutePath implements BaseRoutePath {
  const factory _BaseRoutePath(
      {required final BaseRoutePath? parent,
      required final String path}) = _$_BaseRoutePath;

  @override
  BaseRoutePath? get parent;
  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$$_BaseRoutePathCopyWith<_$_BaseRoutePath> get copyWith =>
      throw _privateConstructorUsedError;
}
