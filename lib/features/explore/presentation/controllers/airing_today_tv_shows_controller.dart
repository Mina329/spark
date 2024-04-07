import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/explore/domain/usecases/get_airing_today_tv_shows_usecase.dart';
import 'package:spark/features/home/domain/entities/tv_show_mini_result_entity.dart';

class AiringTodayTvShowsController extends GetxController {
  final GetAiringTodayTvShowsUsecase getAiringTodayTvShowsUsecase;

  List<TvShowMiniResultEntity> shows = [];
  RxBool loading = false.obs;

  AiringTodayTvShowsController({required this.getAiringTodayTvShowsUsecase});

  Future getAiringTodayTvShows() async {
    loading.value = true;
    var result = await getAiringTodayTvShowsUsecase.execute(1);
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
