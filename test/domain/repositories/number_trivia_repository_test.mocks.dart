// Mocks generated by Mockito 5.0.16 from annotations
// in try_clean/test/domain/repositories/number_trivia_repository_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:fpdart/fpdart.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:try_clean/core/error/failure.dart' as _i5;
import 'package:try_clean/domain/entities/numbertrivia.dart' as _i6;
import 'package:try_clean/domain/repositories/number_trivia_repository.dart'
    as _i3;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

/// A class which mocks [NumberTriviaRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockNumberTriviaRepository extends _i1.Mock
    implements _i3.NumberTriviaRepository {
  MockNumberTriviaRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.NumberTrivia>> getConcreteNumberTrivia(
          int? number) =>
      (super.noSuchMethod(Invocation.method(#getConcreteNumberTrivia, [number]),
          returnValue: Future<_i2.Either<_i5.Failure, _i6.NumberTrivia>>.value(
              _FakeEither_0<_i5.Failure, _i6.NumberTrivia>())) as _i4
          .Future<_i2.Either<_i5.Failure, _i6.NumberTrivia>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.NumberTrivia>>
      getRandomNumberTrivia() =>
          (super.noSuchMethod(Invocation.method(#getRandomNumberTrivia, []),
                  returnValue:
                      Future<_i2.Either<_i5.Failure, _i6.NumberTrivia>>.value(
                          _FakeEither_0<_i5.Failure, _i6.NumberTrivia>()))
              as _i4.Future<_i2.Either<_i5.Failure, _i6.NumberTrivia>>);
  @override
  String toString() => super.toString();
}
