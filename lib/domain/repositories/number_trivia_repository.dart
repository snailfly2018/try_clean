import 'package:fpdart/fpdart.dart';
import 'package:try_clean/core/error/failure.dart';
import 'package:try_clean/domain/entities/numbertrivia.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}
