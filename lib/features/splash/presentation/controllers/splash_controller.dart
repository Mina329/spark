import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/assets_manager.dart';

class SplashController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late Animation<double> textOpacityAnimation;
  late AnimationController animationController;
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
    Future.delayed(
      const Duration(milliseconds: 2500),
      () => Get.offNamed(AppRouter.kOnboardingView),
    );
    // if (CacheData.getData(key: CacheKeys.kONBOARDING) == null) {
    //   await Future.delayed(
    //     const Duration(milliseconds: 2000),
    //     () => GoRouter.of(context).go(AppRouter.kOnboardingView),
    //   );
    // } else {
    //   if (getIt.get<FirebaseAuth>().currentUser != null) {
    //     await Future.delayed(
    //       const Duration(milliseconds: 2000),
    //       () => GoRouter.of(context).go(AppRouter.kHomeView),
    //     );
    //   } else {
    //     clearDataBase();
    //     await Future.delayed(
    //       const Duration(milliseconds: 2000),
    //       () => GoRouter.of(context).go(AppRouter.kAuthView),
    //     );
    //   }
    // }
  }
}
