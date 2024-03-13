import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/color_manager.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: IconButton(
        onPressed: () => Get.toNamed(AppRouter.kSettingsView),
        icon: const Icon(
          FontAwesomeIcons.gear,
          color: ColorManager.primaryColor,
        ),
      ),
    );
  }
}
