import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/widgets/access_denied_widget.dart';

void showAccessDeniedDialog(BuildContext context) {
  Get.dialog(
    Dialog(
      backgroundColor: Theme.of(context).brightness == Brightness.light
          ? Colors.white
          : Color.lerp(ColorManager.primaryColor, Colors.black, 0.9),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: AccessDeniedWidget(),
      ),
    ),
  );
}
