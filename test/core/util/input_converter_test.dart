import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:try_clean/core/error/failure.dart';
import 'package:try_clean/core/util/input_converter.dart';

void main() {
  late InputConverter inputConverter;

  setUp(() {
    inputConverter = InputConverter();
  });

  group('stringToUnsignedInt', () {
    test(
      'should return an integer when the string represents an unsigned integer',
      () async {
        // arrange
        const str = '123';
        // act
        final result = inputConverter.stringToUnsignedInteger(str);
        // assert
        expect(result, const Right(123));
      },
    );

    test(
      'should return an integer when the string represents an unsigned integer IOEither version',
      () async {
        // arrange
        const str = '123';
        // act
        final result = inputConverter.parseStringToInt(str).run();

        expect(result, const Right(123));
        // assert
      },
    );

    test(
      'should return a failure when the string is not an integer',
      () async {
        // arrange
        const str = 'abc';
        // act
        final result = inputConverter.stringToUnsignedInteger(str);
        // assert
        expect(result, Left(InvalidInputFailure()));
      },
    );

    test(
      'should return a failure when the string is not an integer IOEither version',
      () async {
        // arrange
        const str = 'abc';
        // act
        final result = inputConverter.parseStringToInt(str).run();

        expect(result, Left(InvalidInputFailure('can not parse as a int value')));
      },
    );

    test(
      'should return a failure when the string is a negative integer',
      () async {
        // arrange
        const str = '-123';
        // act
        final result = inputConverter.stringToUnsignedInteger(str);
        // assert
        expect(result, Left(InvalidInputFailure()));
      },
    );
  });
}
