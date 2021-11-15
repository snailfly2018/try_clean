import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/src/either.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:try_clean/core/error/failure.dart';
import 'package:try_clean/core/util/input_converter.dart';
import 'package:try_clean/domain/entities/numbertrivia.dart';
import 'package:try_clean/domain/usecases/get_concrete_number_trivia.dart';
import 'package:try_clean/domain/usecases/get_random_number_trivia.dart';
import 'package:try_clean/presentation/bloc/number_traiva_bloc.dart';
import 'package:try_clean/presentation/bloc/numbertriviaevent.dart';
import 'package:try_clean/presentation/bloc/numbertriviastate.dart';

import 'number_traiva_bloc_test.mocks.dart';

@GenerateMocks([GetConcreteNumberTrivia, GetRandomNumberTrivia, InputConverter])
void main() {
  late NumberTriviaBloc bloc;
  late MockGetConcreteNumberTrivia mockGetConcreteNumberTrivia;
  late MockGetRandomNumberTrivia mockGetRandomNumberTrivia;
  late MockInputConverter mockInputConverter;

  setUp(() {
    mockGetConcreteNumberTrivia = MockGetConcreteNumberTrivia();
    mockGetRandomNumberTrivia = MockGetRandomNumberTrivia();
    mockInputConverter = MockInputConverter();

    bloc = NumberTriviaBloc(
        inputConverter: mockInputConverter,
        getConcreteNumberTrivia: mockGetConcreteNumberTrivia,
        getRandomNumberTrivia: mockGetRandomNumberTrivia);
  });

  test('initialState should be Empty', () {
    // assert
    expect(bloc.state, equals(EmptyState()));
  });

  group('GetTriviaForConcreteNumber', () {
    // The event takes in a String
    const tNumberString = '1';
    // This is the successful output of the InputConverter
    const tNumberParsed = 1;
    // NumberTrivia instance is needed too, of course
    final tNumberTrivia = NumberTrivia(number: 1, text: 'test trivia');

    void setUpMockInputConverterSuccess() =>
        when(mockInputConverter.stringToUnsignedInteger(any))
            .thenReturn(const Right(tNumberParsed));
    test(
      'should call the InputConverter to validate and convert the string to an unsigned integer',
      () async {
        // arrange
        setUpMockInputConverterSuccess();
        when(mockGetConcreteNumberTrivia(any))
            .thenAnswer((_) async => Right(tNumberTrivia));

        // act
        bloc.add(GetConcreteNumberEvent(tNumberString));
        await untilCalled(mockInputConverter.stringToUnsignedInteger(any));
        // assert
        verify(mockInputConverter.stringToUnsignedInteger(tNumberString));
      },
    );

    test(
      'should emit [Error] when the input is invalid',
      () async {
        // arrange
        when(mockInputConverter.stringToUnsignedInteger(any))
            .thenReturn(Left(InvalidInputFailure()));
        // assert later
        final expected = [
          // The initial state is always emitted first
          // EmptyState(),
          ErrorState(message: invalidInputFailureMessage),
        ];
        expectLater(bloc.stream, emitsInOrder(expected));
        // act
        bloc.add(GetConcreteNumberEvent(tNumberString));
      },
    );

    test(
      'should get data from the concrete use case',
      () async {
        // arrange
        setUpMockInputConverterSuccess();
        when(mockGetConcreteNumberTrivia(any))
            .thenAnswer((_) async => Right(tNumberTrivia));
        // act
        bloc.add(GetConcreteNumberEvent(tNumberString));
        await untilCalled(mockGetConcreteNumberTrivia(any));
        // assert
        verify(mockGetConcreteNumberTrivia(const Params(number: tNumberParsed)));
      },
    );

    test(
      'should emit [Loading, Loaded] when data is gotten successfully',
      () async {
        // arrange
        setUpMockInputConverterSuccess();
        when(mockGetConcreteNumberTrivia(any))
            .thenAnswer((_) async => Right(tNumberTrivia));
        // assert later
        final expected = [
          // EmptyState(),
          LoadingState(),
          LoadedState(numberTrivia: tNumberTrivia),
        ];
        expectLater(bloc.stream, emitsInOrder(expected));
        // act
        bloc.add(GetConcreteNumberEvent(tNumberString));
      },
    );

        test(
      'should emit [Loading, Error] when getting data fails',
      () async {
        // arrange
        setUpMockInputConverterSuccess();
        when(mockGetConcreteNumberTrivia(any))
            .thenAnswer((_) async => Left(ServerFailure()));
        // assert later
        final expected = [
          // Empty(),
          LoadingState(),
          ErrorState(message: serverFailureMessage),
        ];
        expectLater(bloc.stream, emitsInOrder(expected));
        // act
        bloc.add(GetConcreteNumberEvent(tNumberString));
      },
    );

    test(
      'should emit [Loading, Error] with a proper message for the error when getting data fails',
      () async {
        // arrange
        setUpMockInputConverterSuccess();
        when(mockGetConcreteNumberTrivia(any))
            .thenAnswer((_) async => Left(CacheFailure()));
        // assert later
        final expected = [
          // EmptyState(),
          LoadingState(),
          ErrorState(message: cacheFailureMessage),
        ];
        expectLater(bloc.stream, emitsInOrder(expected));
        // act
        bloc.add(GetConcreteNumberEvent(tNumberString));
      },
    );
  });

    group('GetTriviaForRandomNumber', () {
    final tNumberTrivia = NumberTrivia(number: 1, text: 'test trivia');

    test(
      'should get data from the random use case',
      () async {
        // arrange
        when(mockGetRandomNumberTrivia(any))
            .thenAnswer((_) async => Right(tNumberTrivia));
        // act
        bloc.add(GetRandomNumberEvent());
        await untilCalled(mockGetRandomNumberTrivia(any));
        // assert
        verify(mockGetRandomNumberTrivia(NoParams()));
      },
    );

    test(
      'should emit [Loading, Loaded] when data is gotten successfully',
      () async {
        // arrange
        when(mockGetRandomNumberTrivia(any))
            .thenAnswer((_) async => Right(tNumberTrivia));
        // assert later
        final expected = [
          // Empty(),
          LoadingState(),
          LoadedState(numberTrivia: tNumberTrivia),
        ];
        expectLater(bloc.stream, emitsInOrder(expected));
        // act
        bloc.add(GetRandomNumberEvent());
      },
    );

    test(
      'should emit [Loading, Error] when getting data fails',
      () async {
        // arrange
        when(mockGetRandomNumberTrivia(any))
            .thenAnswer((_) async => Left(ServerFailure()));
        // assert later
        final expected = [
          // Empty(),
          LoadingState(),
          ErrorState(message: serverFailureMessage),
        ];
        expectLater(bloc.stream, emitsInOrder(expected));
        // act
        bloc.add(GetRandomNumberEvent());
      },
    );

    test(
      'should emit [Loading, Error] with a proper message for the error when getting data fails',
      () async {
        // arrange
        when(mockGetRandomNumberTrivia(any))
            .thenAnswer((_) async => Left(CacheFailure()));
        // assert later
        final expected = [
          // Empty(),
          LoadingState(),
          ErrorState(message: cacheFailureMessage),
        ];
        expectLater(bloc.stream, emitsInOrder(expected));
        // act
        bloc.add(GetRandomNumberEvent());
      },
    );
  });
}
