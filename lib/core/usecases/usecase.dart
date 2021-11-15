import 'package:fpdart/fpdart.dart';
import 'package:try_clean/core/error/failure.dart';

///usercase的合约，需要实现call接口
///具体的usercase在domain层定义
abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

