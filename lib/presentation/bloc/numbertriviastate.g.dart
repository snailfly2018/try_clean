// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'numbertriviastate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NumberTriviaState _$$_NumberTriviaStateFromJson(Map<String, dynamic> json) =>
    _$_NumberTriviaState();

Map<String, dynamic> _$$_NumberTriviaStateToJson(
        _$_NumberTriviaState instance) =>
    <String, dynamic>{};

_$EmptyState _$$EmptyStateFromJson(Map<String, dynamic> json) => _$EmptyState();

Map<String, dynamic> _$$EmptyStateToJson(_$EmptyState instance) =>
    <String, dynamic>{};

_$LoadingState _$$LoadingStateFromJson(Map<String, dynamic> json) =>
    _$LoadingState();

Map<String, dynamic> _$$LoadingStateToJson(_$LoadingState instance) =>
    <String, dynamic>{};

_$LoadedState _$$LoadedStateFromJson(Map<String, dynamic> json) =>
    _$LoadedState(
      numberTrivia:
          NumberTrivia.fromJson(json['numberTrivia'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoadedStateToJson(_$LoadedState instance) =>
    <String, dynamic>{
      'numberTrivia': instance.numberTrivia,
    };

_$ErrorState _$$ErrorStateFromJson(Map<String, dynamic> json) => _$ErrorState(
      message: json['message'] as String,
    );

Map<String, dynamic> _$$ErrorStateToJson(_$ErrorState instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
