// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'numbertriviaevent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NumberTriviaEvent _$NumberTriviaEventFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String?) {
    case 'default':
      return _NumberTriviaEvent.fromJson(json);
    case 'getConcreteNumber':
      return GetConcreteNumberEvent.fromJson(json);
    case 'getRandomNumber':
      return GetRandomNumberEvent.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'NumberTriviaEvent',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$NumberTriviaEventTearOff {
  const _$NumberTriviaEventTearOff();

  _NumberTriviaEvent call() {
    return _NumberTriviaEvent();
  }

  GetConcreteNumberEvent getConcreteNumber(String numberString) {
    return GetConcreteNumberEvent(
      numberString,
    );
  }

  GetRandomNumberEvent getRandomNumber() {
    return GetRandomNumberEvent();
  }

  NumberTriviaEvent fromJson(Map<String, Object?> json) {
    return NumberTriviaEvent.fromJson(json);
  }
}

/// @nodoc
const $NumberTriviaEvent = _$NumberTriviaEventTearOff();

/// @nodoc
mixin _$NumberTriviaEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String numberString) getConcreteNumber,
    required TResult Function() getRandomNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String numberString)? getConcreteNumber,
    TResult Function()? getRandomNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String numberString)? getConcreteNumber,
    TResult Function()? getRandomNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NumberTriviaEvent value) $default, {
    required TResult Function(GetConcreteNumberEvent value) getConcreteNumber,
    required TResult Function(GetRandomNumberEvent value) getRandomNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_NumberTriviaEvent value)? $default, {
    TResult Function(GetConcreteNumberEvent value)? getConcreteNumber,
    TResult Function(GetRandomNumberEvent value)? getRandomNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NumberTriviaEvent value)? $default, {
    TResult Function(GetConcreteNumberEvent value)? getConcreteNumber,
    TResult Function(GetRandomNumberEvent value)? getRandomNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberTriviaEventCopyWith<$Res> {
  factory $NumberTriviaEventCopyWith(
          NumberTriviaEvent value, $Res Function(NumberTriviaEvent) then) =
      _$NumberTriviaEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NumberTriviaEventCopyWithImpl<$Res>
    implements $NumberTriviaEventCopyWith<$Res> {
  _$NumberTriviaEventCopyWithImpl(this._value, this._then);

  final NumberTriviaEvent _value;
  // ignore: unused_field
  final $Res Function(NumberTriviaEvent) _then;
}

/// @nodoc
abstract class _$NumberTriviaEventCopyWith<$Res> {
  factory _$NumberTriviaEventCopyWith(
          _NumberTriviaEvent value, $Res Function(_NumberTriviaEvent) then) =
      __$NumberTriviaEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$NumberTriviaEventCopyWithImpl<$Res>
    extends _$NumberTriviaEventCopyWithImpl<$Res>
    implements _$NumberTriviaEventCopyWith<$Res> {
  __$NumberTriviaEventCopyWithImpl(
      _NumberTriviaEvent _value, $Res Function(_NumberTriviaEvent) _then)
      : super(_value, (v) => _then(v as _NumberTriviaEvent));

  @override
  _NumberTriviaEvent get _value => super._value as _NumberTriviaEvent;
}

/// @nodoc
@JsonSerializable()
class _$_NumberTriviaEvent implements _NumberTriviaEvent {
  _$_NumberTriviaEvent();

  factory _$_NumberTriviaEvent.fromJson(Map<String, dynamic> json) =>
      _$$_NumberTriviaEventFromJson(json);

  @override
  String toString() {
    return 'NumberTriviaEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NumberTriviaEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String numberString) getConcreteNumber,
    required TResult Function() getRandomNumber,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String numberString)? getConcreteNumber,
    TResult Function()? getRandomNumber,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String numberString)? getConcreteNumber,
    TResult Function()? getRandomNumber,
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
    TResult Function(_NumberTriviaEvent value) $default, {
    required TResult Function(GetConcreteNumberEvent value) getConcreteNumber,
    required TResult Function(GetRandomNumberEvent value) getRandomNumber,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_NumberTriviaEvent value)? $default, {
    TResult Function(GetConcreteNumberEvent value)? getConcreteNumber,
    TResult Function(GetRandomNumberEvent value)? getRandomNumber,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NumberTriviaEvent value)? $default, {
    TResult Function(GetConcreteNumberEvent value)? getConcreteNumber,
    TResult Function(GetRandomNumberEvent value)? getRandomNumber,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_NumberTriviaEventToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class _NumberTriviaEvent implements NumberTriviaEvent {
  factory _NumberTriviaEvent() = _$_NumberTriviaEvent;

  factory _NumberTriviaEvent.fromJson(Map<String, dynamic> json) =
      _$_NumberTriviaEvent.fromJson;
}

/// @nodoc
abstract class $GetConcreteNumberEventCopyWith<$Res> {
  factory $GetConcreteNumberEventCopyWith(GetConcreteNumberEvent value,
          $Res Function(GetConcreteNumberEvent) then) =
      _$GetConcreteNumberEventCopyWithImpl<$Res>;
  $Res call({String numberString});
}

/// @nodoc
class _$GetConcreteNumberEventCopyWithImpl<$Res>
    extends _$NumberTriviaEventCopyWithImpl<$Res>
    implements $GetConcreteNumberEventCopyWith<$Res> {
  _$GetConcreteNumberEventCopyWithImpl(GetConcreteNumberEvent _value,
      $Res Function(GetConcreteNumberEvent) _then)
      : super(_value, (v) => _then(v as GetConcreteNumberEvent));

  @override
  GetConcreteNumberEvent get _value => super._value as GetConcreteNumberEvent;

  @override
  $Res call({
    Object? numberString = freezed,
  }) {
    return _then(GetConcreteNumberEvent(
      numberString == freezed
          ? _value.numberString
          : numberString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetConcreteNumberEvent implements GetConcreteNumberEvent {
  _$GetConcreteNumberEvent(this.numberString);

  factory _$GetConcreteNumberEvent.fromJson(Map<String, dynamic> json) =>
      _$$GetConcreteNumberEventFromJson(json);

  @override
  final String numberString;

  @override
  String toString() {
    return 'NumberTriviaEvent.getConcreteNumber(numberString: $numberString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetConcreteNumberEvent &&
            (identical(other.numberString, numberString) ||
                other.numberString == numberString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, numberString);

  @JsonKey(ignore: true)
  @override
  $GetConcreteNumberEventCopyWith<GetConcreteNumberEvent> get copyWith =>
      _$GetConcreteNumberEventCopyWithImpl<GetConcreteNumberEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String numberString) getConcreteNumber,
    required TResult Function() getRandomNumber,
  }) {
    return getConcreteNumber(numberString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String numberString)? getConcreteNumber,
    TResult Function()? getRandomNumber,
  }) {
    return getConcreteNumber?.call(numberString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String numberString)? getConcreteNumber,
    TResult Function()? getRandomNumber,
    required TResult orElse(),
  }) {
    if (getConcreteNumber != null) {
      return getConcreteNumber(numberString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NumberTriviaEvent value) $default, {
    required TResult Function(GetConcreteNumberEvent value) getConcreteNumber,
    required TResult Function(GetRandomNumberEvent value) getRandomNumber,
  }) {
    return getConcreteNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_NumberTriviaEvent value)? $default, {
    TResult Function(GetConcreteNumberEvent value)? getConcreteNumber,
    TResult Function(GetRandomNumberEvent value)? getRandomNumber,
  }) {
    return getConcreteNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NumberTriviaEvent value)? $default, {
    TResult Function(GetConcreteNumberEvent value)? getConcreteNumber,
    TResult Function(GetRandomNumberEvent value)? getRandomNumber,
    required TResult orElse(),
  }) {
    if (getConcreteNumber != null) {
      return getConcreteNumber(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GetConcreteNumberEventToJson(this)
      ..['runtimeType'] = 'getConcreteNumber';
  }
}

abstract class GetConcreteNumberEvent implements NumberTriviaEvent {
  factory GetConcreteNumberEvent(String numberString) =
      _$GetConcreteNumberEvent;

  factory GetConcreteNumberEvent.fromJson(Map<String, dynamic> json) =
      _$GetConcreteNumberEvent.fromJson;

  String get numberString;
  @JsonKey(ignore: true)
  $GetConcreteNumberEventCopyWith<GetConcreteNumberEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRandomNumberEventCopyWith<$Res> {
  factory $GetRandomNumberEventCopyWith(GetRandomNumberEvent value,
          $Res Function(GetRandomNumberEvent) then) =
      _$GetRandomNumberEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetRandomNumberEventCopyWithImpl<$Res>
    extends _$NumberTriviaEventCopyWithImpl<$Res>
    implements $GetRandomNumberEventCopyWith<$Res> {
  _$GetRandomNumberEventCopyWithImpl(
      GetRandomNumberEvent _value, $Res Function(GetRandomNumberEvent) _then)
      : super(_value, (v) => _then(v as GetRandomNumberEvent));

  @override
  GetRandomNumberEvent get _value => super._value as GetRandomNumberEvent;
}

/// @nodoc
@JsonSerializable()
class _$GetRandomNumberEvent implements GetRandomNumberEvent {
  _$GetRandomNumberEvent();

  factory _$GetRandomNumberEvent.fromJson(Map<String, dynamic> json) =>
      _$$GetRandomNumberEventFromJson(json);

  @override
  String toString() {
    return 'NumberTriviaEvent.getRandomNumber()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetRandomNumberEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String numberString) getConcreteNumber,
    required TResult Function() getRandomNumber,
  }) {
    return getRandomNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String numberString)? getConcreteNumber,
    TResult Function()? getRandomNumber,
  }) {
    return getRandomNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String numberString)? getConcreteNumber,
    TResult Function()? getRandomNumber,
    required TResult orElse(),
  }) {
    if (getRandomNumber != null) {
      return getRandomNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NumberTriviaEvent value) $default, {
    required TResult Function(GetConcreteNumberEvent value) getConcreteNumber,
    required TResult Function(GetRandomNumberEvent value) getRandomNumber,
  }) {
    return getRandomNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_NumberTriviaEvent value)? $default, {
    TResult Function(GetConcreteNumberEvent value)? getConcreteNumber,
    TResult Function(GetRandomNumberEvent value)? getRandomNumber,
  }) {
    return getRandomNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NumberTriviaEvent value)? $default, {
    TResult Function(GetConcreteNumberEvent value)? getConcreteNumber,
    TResult Function(GetRandomNumberEvent value)? getRandomNumber,
    required TResult orElse(),
  }) {
    if (getRandomNumber != null) {
      return getRandomNumber(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GetRandomNumberEventToJson(this)
      ..['runtimeType'] = 'getRandomNumber';
  }
}

abstract class GetRandomNumberEvent implements NumberTriviaEvent {
  factory GetRandomNumberEvent() = _$GetRandomNumberEvent;

  factory GetRandomNumberEvent.fromJson(Map<String, dynamic> json) =
      _$GetRandomNumberEvent.fromJson;
}
