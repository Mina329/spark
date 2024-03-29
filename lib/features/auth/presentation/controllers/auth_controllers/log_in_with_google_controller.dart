import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/auth/domain/usecases/get_user_genres_flag_usecase.dart';
import 'package:spark/features/auth/domain/usecases/log_in_with_google_usecase.dart';

class LogInWithGoogleController extends GetxController {
  final LogInWithGoogleUsecase logInWithGoogleUsecase;
  final GetUserGenreFlagUsecase getUserGenreUsecase;

  RxBool loading = false.obs;

  LogInWithGoogleController(
      {required this.logInWithGoogleUsecase,
      required this.getUserGenreUsecase});

  void logInWithGoogle() async {
    loading.value = true;
    var result = await logInWithGoogleUsecase.execute();
    result.fold(
      (failure) => Get.snackbar(
        StringsManager.operationFailed,
        failure.message,
        backgroundColor: Colors.red.withOpacity(0.5),
      ),
      (success) async {
        Get.snackbar(StringsManager.operationSuccess,
            StringsManager.loggedInSuccessfully,
            backgroundColor: Colors.green.withOpacity(0.5));
        await getGenres();
      },
    );
    loading.value = false;
  }

  Future<void> getGenres() async {
    var res = await getUserGenreUsecase.execute();
    res.fold(
      (l) {
        Get.offAllNamed(
          AppRouter.kMainView,
        );
      },
      (genresflag) {
        if (!genresflag) {
          Get.offAllNamed(AppRouter.kImproveYourFeedsView);
        } else {
          Get.offAllNamed(
            AppRouter.kMainView,
          );
        }
      },
    );
  }
}
