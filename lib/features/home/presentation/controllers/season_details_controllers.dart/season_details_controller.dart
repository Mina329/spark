import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/home/domain/entities/season_result_entity.dart';
import 'package:spark/features/home/domain/usecases/get_season_details_usecase.dart';

class SeasonDetailsController extends GetxController {
  final GetSeasonDetailsUsecase getSeasonDetailsUsecase;
  SeasonResultEntity? seasonResultEntity;
  RxBool loading = true.obs;
  bool error = false;
  SeasonDetailsController({required this.getSeasonDetailsUsecase});
  @override
  void onInit() {
    super.onInit();
    final int showId = Get.arguments['id'];
    final int seasonNumber = Get.arguments['seasonNumber'];
    getSeasonDetails(showId, seasonNumber);
  }

  getSeasonDetails(int showId, int seasonNumber) async {
    var result = await getSeasonDetailsUsecase.execute((showId, seasonNumber));
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
      (season) {
        seasonResultEntity = season;
        update();
      },
    );
    loading.value = false;
  }
}
