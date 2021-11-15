import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  factory Failure() = _Failure;
  factory Failure.serverFailure([@Default('ServerFailure') String errMsg]) = ServerFailure;
  factory Failure.cacheFailure([@Default('CacheFailure') String errMsg]) = CacheFailure;
  factory Failure.inputFailure([@Default('InvidInput')  String errMsg]) = InvalidInputFailure;
}
