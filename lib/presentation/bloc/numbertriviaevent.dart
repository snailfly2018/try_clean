import 'package:freezed_annotation/freezed_annotation.dart';

part 'numbertriviaevent.freezed.dart';
part 'numbertriviaevent.g.dart';

@freezed
class NumberTriviaEvent with _$NumberTriviaEvent {
  factory NumberTriviaEvent() = _NumberTriviaEvent;
  factory NumberTriviaEvent.getConcreteNumber(String numberString) = GetConcreteNumberEvent;
  factory NumberTriviaEvent.getRandomNumber() = GetRandomNumberEvent;

  factory NumberTriviaEvent.fromJson(Map<String, dynamic> json) =>
      _$NumberTriviaEventFromJson(json);
}
