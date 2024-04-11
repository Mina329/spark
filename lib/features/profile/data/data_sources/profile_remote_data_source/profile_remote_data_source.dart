import 'package:spark/features/home/domain/entities/person_mini_result_entity.dart';
import 'package:spark/features/lists/domain/entities/show_mini_result_entity.dart';
import 'package:spark/features/profile/domain/entities/user_info_entity.dart';

abstract class ProfileRemoteDataSource {
  Future<UserInfoEntity> getUserInfo();
  Future<List<ShowMiniResultEntity>> getUserFavouriteMovies();
  Future<List<ShowMiniResultEntity>> getUserFavouriteTvShows();
  Future<List<PersonMiniResultEntity>> getUserFavouriteCelebrities();
  Future<void> changeUserName(String newName);
}
