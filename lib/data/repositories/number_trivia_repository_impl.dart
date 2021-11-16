import 'package:fpdart/fpdart.dart';
import 'package:try_clean/core/error/exception.dart';
import 'package:try_clean/core/network/network_info.dart';
import 'package:try_clean/data/datasources/number_trivia_local_data_source.dart';
import 'package:try_clean/data/datasources/number_trivia_remote_data_source.dart';
import 'package:try_clean/domain/entities/numbertrivia.dart';
import 'package:try_clean/core/error/failure.dart';
import 'package:try_clean/domain/repositories/number_trivia_repository.dart';

typedef _ConcreteOrRandomChooser = Future<NumberTrivia> Function();

class NumberTriviaRepositoryImpl implements NumberTriviaRepository {
  final NumberTriviaRemoteDataSource remoteDataSource;
  final NumberTriviaLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  NumberTriviaRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(
    int number,
  ) async {
    return await _getTrivia(() {
      return remoteDataSource.getConcreteNumberTrivia(number);
    });
  }

  @override
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia() async {
    return await _getTrivia(() {
      return remoteDataSource.getRandomNumberTrivia();
    });
  }

  ///异常到错误的转化处
  Future<Either<Failure, NumberTrivia>> _getTrivia(
    _ConcreteOrRandomChooser getConcreteOrRandom,
  ) async {
    if (await networkInfo.isConnected) {
      // try {
      //   final remoteTrivia = await getConcreteOrRandom();
      //   localDataSource.cacheNumberTrivia(remoteTrivia);
      //   return Right(remoteTrivia);
      // } on ServerException {
      //   return Left(ServerFailure());
      // }
      return getNumberTriviaTask(getConcreteOrRandom).run();
    } else {
      return getLastNumberTrivia().run();
    }
    // {
    //   try {
    //     final localTrivia = await localDataSource.getLastNumberTrivia();
    //     return Right(localTrivia);
    //   } on CacheException {
    //     return Left(CacheFailure());
    //   }
    // }
  }

  TaskEither<Failure, NumberTrivia> getNumberTriviaTask(
          _ConcreteOrRandomChooser getConcreteOrRandom) =>
      TaskEither.tryCatch(
        () async {
          final remoteTrivia = await getConcreteOrRandom();
          localDataSource.cacheNumberTrivia(remoteTrivia);
          return remoteTrivia;
        },
        (_, __) => ServerFailure(),
      );

  TaskEither<Failure, NumberTrivia> getLastNumberTrivia() =>
      TaskEither.tryCatch(
        () async => await localDataSource.getLastNumberTrivia(),
        (_, __) => CacheFailure(),
      );
}
