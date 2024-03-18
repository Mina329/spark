import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/auth/domain/usecases/log_in_with_google_usecase.dart';

class LogInWithGoogleController extends GetxController {
  final LogInWithGoogleUsecase logInWithGoogleUsecase;

  LogInWithGoogleController({required this.logInWithGoogleUsecase});
  RxBool loading = false.obs;

  void logInWithGoogle() async {
    loading.value = true;
    var result = await logInWithGoogleUsecase.execute();
    result.fold(
      (failure) => Get.snackbar(
        StringsManager.operationFailed,
        failure.message,
        backgroundColor: Colors.red.withOpacity(0.5),
      ),
      (success) {
        Get.snackbar(StringsManager.operationSuccess,
            StringsManager.loggedInSuccessfully,
            backgroundColor: Colors.green.withOpacity(0.5));
        Get.offAllNamed(AppRouter.kMainView);
      },
    );
    loading.value = false;
  }
}
