import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/home/domain/entities/person_mini_result_entity.dart';
import 'package:spark/features/profile/domain/usecases/get_user_favourite_celebrities_usecase.dart';

class FavouriteCelebritiesController extends GetxController {
  final GetUserFavouriteCelebritiesUsecase getUserFavouriteCelebritiesUsecase;

  RxBool loading = false.obs;
  bool error = false;
  List<PersonMiniResultEntity> favouriteCelebrities = [];

  FavouriteCelebritiesController(
      {required this.getUserFavouriteCelebritiesUsecase});

  @override
  void onInit() {
    super.onInit();
    getUserFavouriteCelebritiesFirst();
  }

  Future getUserFavouriteCelebrities() async {
    var result = await getUserFavouriteCelebritiesUsecase.execute();
    result.fold(
      (failure) {
        Get.snackbar(
          StringsManager.operationFailed,
          failure.message,
          backgroundColor: Colors.red.withOpacity(0.5),
        );
        error = true;
      },
      (celebrities) {
        favouriteCelebrities = [];
        favouriteCelebrities.addAll(celebrities);
        update();
      },
    );
  }

  void getUserFavouriteCelebritiesFirst() async {
    loading.value = true;
    await getUserFavouriteCelebrities();
    loading.value = false;
  }
}
