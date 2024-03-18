import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/auth/domain/usecases/log_in_anonymously_usecase.dart';

class LogInAnonymouslyController extends GetxController {
  final LogInAnonymouslyUsecase logInAnonymouslyUsecase;

  LogInAnonymouslyController({required this.logInAnonymouslyUsecase});
  RxBool loading = false.obs;

  void logInAnonymously() async {
    loading.value = true;
    var result = await logInAnonymouslyUsecase.execute();
    result.fold(
      (failure) => Get.snackbar(
        StringsManager.operationFailed,
        failure.message,
        backgroundColor: Colors.red.withOpacity(0.5),
      ),
      (success) {
        Get.snackbar(
            StringsManager.operationSuccess, StringsManager.loggedInAsAnonymous,
            backgroundColor: Colors.green.withOpacity(0.5));
        Get.offAllNamed(AppRouter.kMainView);
      },
    );
    loading.value = false;
  }
}
