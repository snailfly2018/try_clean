// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'numbertriviastate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NumberTriviaState _$NumberTriviaStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String?) {
    case 'default':
      return _NumberTriviaState.fromJson(json);
    case 'empty':
      return EmptyState.fromJson(json);
    case 'loading':
      return LoadingState.fromJson(json);
    case 'loaded':
      return LoadedState.fromJson(json);
    case 'error':
      return ErrorState.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'NumberTriviaState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$NumberTriviaStateTearOff {
  const _$NumberTriviaStateTearOff();

  _NumberTriviaState call() {
    return _NumberTriviaState();
  }

  EmptyState empty() {
    return EmptyState();
  }

  LoadingState loading() {
    return LoadingState();
  }

  LoadedState loaded({required NumberTrivia numberTrivia}) {
    return LoadedState(
      numberTrivia: numberTrivia,
    );
  }

  ErrorState error({required String message}) {
    return ErrorState(
      message: message,
    );
  }

  NumberTriviaState fromJson(Map<String, Object?> json) {
    return NumberTriviaState.fromJson(json);
  }
}

/// @nodoc
const $NumberTriviaState = _$NumberTriviaStateTearOff();

/// @nodoc
mixin _$NumberTriviaState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(NumberTrivia numberTrivia) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(NumberTrivia numberTrivia)? loaded,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(NumberTrivia numberTrivia)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NumberTriviaState value) $default, {
    required TResult Function(EmptyState value) empty,
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_NumberTriviaState value)? $default, {
    TResult Function(EmptyState value)? empty,
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NumberTriviaState value)? $default, {
    TResult Function(EmptyState value)? empty,
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberTriviaStateCopyWith<$Res> {
  factory $NumberTriviaStateCopyWith(
          NumberTriviaState value, $Res Function(NumberTriviaState) then) =
      _$NumberTriviaStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NumberTriviaStateCopyWithImpl<$Res>
    implements $NumberTriviaStateCopyWith<$Res> {
  _$NumberTriviaStateCopyWithImpl(this._value, this._then);

  final NumberTriviaState _value;
  // ignore: unused_field
  final $Res Function(NumberTriviaState) _then;
}

/// @nodoc
abstract class _$NumberTriviaStateCopyWith<$Res> {
  factory _$NumberTriviaStateCopyWith(
          _NumberTriviaState value, $Res Function(_NumberTriviaState) then) =
      __$NumberTriviaStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$NumberTriviaStateCopyWithImpl<$Res>
    extends _$NumberTriviaStateCopyWithImpl<$Res>
    implements _$NumberTriviaStateCopyWith<$Res> {
  __$NumberTriviaStateCopyWithImpl(
      _NumberTriviaState _value, $Res Function(_NumberTriviaState) _then)
      : super(_value, (v) => _then(v as _NumberTriviaState));

  @override
  _NumberTriviaState get _value => super._value as _NumberTriviaState;
}

/// @nodoc
@JsonSerializable()
class _$_NumberTriviaState implements _NumberTriviaState {
  _$_NumberTriviaState();

  factory _$_NumberTriviaState.fromJson(Map<String, dynamic> json) =>
      _$$_NumberTriviaStateFromJson(json);

  @override
  String toString() {
    return 'NumberTriviaState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NumberTriviaState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(NumberTrivia numberTrivia) loaded,
    required TResult Function(String message) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(NumberTrivia numberTrivia)? loaded,
    TResult Function(String message)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(NumberTrivia numberTrivia)? loaded,
    TResult Function(String message)? error,
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
    TResult Function(_NumberTriviaState value) $default, {
    required TResult Function(EmptyState value) empty,
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(ErrorState value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_NumberTriviaState value)? $default, {
    TResult Function(EmptyState value)? empty,
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ErrorState value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NumberTriviaState value)? $default, {
    TResult Function(EmptyState value)? empty,
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_NumberTriviaStateToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class _NumberTriviaState implements NumberTriviaState {
  factory _NumberTriviaState() = _$_NumberTriviaState;

  factory _NumberTriviaState.fromJson(Map<String, dynamic> json) =
      _$_NumberTriviaState.fromJson;
}

/// @nodoc
abstract class $EmptyStateCopyWith<$Res> {
  factory $EmptyStateCopyWith(
          EmptyState value, $Res Function(EmptyState) then) =
      _$EmptyStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyStateCopyWithImpl<$Res>
    extends _$NumberTriviaStateCopyWithImpl<$Res>
    implements $EmptyStateCopyWith<$Res> {
  _$EmptyStateCopyWithImpl(EmptyState _value, $Res Function(EmptyState) _then)
      : super(_value, (v) => _then(v as EmptyState));

  @override
  EmptyState get _value => super._value as EmptyState;
}

/// @nodoc
@JsonSerializable()
class _$EmptyState implements EmptyState {
  _$EmptyState();

  factory _$EmptyState.fromJson(Map<String, dynamic> json) =>
      _$$EmptyStateFromJson(json);

  @override
  String toString() {
    return 'NumberTriviaState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EmptyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(NumberTrivia numberTrivia) loaded,
    required TResult Function(String message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(NumberTrivia numberTrivia)? loaded,
    TResult Function(String message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(NumberTrivia numberTrivia)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NumberTriviaState value) $default, {
    required TResult Function(EmptyState value) empty,
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(ErrorState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_NumberTriviaState value)? $default, {
    TResult Function(EmptyState value)? empty,
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ErrorState value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NumberTriviaState value)? $default, {
    TResult Function(EmptyState value)? empty,
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EmptyStateToJson(this)..['runtimeType'] = 'empty';
  }
}

abstract class EmptyState implements NumberTriviaState {
  factory EmptyState() = _$EmptyState;

  factory EmptyState.fromJson(Map<String, dynamic> json) =
      _$EmptyState.fromJson;
}

/// @nodoc
abstract class $LoadingStateCopyWith<$Res> {
  factory $LoadingStateCopyWith(
          LoadingState value, $Res Function(LoadingState) then) =
      _$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingStateCopyWithImpl<$Res>
    extends _$NumberTriviaStateCopyWithImpl<$Res>
    implements $LoadingStateCopyWith<$Res> {
  _$LoadingStateCopyWithImpl(
      LoadingState _value, $Res Function(LoadingState) _then)
      : super(_value, (v) => _then(v as LoadingState));

  @override
  LoadingState get _value => super._value as LoadingState;
}

/// @nodoc
@JsonSerializable()
class _$LoadingState implements LoadingState {
  _$LoadingState();

  factory _$LoadingState.fromJson(Map<String, dynamic> json) =>
      _$$LoadingStateFromJson(json);

  @override
  String toString() {
    return 'NumberTriviaState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(NumberTrivia numberTrivia) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(NumberTrivia numberTrivia)? loaded,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(NumberTrivia numberTrivia)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NumberTriviaState value) $default, {
    required TResult Function(EmptyState value) empty,
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_NumberTriviaState value)? $default, {
    TResult Function(EmptyState value)? empty,
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NumberTriviaState value)? $default, {
    TResult Function(EmptyState value)? empty,
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoadingStateToJson(this)..['runtimeType'] = 'loading';
  }
}

abstract class LoadingState implements NumberTriviaState {
  factory LoadingState() = _$LoadingState;

  factory LoadingState.fromJson(Map<String, dynamic> json) =
      _$LoadingState.fromJson;
}

/// @nodoc
abstract class $LoadedStateCopyWith<$Res> {
  factory $LoadedStateCopyWith(
          LoadedState value, $Res Function(LoadedState) then) =
      _$LoadedStateCopyWithImpl<$Res>;
  $Res call({NumberTrivia numberTrivia});

  $NumberTriviaCopyWith<$Res> get numberTrivia;
}

/// @nodoc
class _$LoadedStateCopyWithImpl<$Res>
    extends _$NumberTriviaStateCopyWithImpl<$Res>
    implements $LoadedStateCopyWith<$Res> {
  _$LoadedStateCopyWithImpl(
      LoadedState _value, $Res Function(LoadedState) _then)
      : super(_value, (v) => _then(v as LoadedState));

  @override
  LoadedState get _value => super._value as LoadedState;

  @override
  $Res call({
    Object? numberTrivia = freezed,
  }) {
    return _then(LoadedState(
      numberTrivia: numberTrivia == freezed
          ? _value.numberTrivia
          : numberTrivia // ignore: cast_nullable_to_non_nullable
              as NumberTrivia,
    ));
  }

  @override
  $NumberTriviaCopyWith<$Res> get numberTrivia {
    return $NumberTriviaCopyWith<$Res>(_value.numberTrivia, (value) {
      return _then(_value.copyWith(numberTrivia: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$LoadedState implements LoadedState {
  _$LoadedState({required this.numberTrivia});

  factory _$LoadedState.fromJson(Map<String, dynamic> json) =>
      _$$LoadedStateFromJson(json);

  @override
  final NumberTrivia numberTrivia;

  @override
  String toString() {
    return 'NumberTriviaState.loaded(numberTrivia: $numberTrivia)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedState &&
            (identical(other.numberTrivia, numberTrivia) ||
                other.numberTrivia == numberTrivia));
  }

  @override
  int get hashCode => Object.hash(runtimeType, numberTrivia);

  @JsonKey(ignore: true)
  @override
  $LoadedStateCopyWith<LoadedState> get copyWith =>
      _$LoadedStateCopyWithImpl<LoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(NumberTrivia numberTrivia) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(numberTrivia);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(NumberTrivia numberTrivia)? loaded,
    TResult Function(String message)? error,
  }) {
    return loaded?.call(numberTrivia);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(NumberTrivia numberTrivia)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(numberTrivia);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NumberTriviaState value) $default, {
    required TResult Function(EmptyState value) empty,
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(ErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_NumberTriviaState value)? $default, {
    TResult Function(EmptyState value)? empty,
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NumberTriviaState value)? $default, {
    TResult Function(EmptyState value)? empty,
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoadedStateToJson(this)..['runtimeType'] = 'loaded';
  }
}

abstract class LoadedState implements NumberTriviaState {
  factory LoadedState({required NumberTrivia numberTrivia}) = _$LoadedState;

  factory LoadedState.fromJson(Map<String, dynamic> json) =
      _$LoadedState.fromJson;

  NumberTrivia get numberTrivia;
  @JsonKey(ignore: true)
  $LoadedStateCopyWith<LoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorStateCopyWith<$Res> {
  factory $ErrorStateCopyWith(
          ErrorState value, $Res Function(ErrorState) then) =
      _$ErrorStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorStateCopyWithImpl<$Res>
    extends _$NumberTriviaStateCopyWithImpl<$Res>
    implements $ErrorStateCopyWith<$Res> {
  _$ErrorStateCopyWithImpl(ErrorState _value, $Res Function(ErrorState) _then)
      : super(_value, (v) => _then(v as ErrorState));

  @override
  ErrorState get _value => super._value as ErrorState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ErrorState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorState implements ErrorState {
  _$ErrorState({required this.message});

  factory _$ErrorState.fromJson(Map<String, dynamic> json) =>
      _$$ErrorStateFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'NumberTriviaState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  $ErrorStateCopyWith<ErrorState> get copyWith =>
      _$ErrorStateCopyWithImpl<ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(NumberTrivia numberTrivia) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(NumberTrivia numberTrivia)? loaded,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(NumberTrivia numberTrivia)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NumberTriviaState value) $default, {
    required TResult Function(EmptyState value) empty,
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_NumberTriviaState value)? $default, {
    TResult Function(EmptyState value)? empty,
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NumberTriviaState value)? $default, {
    TResult Function(EmptyState value)? empty,
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorStateToJson(this)..['runtimeType'] = 'error';
  }
}

abstract class ErrorState implements NumberTriviaState {
  factory ErrorState({required String message}) = _$ErrorState;

  factory ErrorState.fromJson(Map<String, dynamic> json) =
      _$ErrorState.fromJson;

  String get message;
  @JsonKey(ignore: true)
  $ErrorStateCopyWith<ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
