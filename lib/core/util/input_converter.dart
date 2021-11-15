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
}

