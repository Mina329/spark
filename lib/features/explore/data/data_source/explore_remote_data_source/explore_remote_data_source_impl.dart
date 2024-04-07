import 'package:spark/core/utils/api_service.dart';
import 'package:spark/core/widgets/functions/extensions.dart';
import 'package:spark/features/explore/data/data_source/explore_remote_data_source/explore_remote_data_source.dart';
import 'package:spark/features/explore/domain/entities/search_result_entity.dart';
import 'package:spark/features/home/data/models/movie_mini_result/movie_mini_result.dart';
import 'package:spark/features/home/data/models/person_mini_result/person_mini_result.dart';
import 'package:spark/features/home/data/models/tv_show_mini_result/tv_show_mini_result.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';

class ExploreRemoteDataSourceImpl extends ExploreRemoteDataSource {
  final ApiService apiService;

  ExploreRemoteDataSourceImpl({required this.apiService});
  @override
  Future<List<SearchResultEntity>> getSearchResult(
      int page, String query) async {
    var data = await apiService.get(
        endPoint:
            '/search/multi?query=$query&include_adult=false&language=en-US&page=$page');
    List<SearchResultEntity> items = [];
    for (var item in data['results']) {
      if (item['media_type'] == "tv") {
        items.add(TvShowMiniResult.fromJson(item).toSearchResultEntity());
      } else if (item['media_type'] == "movie") {
        items.add(MovieMiniResult.fromJson(item).toSearchResultEntity());
      } else {
        items.add(PersonMiniResult.fromJson(item).toSearchResultEntity());
      }
    }
    return items;
  }

  @override
  Future<List<MovieMiniResultEntity>> getPopularMovies(int page) async {
    var data = await apiService.get(
        endPoint: '/movie/popular?language=en-US&page=$page');
    List<MovieMiniResultEntity> items = [];
    for (var item in data['results']) {
      items.add(MovieMiniResult.fromJson(item).toEntity());
    }
    return items;
  }

  @override
  Future<List<MovieMiniResultEntity>> getTopRatedMovies(int page) async {
    var data = await apiService.get(
        endPoint: '/movie/top_rated?language=en-US&page=$page');
    List<MovieMiniResultEntity> items = [];
    for (var item in data['results']) {
      items.add(MovieMiniResult.fromJson(item).toEntity());
    }
    return items;
  }

  @override
  Future<List<MovieMiniResultEntity>> getUpComingMovies(int page) async {
    var data = await apiService.get(
        endPoint: '/movie/upcoming?language=en-US&page=$page');
    List<MovieMiniResultEntity> items = [];
    for (var item in data['results']) {
      items.add(MovieMiniResult.fromJson(item).toEntity());
    }
    return items;
  }
}
