import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/widgets/loading_overlay.dart';
import 'package:spark/features/profile/presentation/controllers/settings_view_controller/change_user_name_controller.dart';
import 'package:spark/features/profile/presentation/views/settings_view/widgets/settings_view_body.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final ChangeUserNameController changeUserNameController =
        Get.find<ChangeUserNameController>();
    return Scaffold(
      body: Stack(
        children: [
          Obx(() {
            if (changeUserNameController.loading.isTrue) {
              return const LoadingOverlay();
            } else {
              return const SizedBox.shrink();
            }
          }),
          const SettingsViewBody(),
        ],
      ),
    );
  }
}
