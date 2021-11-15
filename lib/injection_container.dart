import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:try_clean/core/network/network_info.dart';
import 'package:try_clean/presentation/bloc/number_traiva_bloc.dart';

import 'core/util/input_converter.dart';
import 'data/datasources/number_trivia_local_data_source.dart';
import 'data/datasources/number_trivia_remote_data_source.dart';
import 'data/repositories/number_trivia_repository_impl.dart';
import 'domain/repositories/number_trivia_repository.dart';
import 'domain/usecases/get_concrete_number_trivia.dart';
import 'domain/usecases/get_random_number_trivia.dart';

import 'package:http/http.dart' as http;

final sl = GetIt.instance;

Future<void> init() async {
  // Features - Number Trivia
  // Bloc
  sl.registerFactory(
    () => NumberTriviaBloc(
      inputConverter: sl(),
      getConcreteNumberTrivia: sl(),
      getRandomNumberTrivia: sl(),
    ),
  );

  // Use cases
  sl.registerLazySingleton(() => GetConcreteNumberTrivia(sl()));
  sl.registerLazySingleton(() => GetRandomNumberTrivia(sl()));

  // Repository
  sl.registerLazySingleton<NumberTriviaRepository>(
    () => NumberTriviaRepositoryImpl(
      localDataSource: sl(),
      networkInfo: sl(),
      remoteDataSource: sl(),
    ),
  );

  // Data sources
  sl.registerLazySingleton<NumberTriviaRemoteDataSource>(
    () => NumberTriviaRemoteDataSourceImpl(client: sl()),
  );

  sl.registerLazySingleton<NumberTriviaLocalDataSource>(
    () => NumberTriviaLocalDataSourceImpl(sharedPreferences: sl()),
  );

  // Core
  sl.registerLazySingleton(() => InputConverter());
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);

  sl.registerLazySingleton(() => http.Client());

  sl.registerLazySingleton(() => InternetConnectionChecker());

  // sl.registerSingletonAsync<RestService>(() async {
  //   final r = RestService();
  //   await r.init();
  //   return r;
  // });

  // sl.registerSingletonAsync<SharedPreferences>(() async {
  //   final sharedPreferences = await SharedPreferences.getInstance();
  //   return sharedPreferences;
  // });
}

class RestService {
  Future<RestService> init() async {
    // do your async initialisation...
    // simulating it with a Delay here
    await Future.delayed(const Duration(seconds: 2));
    return this;
  }
}
