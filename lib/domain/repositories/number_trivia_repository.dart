import 'package:fpdart/fpdart.dart';
import 'package:try_clean/core/error/failure.dart';
import 'package:try_clean/domain/entities/numbertrivia.dart';
///repo 合约在domain，实现在data
abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}
