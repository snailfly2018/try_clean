import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  factory Failure() = _Failure;
  factory Failure.serverFailure() = ServerFailure;
  factory Failure.cacheFailure() = CacheFailure;
}
