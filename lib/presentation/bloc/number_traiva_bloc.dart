import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:try_clean/core/error/failure.dart';
import 'package:try_clean/core/util/input_converter.dart';
import 'package:try_clean/domain/entities/numbertrivia.dart';

import 'package:try_clean/domain/usecases/get_concrete_number_trivia.dart';
import 'package:try_clean/domain/usecases/get_random_number_trivia.dart';
import 'package:try_clean/presentation/bloc/numbertriviaevent.dart';
import 'package:try_clean/presentation/bloc/numbertriviastate.dart';

const String serverFailureMessage = 'Server Failure';
const String cacheFailureMessage = 'Cache Failure';
const String invalidInputFailureMessage =
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
  ///Either的数据在这里都会fold开了，在state里没有Either类型的数据了

  @override
  Stream<NumberTriviaState> mapEventToState(NumberTriviaEvent event) async* {
    if (event is GetConcreteNumberEvent) {
      final inputEither =
          inputConverter.validateInt(event.numberString).run();

      yield* inputEither.match((failure) async* {
        yield ErrorState(message: invalidInputFailureMessage);
      },
          // Although the "success case" doesn't interest us with the current test,
          // we still have to handle it somehow.
          (integer) async* {
        yield LoadingState();
        final failureOrTrivia =
            await getConcreteNumberTrivia(Params(number: integer));
        yield* _eitherLoadedOrErrorState(failureOrTrivia);
      });
    } else if (event is GetRandomNumberEvent) {
      yield LoadingState();
      final failureOrTrivia = await getRandomNumberTrivia(NoParams());
      yield* _eitherLoadedOrErrorState(failureOrTrivia);
    }
  }

  ///fold处理返回的Either值
  Stream<NumberTriviaState> _eitherLoadedOrErrorState(
    Either<Failure, NumberTrivia> failureOrTrivia,
  ) async* {
    yield failureOrTrivia.fold(
      (failure) => ErrorState(
          message: failure.when(
        () => 'null',
        serverFailure: () => serverFailureMessage,
        cacheFailure: () => cacheFailureMessage,
        inputFailure: () => 'input failure',
      )),
      (trivia) => LoadedState(numberTrivia: trivia),
    );
  }

  // String _mapFailureToMessage(Failure failure) {
  //   switch (failure.runtimeType) {
  //     case ServerFailure:
  //       return SERVER_FAILURE_MESSAGE;
  //     case CacheFailure:
  //       return CACHE_FAILURE_MESSAGE;
  //     default:
  //       return 'Unexpected error';
  //   }
  // }
}
