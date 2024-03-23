import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/widgets/enums.dart';
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
    usecase = sectionTypeToUsecase[sectionType]?.call();
    getPassedShow();
  }

  Map<SectionType, dynamic Function()> sectionTypeToUsecase = {
    SectionType.TrendingMovies: () => Get.find<GetTrendingMoviesUsecase>(),
    SectionType.TrendingTvShows: () => Get.find<GetTrendingTvShowsUsecase>(),
    SectionType.PicksForYou: () => Get.find<GetPicksForYouUsecase>(),
    SectionType.PeopleOfTheWeek: () => Get.find<GetTrendingPeopleUsecase>(),
    SectionType.None: () => null,
  };
  @override
  void onClose() {
    scrollController.removeListener(_onScroll);
    scrollController.dispose();
    super.onClose();
  }

  getPassedShow() {
    shows.addAll(Get.arguments['showsList']);
    update();
  }

  void getData() async {
    if (loadingMore.value) return;
    loadingMore.value = true;
    var result = await usecase.execute(page);
    result.fold(
      (failure) => Get.snackbar(
        StringsManager.operationFailed,
        failure.message,
        backgroundColor: Colors.red.withOpacity(0.5),
      ),
      (showsList) {
        shows.addAll(showsList);
        page++;

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
      getData();
    }
  }
}
