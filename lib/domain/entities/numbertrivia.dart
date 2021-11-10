import 'package:freezed_annotation/freezed_annotation.dart';

part 'numbertrivia.freezed.dart';
part 'numbertrivia.g.dart';

@freezed
class NumberTrivia with _$NumberTrivia {
  factory NumberTrivia({
    required String text,
    required int number
  }) = _NumberTrivia;

  factory NumberTrivia.fromJson(Map<String, dynamic> json) =>
      _$NumberTriviaFromJson(json);
}
