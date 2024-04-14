import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/home/domain/entities/person_mini_result_entity.dart';
import 'package:spark/features/home/domain/usecases/get_trending_people_usecase.dart';

class TrendingPeopleController extends GetxController {
  final GetTrendingPeopleUsecase getTrendingPeopleUsecase;

  List<PersonMiniResultEntity> people = [];
  RxBool loading = false.obs;
  bool error = false;

  TrendingPeopleController({required this.getTrendingPeopleUsecase});

  @override
  void onInit() {
    super.onInit();
    getTrendingPeople();
  }

  Future getTrendingPeople() async {
    loading.value = true;

    var result = await getTrendingPeopleUsecase.execute(1);
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
        people.addAll(tvList);
        update();
      },
    );
    loading.value = false;
  }
}
