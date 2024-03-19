import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/auth/domain/entities/user_data.dart';
import 'package:spark/features/auth/domain/usecases/get_user_genres_usecase.dart';
import 'package:spark/features/auth/domain/usecases/log_in_with_email_and_password_usecase.dart';

class LogInUserWithEmailAndPasswordController extends GetxController {
  final LogInWithEmailAndPasswordUsecase usecase;
  final GetUserGenreUsecase getUserGenreUsecase;

  LogInUserWithEmailAndPasswordController(
      {required this.getUserGenreUsecase, required this.usecase});

  String loginEmail = '';
  String loginPassword = '';
  final GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  RxBool loading = false.obs;

  void logInWithEmailAndPassword(
      {required String email, required String password}) async {
    loading.value = true;
    var result = await usecase.execute(
      UserData(email: email, password: password),
    );
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
      (l) => Get.offAllNamed(AppRouter.kMainView),
      (genres) {
        if (genres.isEmpty) {
          Get.offAllNamed(AppRouter.kImproveYourFeedsView);
        } else {
          Get.offAllNamed(
            AppRouter.kMainView,
            arguments: {
              "genres": genres,
            },
          );
        }
      },
    );
  }

  void Function()? loginOnPressed() {
    loginEmail = '';
    loginPassword = '';
    if (loginKey.currentState!.validate()) {
      loginKey.currentState!.save();
      logInWithEmailAndPassword(
        email: loginEmail,
        password: loginPassword,
      );
    }
    return null;
  }

  void loginEmailOnSaved(String? email) {
    loginEmail = email!;
  }

  void loginPasswordOnSaved(String? password) {
    loginPassword = password!;
  }
}
