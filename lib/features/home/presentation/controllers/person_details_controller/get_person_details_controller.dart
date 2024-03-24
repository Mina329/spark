import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/home/domain/entities/person_result_entity.dart';
import 'package:spark/features/home/domain/usecases/get_person_details_usecase.dart';

class GetPersonDetailsController extends GetxController {
  final GetPersonDetailsUsecase getPersonDetailsUsecase;
  PersonResultEntity? personResultEntity;
  RxBool loading = true.obs;

  GetPersonDetailsController({required this.getPersonDetailsUsecase});

  @override
  void onInit() {
    super.onInit();
    final int id = Get.arguments['id'];
    getPersonDetails(id);
  }

  getPersonDetails(int id) async {
    var result = await getPersonDetailsUsecase.execute(id);
    result.fold(
      (failure) {
        Get.snackbar(
          StringsManager.operationFailed,
          failure.message,
          backgroundColor: Colors.red.withOpacity(0.5),
        );
      },
      (personDetails) {
        personResultEntity = personDetails;
        update();
      },
    );
    loading.value = false;
  }
}
