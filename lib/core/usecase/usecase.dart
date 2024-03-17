import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';

abstract class UseCase<T, Inputs> {
  Future<Either<Failure, T>> execute([Inputs inputs]);
}
