import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:try_clean/core/util/input_converter.dart';

import 'package:try_clean/domain/usecases/get_concrete_number_trivia.dart';
import 'package:try_clean/domain/usecases/get_random_number_trivia.dart';
import 'package:try_clean/presentation/bloc/numbertriviaevent.dart';
import 'package:try_clean/presentation/bloc/numbertriviastate.dart';

class NumberTriviaBloc extends Bloc<NumberTriviaEvent, NumberTriviaState> {
  NumberTriviaBloc({
    required this.inputConverter,
    required this.getConcreteNumberTrivia,
    required this.getRandomNumberTrivia,
  }) : super(initialState);

  final GetConcreteNumberTrivia getConcreteNumberTrivia;
  final GetRandomNumberTrivia getRandomNumberTrivia;
  final InputConverter inputConverter;

  static NumberTriviaState get initialState => EmptyState();

  @override
  Stream<NumberTriviaState> mapEventToState(NumberTriviaEvent event) {
    // TODO: implement mapEventToState
    return super.mapEventToState(event);
  }
}
