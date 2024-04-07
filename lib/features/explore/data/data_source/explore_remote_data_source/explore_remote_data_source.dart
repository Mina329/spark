import 'package:spark/features/explore/domain/entities/search_result_entity.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';

abstract class ExploreRemoteDataSource {
  Future<List<SearchResultEntity>> getSearchResult(int page, String query);
  Future<List<MovieMiniResultEntity>> getPopularMovies(int page);
  Future<List<MovieMiniResultEntity>> getTopRatedMovies(int page);
  Future<List<MovieMiniResultEntity>> getUpComingMovies(int page);
}
