import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/auth/data/data_sources/static.dart';
import 'package:spark/features/auth/data/models/genre_model.dart';
import 'package:spark/features/explore/presentation/controllers/airing_today_tv_shows_controller.dart';
import 'package:spark/features/explore/presentation/controllers/on_the_air_tv_shows_controller.dart';
import 'package:spark/features/explore/presentation/controllers/popular_celebrities_controller.dart';
import 'package:spark/features/explore/presentation/controllers/popular_movies_controller.dart';
import 'package:spark/features/explore/presentation/controllers/popular_tv_shows_controller.dart';
import 'package:spark/features/explore/presentation/controllers/top_rated_movies_controller.dart';
import 'package:spark/features/explore/presentation/controllers/top_rated_tv_shows_controller.dart';
import 'package:spark/features/explore/presentation/controllers/upcoming_movies_controller.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';
import 'package:spark/features/home/domain/entities/person_mini_result_entity.dart';
import 'package:spark/features/home/domain/entities/tv_show_mini_result_entity.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/now_playing_movies_controller.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/trending_movies_controller.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/trending_people_controller.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/trending_tv_shows_controller.dart';

import '../../../../core/utils/strings_manager.dart';

class ExploreViewController extends GetxController {
  final List<String> moviesExploreTitles = [
    StringsManager.nowPlaying,
    StringsManager.etrendingMovies,
    StringsManager.popularMovies,
    StringsManager.topRatedMovies,
    StringsManager.upComingMovies
  ];
  final List<String> tvShowsExploreTitles = [
    StringsManager.airingTodayShows,
    StringsManager.onTheAirShows,
    StringsManager.etrendingShows,
    StringsManager.popularShows,
    StringsManager.topRatedShows,
  ];
  final List<String> peoplesExploreTitles = [
    StringsManager.popularCelebrities,
    StringsManager.trendingCelebrities,
  ];

  final List<GenreModel> moviesGenres =
      genres.where((e) => e.type != GenreModelType.TV_Show).toList();
  final List<GenreModel> tvShowsGenres =
      genres.where((e) => e.type != GenreModelType.Movie).toList();

  final List<SectionType> moviesExploreSectionTypes = [
    SectionType.NowPlayingMovies,
    SectionType.TrendingMovies,
    SectionType.PopularMovies,
    SectionType.TopRatedMovies,
    SectionType.UpComingMovies,
  ];
  final List<SectionType> tvShowsExploreSectionTypes = [
    SectionType.AiringTodayTvShows,
    SectionType.OnTheAirTvShows,
    SectionType.TrendingTvShows,
    SectionType.PopularTvShows,
    SectionType.TopRatedTvShows,
  ];
  final List<SectionType> peoplesExploreSectionTypes = [
    SectionType.PopularCelebrities,
    SectionType.PeopleOfTheWeek,
  ];

  final List<List<String>> moviesExploreBanners = [];
  final List<List<String>> tvShowsExploreBanners = [];
  final List<List<String>> peoplesExploreBanners = [];

  final List<List<MovieMiniResultEntity>> moviesExplore = [];
  final List<List<TvShowMiniResultEntity>> tvShowsExplore = [];
  final List<List<PersonMiniResultEntity>> peoplesExplore = [];

  RxBool loading = true.obs;
  bool moviesError = false;
  bool tvShowsError = false;
  bool celebritiesError = false;
  bool error = false;

  @override
  void onInit() async {
    super.onInit();
    await Future.wait([
      initMoviesSection(),
      initTvShowsSection(),
      initCelebritiesSection(),
    ]);
    error = moviesError && tvShowsError && celebritiesError;
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

    moviesError = nowPlayingMoviesController.error &&
        trendingMoviesController.error &&
        popularMoviesController.error &&
        topRatedMoviesController.error &&
        upComingMoviesController.error;
  }

  Future<void> initTvShowsSection() async {
    final airingTodayTvShowsController =
        Get.find<AiringTodayTvShowsController>();
    final onTheAirTvShowsController = Get.find<OnTheAirTvShowsController>();
    final trendingTvShowsController = Get.find<TrendingTvShowsController>();
    final popularTvShowsController = Get.find<PopularTvShowsController>();
    final topRatedTvShowsController = Get.find<TopRatedTvShowsController>();

    await Future.wait([
      airingTodayTvShowsController.getAiringTodayTvShows(),
      onTheAirTvShowsController.getOnTheAirTvShows(),
      popularTvShowsController.getPopularTvShows(),
      topRatedTvShowsController.getTopRatedTvShows(),
    ]);

    tvShowsExploreBanners
        .add(getBanners(airingTodayTvShowsController.shows.take(5).toList()));
    tvShowsExplore.add(airingTodayTvShowsController.shows);

    tvShowsExploreBanners
        .add(getBanners(onTheAirTvShowsController.shows.take(5).toList()));
    tvShowsExplore.add(onTheAirTvShowsController.shows);

    tvShowsExploreBanners
        .add(getBanners(trendingTvShowsController.tvShows.take(5).toList()));
    tvShowsExplore.add(trendingTvShowsController.tvShows);

    tvShowsExploreBanners
        .add(getBanners(popularTvShowsController.shows.take(5).toList()));
    tvShowsExplore.add(popularTvShowsController.shows);

    tvShowsExploreBanners
        .add(getBanners(topRatedTvShowsController.shows.take(5).toList()));
    tvShowsExplore.add(topRatedTvShowsController.shows);

    tvShowsError = airingTodayTvShowsController.error &&
        onTheAirTvShowsController.error &&
        trendingTvShowsController.error &&
        popularTvShowsController.error &&
        topRatedTvShowsController.error;
  }

  Future<void> initCelebritiesSection() async {
    final popularCelebritiesController =
        Get.find<PopularCelebritiesController>();
    final trendingPeopleController = Get.find<TrendingPeopleController>();

    await popularCelebritiesController.getPopularCelebrities();

    peoplesExploreBanners
        .add(getProfiles(popularCelebritiesController.people.take(5).toList()));
    peoplesExplore.add(popularCelebritiesController.people);

    peoplesExploreBanners
        .add(getProfiles(trendingPeopleController.people.take(5).toList()));
    peoplesExplore.add(trendingPeopleController.people);

    celebritiesError =
        popularCelebritiesController.error && trendingPeopleController.error;
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

  List<String> getProfiles(List shows) {
    List<String> banners = [];
    for (var show in shows) {
      banners.add(show.profilePath);
      precacheImage(
          CachedNetworkImageProvider(
              'https://image.tmdb.org/t/p/original${show.profilePath}'),
          Get.context!);
    }
    return banners;
  }
}
