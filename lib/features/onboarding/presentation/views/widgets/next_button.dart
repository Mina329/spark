import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/onboarding/data/data_sources/static.dart';
import 'package:spark/features/onboarding/presentation/controllers/onboarding_controller.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final OnboardingController onboardingController =
        Get.find<OnboardingController>();
    return SizedBox(
      height: 54,
      width: MediaQuery.of(context).size.width * 0.4,
      child: ElevatedButton(
        onPressed: onboardingController.onPressedNext,
        child: Obx(
          () => Text(
            onboardingController.pageIndex.value == onboardingImages.length - 1
                ? StringsManager.getStarted
                : StringsManager.next,
            style: StylesManager.styleLatoBold20(context).copyWith(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
