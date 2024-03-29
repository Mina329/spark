import 'package:flutter/material.dart';
import 'package:spark/features/profile/presentation/views/settings_view/widgets/settings_view_body.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SettingsViewBody(),
    );
  }
}
