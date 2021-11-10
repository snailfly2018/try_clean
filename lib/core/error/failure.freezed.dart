// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  _Failure call() {
    return _Failure();
  }

  ServerFailure serverFailure() {
    return ServerFailure();
  }

  CacheFailure cacheFailure() {
    return CacheFailure();
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() serverFailure,
    required TResult Function() cacheFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? serverFailure,
    TResult Function()? cacheFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? serverFailure,
    TResult Function()? cacheFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Failure value) $default, {
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(CacheFailure value) cacheFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(CacheFailure value)? cacheFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;
}

/// @nodoc

class _$_Failure implements _Failure {
  _$_Failure();

  @override
  String toString() {
    return 'Failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() serverFailure,
    required TResult Function() cacheFailure,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? serverFailure,
    TResult Function()? cacheFailure,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? serverFailure,
    TResult Function()? cacheFailure,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Failure value) $default, {
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(CacheFailure value) cacheFailure,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(CacheFailure value)? cacheFailure,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _Failure implements Failure {
  factory _Failure() = _$_Failure;
}

/// @nodoc
abstract class $ServerFailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(
          ServerFailure value, $Res Function(ServerFailure) then) =
      _$ServerFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(
      ServerFailure _value, $Res Function(ServerFailure) _then)
      : super(_value, (v) => _then(v as ServerFailure));

  @override
  ServerFailure get _value => super._value as ServerFailure;
}

/// @nodoc

class _$ServerFailure implements ServerFailure {
  _$ServerFailure();

  @override
  String toString() {
    return 'Failure.serverFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ServerFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() serverFailure,
    required TResult Function() cacheFailure,
  }) {
    return serverFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? serverFailure,
    TResult Function()? cacheFailure,
  }) {
    return serverFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? serverFailure,
    TResult Function()? cacheFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Failure value) $default, {
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(CacheFailure value) cacheFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(CacheFailure value)? cacheFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements Failure {
  factory ServerFailure() = _$ServerFailure;
}

/// @nodoc
abstract class $CacheFailureCopyWith<$Res> {
  factory $CacheFailureCopyWith(
          CacheFailure value, $Res Function(CacheFailure) then) =
      _$CacheFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$CacheFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $CacheFailureCopyWith<$Res> {
  _$CacheFailureCopyWithImpl(
      CacheFailure _value, $Res Function(CacheFailure) _then)
      : super(_value, (v) => _then(v as CacheFailure));

  @override
  CacheFailure get _value => super._value as CacheFailure;
}

/// @nodoc

class _$CacheFailure implements CacheFailure {
  _$CacheFailure();

  @override
  String toString() {
    return 'Failure.cacheFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CacheFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() serverFailure,
    required TResult Function() cacheFailure,
  }) {
    return cacheFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? serverFailure,
    TResult Function()? cacheFailure,
  }) {
    return cacheFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? serverFailure,
    TResult Function()? cacheFailure,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Failure value) $default, {
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(CacheFailure value) cacheFailure,
  }) {
    return cacheFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(CacheFailure value)? cacheFailure,
  }) {
    return cacheFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(this);
    }
    return orElse();
  }
}

abstract class CacheFailure implements Failure {
  factory CacheFailure() = _$CacheFailure;
}
