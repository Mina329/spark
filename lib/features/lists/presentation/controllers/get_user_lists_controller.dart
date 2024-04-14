import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/lists/domain/usecases/get_user_lists_usecase.dart';

class GetUserListsController extends GetxController {
  final GetUserListsUsecase getUserListsUsecase;
  RxBool loading = false.obs;
  bool error = false;
  RxList lists = [].obs;
  RxList banners = [].obs;
  GetUserListsController({required this.getUserListsUsecase});
  @override
  void onInit() {
    super.onInit();
    getUserListsFirst();
  }

  Future getUserLists() async {
    var result = await getUserListsUsecase.execute();
    result.fold(
      (failure) {
        Get.snackbar(
          StringsManager.operationFailed,
          failure.message,
          backgroundColor: Colors.red.withOpacity(0.5),
        );
        if (error) return;
        error = true;
      },
      (listsList) {
        lists.value = [];
        banners.value = [];
        lists.addAll(listsList);
        for (var list in listsList) {
          List<String?> posters = [];
          for (int index = 0;
              index < min(5, (list.shows?.length ?? 0));
              index++) {
            posters.add(list.shows![index].posterPath);
          }
          banners.add(posters);
        }
        update();
      },
    );
  }

  void getUserListsFirst() async {
    loading.value = true;
    await getUserLists();
    loading.value = false;
  }
}
