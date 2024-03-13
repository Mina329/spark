import 'package:flutter/material.dart';
import 'package:spark/features/profile/presentation/views/profile_view/widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProfileViewBody(),
    );
  }
}
