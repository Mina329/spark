import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/home/domain/usecases/get_picks_for_you_usecase.dart';

class PicksForYouController extends GetxController {
  final GetPicksForYouUsecase getPicksForYouUsecase;

  List<dynamic> shows = [];
  RxBool loading = false.obs;

  PicksForYouController({required this.getPicksForYouUsecase});

  @override
  void onInit() {
    super.onInit();
    getPicksForYou();
  }

  Future getPicksForYou() async {
    loading.value = true;

    var result = await getPicksForYouUsecase.execute(1);
    result.fold(
      (failure) => Get.snackbar(
        StringsManager.operationFailed,
        failure.message,
        backgroundColor: Colors.red.withOpacity(0.5),
      ),
      (showsList) {
        shows.addAll(showsList);
        update();
      },
    );
    loading.value = false;
  }
}
