import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/explore/domain/usecases/get_popular_celebrities_usecase.dart';
import 'package:spark/features/home/domain/entities/person_mini_result_entity.dart';

class PopularCelebritiesController extends GetxController {
  final GetPopularCelebritiesUsecase getPopularCelebritiesUsecase;

  List<PersonMiniResultEntity> people = [];
  RxBool loading = false.obs;
  bool error = false;

  PopularCelebritiesController({required this.getPopularCelebritiesUsecase});

  Future getPopularCelebrities() async {
    loading.value = true;
    var result = await getPopularCelebritiesUsecase.execute(1);
    result.fold(
      (failure) {
        Get.snackbar(
          StringsManager.operationFailed,
          failure.message,
          backgroundColor: Colors.red.withOpacity(0.5),
        );
        error = true;
      },
      (peopleList) {
        people.addAll(peopleList);
      },
    );
    loading.value = false;
  }
}
