import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:try_clean/core/util/input_converter.dart';

import 'package:try_clean/domain/usecases/get_concrete_number_trivia.dart';
import 'package:try_clean/domain/usecases/get_random_number_trivia.dart';
import 'package:try_clean/presentation/bloc/numbertriviaevent.dart';
import 'package:try_clean/presentation/bloc/numbertriviastate.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String CACHE_FAILURE_MESSAGE = 'Cache Failure';
const String INVALID_INPUT_FAILURE_MESSAGE =
    'Invalid Input - The number must be a positive integer or zero.';

class NumberTriviaBloc extends Bloc<NumberTriviaEvent, NumberTriviaState> {
  NumberTriviaBloc({
    required this.inputConverter,
    required this.getConcreteNumberTrivia,
    required this.getRandomNumberTrivia,
  }) : super(EmptyState());

  final GetConcreteNumberTrivia getConcreteNumberTrivia;
  final GetRandomNumberTrivia getRandomNumberTrivia;
  final InputConverter inputConverter;

  // NumberTriviaState get initialState => EmptyState();

  @override
  Stream<NumberTriviaState> mapEventToState(NumberTriviaEvent event) async* {
    if (event is GetConcreteNumberEvent) {
      final inputEither =
          inputConverter.stringToUnsignedInteger(event.numberString);

      yield* inputEither.fold((failure) async* {
        yield ErrorState(message: INVALID_INPUT_FAILURE_MESSAGE);
      },
          // Although the "success case" doesn't interest us with the current test,
          // we still have to handle it somehow.
          (integer) async* {
        yield EmptyState();
      });
    }
  }
}
