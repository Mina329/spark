import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/features/profile/domain/entities/user_info_entity.dart';

abstract class ProfileRepo {
  Future<Either<Failure, UserInfoEntity>> getUserInfo();
}
