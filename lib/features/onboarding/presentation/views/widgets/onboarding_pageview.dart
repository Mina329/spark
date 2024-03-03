import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/onboarding/data/data_sources/static.dart';
import 'package:spark/features/onboarding/presentation/controllers/onboarding_controller.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final OnboardingController onboardingController =
        Get.find<OnboardingController>();
    return PageView.builder(
      controller: onboardingController.controller,
      itemCount: onboardingImages.length,
      itemBuilder: (context, index) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: Image.asset(
                  onboardingImages[index],
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 44,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 21,
            ),
            child: Text(
              onboardingTitles[index],
              style: StylesManager.styleLatoBold34(context),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 21,
            ),
            child: Text(
              onboardingDescriptions[index],
              style: StylesManager.styleLatoRegular18(context),
            ),
          ),
        ],
      ),
    );
  }
}
