import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text(
        'Onboarding',
        style: TextStyle(fontSize: 50),
      ),
    );
  }
}
