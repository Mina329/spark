import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';
import 'package:spark/features/home/domain/entities/person_mini_result_entity.dart';
import 'package:spark/features/home/domain/entities/person_result_entity.dart';
import 'package:spark/features/home/domain/entities/season_result_entity.dart';
import 'package:spark/features/home/domain/entities/tv_show_mini_result_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<MovieMiniResultEntity>> getTredingMovies(int page);
  Future<List<TvShowMiniResultEntity>> getTredingTvShows(int page);
  Future<List<MovieMiniResultEntity>> getNowPlayingMovies(int page);
  Future<List<String>> getNowPlayingMoviesTrailers(
      List<MovieMiniResultEntity> movies);
  Future<List<PersonMiniResultEntity>> getTredingPeople(int page);
  Future<List<dynamic>> getPicksForYou(int page);
  Future<PersonResultEntity> getPersonDetails(int id);
  Future<void> addFavourite(dynamic show, ShowType showType);
  Future<void> deleteFavourite(int id, ShowType showType);
  Future<bool> checkFavourite(int id, ShowType showType);
  Future<dynamic> getShowDetails(int id, ShowType showType);
  Future<SeasonResultEntity> getSeasonDetails(int showId, int seasonNumber);
}
