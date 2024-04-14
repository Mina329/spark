import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/explore/domain/usecases/get_on_the_air_tv_shows_usecase.dart';
import 'package:spark/features/home/domain/entities/tv_show_mini_result_entity.dart';

class OnTheAirTvShowsController extends GetxController {
  final GetOnTheAirTvShowsUsecase getOnTheAirTvShowsUsecase;

  List<TvShowMiniResultEntity> shows = [];
  RxBool loading = false.obs;
  bool error = false;

  OnTheAirTvShowsController({required this.getOnTheAirTvShowsUsecase});

  Future getOnTheAirTvShows() async {
    loading.value = true;
    var result = await getOnTheAirTvShowsUsecase.execute(1);
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
