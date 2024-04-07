import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/explore/domain/usecases/get_popular_tv_shows_usecase.dart';
import 'package:spark/features/home/domain/entities/tv_show_mini_result_entity.dart';

class PopularTvShowsController extends GetxController {
  final GetPopularTvShowsUsecase getPopularTvShowsUsecase;

  List<TvShowMiniResultEntity> shows = [];
  RxBool loading = false.obs;

  PopularTvShowsController({required this.getPopularTvShowsUsecase});

  Future getPopularTvShows() async {
    loading.value = true;
    var result = await getPopularTvShowsUsecase.execute(1);
    result.fold(
      (failure) => Get.snackbar(
        StringsManager.operationFailed,
        failure.message,
        backgroundColor: Colors.red.withOpacity(0.5),
      ),
      (showsList) {
        shows.addAll(showsList);
      },
    );
    loading.value = false;
  }
}
