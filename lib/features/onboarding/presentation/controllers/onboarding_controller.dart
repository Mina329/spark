import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/features/onboarding/data/data_sources/static.dart';

class OnboardingController extends GetxController {
  late PageController controller;
  RxInt pageIndex = 0.obs;
  @override
  void onInit() {
    super.onInit();
    for (var imagePath in onboardingImages) {
      precacheImage(AssetImage(imagePath), Get.context!);
    }
    controller = PageController(initialPage: pageIndex.value);
    controller.addListener(
      () {
        int currentPage = controller.page!.round();
        if (pageIndex.value != currentPage) {
          pageIndex.value = currentPage;
        }
      },
    );
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }

  void Function()? onPressedNext() {
    if (pageIndex.value == onboardingImages.length - 1) {
      Get.offNamed(AppRouter.kAuthView);
      return null;
    }
    controller.nextPage(
      duration: const Duration(
        milliseconds: 500,
      ),
      curve: Curves.ease,
    );
    return null;
  }

  void Function()? onPressedSkip() {
    Get.offNamed(AppRouter.kAuthView);
    return null;
  }
}
