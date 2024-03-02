import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/features/onboarding/data/data_sources/static.dart';
import 'package:spark/features/onboarding/presentation/controllers/onboarding_controller.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final OnboardingController onboardingController =
        Get.find<OnboardingController>();
    return Row(
      children: List.generate(
        onboardingImages.length,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Obx(
            () => Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                color: onboardingController.pageIndex.value == index
                    ? ColorManager.primaryColor
                    : Colors.white.withOpacity(0.2),
              ),
              width: onboardingController.pageIndex.value == index ? 30 : 10,
              height: 10,
            ),
          ),
        ),
      ),
    );
  }
}
