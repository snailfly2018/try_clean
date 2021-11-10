import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';
import 'package:try_clean/core/error/failure.dart';
import 'package:try_clean/core/usecases/usecase.dart';
import 'package:try_clean/domain/entities/numbertrivia.dart';
import 'package:try_clean/domain/repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia extends UseCase<NumberTrivia,Params>{
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

@override
  Future<Either<Failure, NumberTrivia>> call(Params params) async {
    return await repository.getConcreteNumberTrivia(params.number);
  }
}

class Params extends Equatable {
  final int number;

  const Params({required this.number});

  @override
  List<Object> get props => [number];
}
