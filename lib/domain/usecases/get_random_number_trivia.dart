import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';
import 'package:try_clean/core/error/failure.dart';
import 'package:try_clean/core/usecases/usecase.dart';
import 'package:try_clean/domain/entities/numbertrivia.dart';
import 'package:try_clean/domain/repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia extends UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
