import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/home_view_shimmer.dart';
import 'package:spark/features/profile/presentation/controllers/profile_view_controllers/user_info_controller.dart';
import 'package:spark/features/profile/presentation/views/profile_view/widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final UserInfoController userInfoController =
        Get.find<UserInfoController>();
    return Scaffold(
      body: Obx(() {
        if (userInfoController.loading.isTrue) {
          return const HomeViewShimmer();
        } else {
          return const ProfileViewBody();
        }
      }),
    );
  }
}
