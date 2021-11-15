import 'package:fpdart/fpdart.dart';
import 'package:try_clean/core/error/failure.dart';

/// bloc 的依赖项，输入错误的捕获,就生存在在bloc层
class InputConverter {
  Either<Failure, int> stringToUnsignedInteger(String str) {
    try {
      final integer = int.parse(str);
      if (integer < 0) throw const FormatException();
      return Right(integer);
    } on FormatException {
      return Left(InvalidInputFailure());
    }
  }

  IOEither<Failure, int> parseStringToInt(String str) => IOEither.tryCatch(
        () => int.parse(str),
        (_, __) => InvalidInputFailure('can not parse as a int value'),
      );

///用flatmap链接上一个函数继续判断
  IOEither<Failure, int> validateInt(String str) =>
      parseStringToInt(str).flatMap(
        (id) => IOEither.fromPredicate(id, (a) => a > 0, (a) => InvalidInputFailure('must be large than zero')),
      );
}
