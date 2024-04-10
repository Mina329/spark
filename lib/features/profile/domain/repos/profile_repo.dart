import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';
import 'package:spark/features/profile/domain/entities/user_info_entity.dart';

abstract class ProfileRepo {
  Future<Either<Failure, UserInfoEntity>> getUserInfo();
  Future<Either<Failure, List<MovieMiniResultEntity>>> getUserFavouriteMovies();
}
