import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:try_clean/core/usecases/usecase.dart';
import 'package:try_clean/domain/entities/numbertrivia.dart';
import 'package:try_clean/domain/repositories/number_trivia_repository.dart';
import 'package:try_clean/domain/usecases/get_concrete_number_trivia.dart';
import 'package:try_clean/domain/usecases/get_random_number_trivia.dart';

import 'number_trivia_repository_test.mocks.dart';

// class MockNumberTriviaRepository extends Mock
//     implements NumberTriviaRepository {}
@GenerateMocks([NumberTriviaRepository])
void main() {

  late GetConcreteNumberTrivia usecase;
  late GetRandomNumberTrivia  randomusecase;
  late MockNumberTriviaRepository mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository);
    randomusecase = GetRandomNumberTrivia(mockNumberTriviaRepository);
  });

  const tNumber = 1;
  final tNumberTrivia = NumberTrivia(number: 1, text: 'test');

  test('number trivia repository ...', () async {
      // "On the fly" implementation of the Repository using the Mockito package.
    // When getConcreteNumberTrivia is called with any argument, always answer with
    // the Right "side" of Either containing a test NumberTrivia object.
    when(mockNumberTriviaRepository.getConcreteNumberTrivia(any))
        .thenAnswer((_) async => Right(tNumberTrivia));
    // The "act" phase of the test. Call the not-yet-existent method.
    final result = await usecase(const Params(number: tNumber));
    // UseCase should simply return whatever was returned from the Repository
    expect(result, Right(tNumberTrivia));
    // Verify that the method has been called on the Repository
    verify(mockNumberTriviaRepository.getConcreteNumberTrivia(tNumber));
    // Only the above method should be called and nothing more.
    verifyNoMoreInteractions(mockNumberTriviaRepository);   

  });

  
  test('random number trivia repository ...', () async {
    // "On the fly" implementation of the Repository using the Mockito package.
    // When getConcreteNumberTrivia is called with any argument, always answer with
    // the Right "side" of Either containing a test NumberTrivia object.
    when(mockNumberTriviaRepository.getRandomNumberTrivia())
        .thenAnswer((_) async => Right(tNumberTrivia));
    // The "act" phase of the test. Call the not-yet-existent method.
    final result = await randomusecase(NoParams());
    // UseCase should simply return whatever was returned from the Repository
    expect(result, Right(tNumberTrivia));
    // Verify that the method has been called on the Repository
    verify(mockNumberTriviaRepository.getRandomNumberTrivia());
    // Only the above method should be called and nothing more.
    verifyNoMoreInteractions(mockNumberTriviaRepository);
  });
}
