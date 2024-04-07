import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/explore/domain/usecases/get_airing_today_tv_shows_usecase.dart';
import 'package:spark/features/explore/domain/usecases/get_category_movies_usecase.dart';
import 'package:spark/features/explore/domain/usecases/get_category_tv_shows_usecase.dart';
import 'package:spark/features/explore/domain/usecases/get_on_the_air_tv_shows_usecase.dart';
import 'package:spark/features/explore/domain/usecases/get_popular_celebrities_usecase.dart';
import 'package:spark/features/explore/domain/usecases/get_popular_movies_usecase.dart';
import 'package:spark/features/explore/domain/usecases/get_popular_tv_shows_usecase.dart';
import 'package:spark/features/explore/domain/usecases/get_top_rated_movies_usecase.dart';
import 'package:spark/features/explore/domain/usecases/get_top_rated_tv_shows_usecase.dart';
import 'package:spark/features/explore/domain/usecases/get_up_coming_movies_usecase.dart';
import 'package:spark/features/home/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:spark/features/home/domain/usecases/get_picks_for_you_usecase.dart';
import 'package:spark/features/home/domain/usecases/get_trending_movies_usecase.dart';
import 'package:spark/features/home/domain/usecases/get_trending_people_usecase.dart';
import 'package:spark/features/home/domain/usecases/get_trending_tv_shows_usecase.dart';

class SectionController extends GetxController {
  late final dynamic usecase;
  List<dynamic> shows = [];
  late String sectionName;
  late ShowType showType;
  late SectionType sectionType;
  String? categoryId;
  int page = 2;
  RxBool loadingMore = false.obs;
  late final ScrollController scrollController;
  @override
  void onInit() {
    super.onInit();
    scrollController = ScrollController()..addListener(_onScroll);
    sectionType = Get.arguments['sectionType'] as SectionType;
    sectionName = Get.arguments['title'];
    showType = Get.arguments['showType'];
    categoryId = Get.arguments['category'];
    usecase = sectionTypeToUsecase[sectionType]?.call();
    getPassedShow();
  }

  Map<SectionType, dynamic Function()> sectionTypeToUsecase = {
    SectionType.TrendingMovies: () => Get.find<GetTrendingMoviesUsecase>(),
    SectionType.TrendingTvShows: () => Get.find<GetTrendingTvShowsUsecase>(),
    SectionType.PicksForYou: () => Get.find<GetPicksForYouUsecase>(),
    SectionType.PeopleOfTheWeek: () => Get.find<GetTrendingPeopleUsecase>(),
    SectionType.NowPlayingMovies: () => Get.find<GetNowPlayingMoviesUsecase>(),
    SectionType.PopularMovies: () => Get.find<GetPopularMoviesUsecase>(),
    SectionType.TopRatedMovies: () => Get.find<GetTopRatedMoviesUsecase>(),
    SectionType.UpComingMovies: () => Get.find<GetUpComingMoviesUsecase>(),
    SectionType.MoviesCategory: () => Get.find<GetCategoryMoviesUsecase>(),
    SectionType.OnTheAirTvShows: () => Get.find<GetOnTheAirTvShowsUsecase>(),
    SectionType.PopularTvShows: () => Get.find<GetPopularTvShowsUsecase>(),
    SectionType.TopRatedTvShows: () => Get.find<GetTopRatedTvShowsUsecase>(),
    SectionType.TvShowsCategory: () => Get.find<GetCategoryTvShowsUsecase>(),
    SectionType.PopularCelebrities: () =>
        Get.find<GetPopularCelebritiesUsecase>(),
    SectionType.AiringTodayTvShows: () =>
        Get.find<GetAiringTodayTvShowsUsecase>(),
    SectionType.None: () => null,
  };
  @override
  void onClose() {
    scrollController.removeListener(_onScroll);
    scrollController.dispose();
    super.onClose();
  }

  getPassedShow() {
    if (sectionType == SectionType.TvShowsCategory ||
        sectionType == SectionType.MoviesCategory) {
      getData(1, categoryId);
    } else {
      shows.addAll(Get.arguments['showsList']);
      update();
    }
  }

  void getData(int pageNumber, String? categoryId) async {
    if (loadingMore.value) return;
    loadingMore.value = true;
    // ignore: prefer_typing_uninitialized_variables
    var result;
    if (sectionType == SectionType.TvShowsCategory ||
        sectionType == SectionType.MoviesCategory) {
      result = await usecase.execute((pageNumber, categoryId));
    } else {
      result = await usecase.execute(pageNumber);
    }
    result.fold(
      (failure) => Get.snackbar(
        StringsManager.operationFailed,
        failure.message,
        backgroundColor: Colors.red.withOpacity(0.5),
      ),
      (showsList) {
        shows.addAll(showsList);
        update();
      },
    );
    loadingMore.value = false;
  }

  void _onScroll() {
    if (!loadingMore.value &&
        scrollController.position.pixels >=
            scrollController.position.maxScrollExtent &&
        sectionType != SectionType.None) {
      getData(page, categoryId);
      page++;
    }
  }
}
