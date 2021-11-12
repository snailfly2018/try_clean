import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:try_clean/core/network/network_info.dart';
import 'package:try_clean/core/usecases/usecase.dart';
import 'package:try_clean/data/datasources/number_trivia_local_data_source.dart';
import 'package:try_clean/data/datasources/number_trivia_remote_data_source.dart';
import 'package:try_clean/data/repositories/number_trivia_repository_impl.dart';
import 'package:try_clean/domain/entities/numbertrivia.dart';
import 'package:try_clean/domain/repositories/number_trivia_repository.dart';
import 'package:try_clean/domain/usecases/get_concrete_number_trivia.dart';
import 'package:try_clean/domain/usecases/get_random_number_trivia.dart';

import 'number_trivia_repository_test.mocks.dart';

// class MockNumberTriviaRepository extends Mock
//     implements NumberTriviaRepository {}
@GenerateMocks([NumberTriviaRemoteDataSource, NumberTriviaLocalDataSource, NetworkInfo])
void main() {

  NumberTriviaRepositoryImpl repository;
  MockNumberTriviaRemoteDataSource mockRemoteDataSource;
  MockNumberTriviaLocalDataSource mockLocalDataSource;
  MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockRemoteDataSource = MockNumberTriviaRemoteDataSource();
    mockLocalDataSource = MockNumberTriviaLocalDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = NumberTriviaRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
      networkInfo: mockNetworkInfo,
    );
  });
}
