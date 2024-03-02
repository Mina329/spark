import 'package:flutter/material.dart';
import 'package:spark/core/widgets/adaptive_layout.dart';
import 'package:spark/features/onboarding/presentation/views/widgets/onboarding_mobile.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => const OnboardingMobile(),
      tabletLayout: (context) => const SizedBox(),
    );
  }
}
