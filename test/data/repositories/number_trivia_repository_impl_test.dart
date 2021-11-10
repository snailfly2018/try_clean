import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:try_clean/core/network/network_info.dart';
import 'package:try_clean/data/datasources/number_trivia_local_data_source.dart';
import 'package:try_clean/data/datasources/number_trivia_remote_data_source.dart';
import 'package:try_clean/data/repositories/number_trivia_repository_impl.dart';

import 'number_trivia_repository_impl_test.mocks.dart';

@GenerateMocks([NetworkInfo, NumberTriviaLocalDataSource, NumberTriviaRemoteDataSource])
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

  test('number trivia repository impl ...', () async {
    // TODO: Implement test
  });
}
