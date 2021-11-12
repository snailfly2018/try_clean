import 'package:fpdart/fpdart.dart';
import 'package:try_clean/core/error/exception.dart';
import 'package:try_clean/core/network/network_info.dart';
import 'package:try_clean/data/datasources/number_trivia_local_data_source.dart';
import 'package:try_clean/data/datasources/number_trivia_remote_data_source.dart';
import 'package:try_clean/domain/entities/numbertrivia.dart';
import 'package:try_clean/core/error/failure.dart';
import 'package:try_clean/domain/repositories/number_trivia_repository.dart';

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
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number) async {
    networkInfo.isConnected;
  // Finally doing something with the value of isConnected 😉
    if (await networkInfo.isConnected) {
      try {
        final remoteTrivia =
            await remoteDataSource.getConcreteNumberTrivia(number);
        localDataSource.cacheNumberTrivia(remoteTrivia);
        return Right(remoteTrivia);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localTrivia = await localDataSource.getLastNumberTrivia();
        return Right(localTrivia);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia() async{
if (await networkInfo.isConnected) {
    try {
      final remoteTrivia = await remoteDataSource.getRandomNumberTrivia();
      localDataSource.cacheNumberTrivia(remoteTrivia);
      return Right(remoteTrivia);
    } on ServerException {
      return Left(ServerFailure());
    }
  } else {
    try {
      final localTrivia = await localDataSource.getLastNumberTrivia();
      return Right(localTrivia);
    } on CacheException {
      return Left(CacheFailure());
    }
  }
  }
}
