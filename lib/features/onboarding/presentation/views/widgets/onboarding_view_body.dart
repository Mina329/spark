import 'package:flutter/material.dart';
import 'package:spark/core/utils/assets_manager.dart';

import 'package:spark/features/onboarding/presentation/views/widgets/dot_indicator.dart';
import 'package:spark/features/onboarding/presentation/views/widgets/next_button.dart';
import 'package:spark/features/onboarding/presentation/views/widgets/onboarding_pageview.dart';
import 'package:spark/features/onboarding/presentation/views/widgets/skip_button.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: buildContainerDecoration(),
      child: const Column(
        children: [
          SizedBox(
            height: 45,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: SkipButton(),
          ),
          Flexible(
            child: OnboardingPageView(),
          ),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 21,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DotIndicator(),
                NextButton(),
              ],
            ),
          ),
          SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }

  BoxDecoration buildContainerDecoration() {
    return const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          Assets.assetsImagesShade,
        ),
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
