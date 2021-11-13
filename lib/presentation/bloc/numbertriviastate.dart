import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:try_clean/domain/entities/numbertrivia.dart';

part 'numbertriviastate.freezed.dart';
part 'numbertriviastate.g.dart';

@freezed
class NumberTriviaState with _$NumberTriviaState {
  factory NumberTriviaState() = _NumberTriviaState;
  factory NumberTriviaState.empty() = EmptyState;
  factory NumberTriviaState.loading() = LoadingState;
  factory NumberTriviaState.loaded({required NumberTrivia numberTrivia}) =
      LoadedState;
  factory NumberTriviaState.error({required String message}) = ErrorState;

  factory NumberTriviaState.fromJson(Map<String, dynamic> json) =>
      _$NumberTriviaStateFromJson(json);
}
