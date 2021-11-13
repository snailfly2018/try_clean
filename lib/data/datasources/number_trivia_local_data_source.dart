import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:try_clean/core/error/exception.dart';

import 'package:try_clean/domain/entities/numbertrivia.dart';

const cachedNumberTrivia = 'CACHED_NUMBER_TRIVIA';

abstract class NumberTriviaLocalDataSource {
  /// Gets the cached [NumberTriviaModel] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws [NoLocalDataException] if no cached data is present.
  Future<NumberTrivia> getLastNumberTrivia();

  Future<void> cacheNumberTrivia(NumberTrivia triviaToCache);
}

class NumberTriviaRemoteDataSourceImpl implements NumberTriviaLocalDataSource {
  final SharedPreferences sharedPreferences;

  NumberTriviaRemoteDataSourceImpl({required this.sharedPreferences});

  @override
  Future<void> cacheNumberTrivia(NumberTrivia triviaToCache) {
    return sharedPreferences.setString(
      cachedNumberTrivia,
      json.encode(triviaToCache.toJson()),
    );
  }

  @override
  Future<NumberTrivia> getLastNumberTrivia() {
    final jsonString = sharedPreferences.getString(cachedNumberTrivia);
    // Future which is immediately completed
    if (jsonString != null) {
      return Future.value(NumberTrivia.fromJson(json.decode(jsonString)));
    } else {
      throw CacheException();
    }
  }
}
