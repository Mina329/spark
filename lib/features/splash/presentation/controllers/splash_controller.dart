import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/cache/cache_helper.dart';
import 'package:spark/core/cache/cache_keys_values.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/assets_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/auth/domain/usecases/log_in_anonymously_usecase.dart';

class SplashController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late Animation<double> textOpacityAnimation;
  late AnimationController animationController;
  final FirebaseAuth firebase = FirebaseAuth.instance;
  final LogInAnonymouslyUsecase logInAnonymouslyUsecase;

  SplashController({required this.logInAnonymouslyUsecase});
  @override
  void onInit() {
    super.onInit();
    precacheImage(const AssetImage(Assets.assetsImagesSparkLogo), Get.context!);
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );

    textOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.2, 0.8, curve: Curves.easeInOut),
      ),
    );
    animationController.forward();
    _navigateToOnBoarding();
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }

  void _navigateToOnBoarding() async {
    if (CacheData.getData(key: CacheKeys.kONBOARDING) == null) {
      await Future.delayed(
        const Duration(milliseconds: 2500),
        () => Get.offAllNamed(AppRouter.kOnboardingView),
      );
    } else {
      if (firebase.currentUser != null) {
        await Future.delayed(
          const Duration(milliseconds: 2500),
          () => Get.offAllNamed(AppRouter.kMainView),
        );
      } else {
        await Future.delayed(
          const Duration(milliseconds: 2500),
          () {
            logInAnonymously();
          },
        );
      }
    }
  }

  void logInAnonymously() async {
    var result = await logInAnonymouslyUsecase.execute();
    result.fold(
      (failure) {
        Get.offAllNamed(AppRouter.kAuthView);
      },
      (success) {
        Get.snackbar(
            StringsManager.operationSuccess, StringsManager.loggedInAsAnonymous,
            backgroundColor: Colors.green.withOpacity(0.5));
        Get.offAllNamed(AppRouter.kMainView);
      },
    );
  }
}
