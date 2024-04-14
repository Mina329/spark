import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/explore/domain/usecases/get_top_rated_tv_shows_usecase.dart';
import 'package:spark/features/home/domain/entities/tv_show_mini_result_entity.dart';

class TopRatedTvShowsController extends GetxController {
  final GetTopRatedTvShowsUsecase getTopRatedTvShowsUsecase;

  List<TvShowMiniResultEntity> shows = [];
  RxBool loading = false.obs;
  bool error = false;

  TopRatedTvShowsController({required this.getTopRatedTvShowsUsecase});

  Future getTopRatedTvShows() async {
    loading.value = true;
    var result = await getTopRatedTvShowsUsecase.execute(1);
    result.fold(
      (failure) {
        Get.snackbar(
          StringsManager.operationFailed,
          failure.message,
          backgroundColor: Colors.red.withOpacity(0.5),
        );
        error = true;
      },
      (showsList) {
        shows.addAll(showsList);
      },
    );
    loading.value = false;
  }
}
