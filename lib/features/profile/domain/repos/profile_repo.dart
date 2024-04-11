import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/features/home/domain/entities/person_mini_result_entity.dart';
import 'package:spark/features/lists/domain/entities/show_mini_result_entity.dart';
import 'package:spark/features/profile/domain/entities/user_info_entity.dart';

abstract class ProfileRepo {
  Future<Either<Failure, UserInfoEntity>> getUserInfo();
  Future<Either<Failure, List<ShowMiniResultEntity>>> getUserFavouriteMovies();
  Future<Either<Failure, List<ShowMiniResultEntity>>> getUserFavouriteTvShows();
  Future<Either<Failure, List<PersonMiniResultEntity>>>
      getUserFavouriteCelebrities();
  Future<Either<Failure, void>> changeUserName(String name);
  Future<Either<Failure, void>> signOut();
}
