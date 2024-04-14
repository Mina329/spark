import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/home/domain/entities/tv_show_mini_result_entity.dart';
import 'package:spark/features/home/domain/usecases/get_trending_tv_shows_usecase.dart';

class TrendingTvShowsController extends GetxController {
  final GetTrendingTvShowsUsecase getTrendingTvShowsUsecase;

  List<TvShowMiniResultEntity> tvShows = [];
  RxBool loading = false.obs;
  bool error = false;

  TrendingTvShowsController({required this.getTrendingTvShowsUsecase});

  @override
  void onInit() {
    super.onInit();
    getTrendingTvShows();
  }

  Future getTrendingTvShows() async {
    loading.value = true;

    var result = await getTrendingTvShowsUsecase.execute(1);
    result.fold(
      (failure) {
        Get.snackbar(
          StringsManager.operationFailed,
          failure.message,
          backgroundColor: Colors.red.withOpacity(0.5),
        );
        if (error == true) return;
        error = true;
      },
      (tvList) {
        tvShows.addAll(tvList);
        update();
      },
    );
    loading.value = false;
  }
}
