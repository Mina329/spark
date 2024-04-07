import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/auth/data/data_sources/static.dart';
import 'package:spark/features/auth/data/models/genre_model.dart';
import 'package:spark/features/explore/presentation/controllers/popular_movies_controller.dart';
import 'package:spark/features/explore/presentation/controllers/top_rated_movies_controller.dart';
import 'package:spark/features/explore/presentation/controllers/upcoming_movies_controller.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/now_playing_movies_controller.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/trending_movies_controller.dart';

import '../../../../core/utils/strings_manager.dart';

class ExploreViewController extends GetxController {
  final List<String> moviesExploreTitles = [
    StringsManager.nowPlaying,
    StringsManager.etrendingMovies,
    StringsManager.popularMovies,
    StringsManager.topRatedMovies,
    StringsManager.upComingMovies
  ];

  final List<GenreModel> moviesGenres =
      genres.where((e) => e.type != GenreModelType.TV_Show).toList();

  final List<SectionType> moviesExploreSectionTypes = [
    SectionType.NowPlayingMovies,
    SectionType.TrendingMovies,
    SectionType.PopularMovies,
    SectionType.TopRatedMovies,
    SectionType.UpComingMovies,
  ];

  final List<List<String>> moviesExploreBanners = [];
  final List<List<MovieMiniResultEntity>> moviesExplore = [];
  RxBool loading = true.obs;
  @override
  void onInit() async {
    super.onInit();
    await Future.wait([
      initMoviesSection(),
    ]);
    loading.value = false;
  }

  Future<void> initMoviesSection() async {
    final nowPlayingMoviesController = Get.find<NowPlayingMoviesController>();
    final trendingMoviesController = Get.find<TrendingMoviesController>();
    final popularMoviesController = Get.find<PopularMoviesController>();
    final topRatedMoviesController = Get.find<TopRatedMoviesController>();
    final upComingMoviesController = Get.find<UpComingMoviesController>();

    await Future.wait([
      popularMoviesController.getPopularMovies(),
      topRatedMoviesController.getTopRatedMovies(),
      upComingMoviesController.getUpcomingMovies()
    ]);
    moviesExploreBanners
        .add(getBanners(nowPlayingMoviesController.movies.take(5).toList()));
    moviesExplore.add(nowPlayingMoviesController.movies);

    moviesExploreBanners
        .add(getBanners(trendingMoviesController.movies.take(5).toList()));
    moviesExplore.add(trendingMoviesController.movies);

    moviesExploreBanners
        .add(getBanners(popularMoviesController.movies.take(5).toList()));
    moviesExplore.add(popularMoviesController.movies);

    moviesExploreBanners
        .add(getBanners(topRatedMoviesController.movies.take(5).toList()));
    moviesExplore.add(topRatedMoviesController.movies);

    moviesExploreBanners
        .add(getBanners(upComingMoviesController.movies.take(5).toList()));
    moviesExplore.add(upComingMoviesController.movies);
  }

  List<String> getBanners(List shows) {
    List<String> banners = [];
    for (var show in shows) {
      banners.add(show.posterPath);
      precacheImage(
          CachedNetworkImageProvider(
              'https://image.tmdb.org/t/p/original${show.posterPath}'),
          Get.context!);
    }
    return banners;
  }
}
