import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/onboarding/presentation/controllers/onboarding_controller.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final OnboardingController onboardingController =
        Get.find<OnboardingController>();
    return TextButton(
      onPressed: onboardingController.onPressedSkip,
      child: Text(
        StringsManager.skip,
        style: StylesManager.styleLatoRegular18().copyWith(
          color: ColorManager.primaryColor,
        ),
      ),
    );
  }
}
