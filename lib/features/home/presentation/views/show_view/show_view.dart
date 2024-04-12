import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/features/home/presentation/controllers/show_controllers/show_controller.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ShowView extends StatelessWidget {
  const ShowView({super.key});

  @override
  Widget build(BuildContext context) {
    final ShowController showController = Get.find<ShowController>();
    return PopScope(
      onPopInvoked: (didPop) async {
        await showController.updateOrientationAndStatusBarOnPop();
      },
      child: Scaffold(
        appBar: null,
        body: Obx(() {
          if (showController.loading.isTrue) {
            return const Center(
              child: CircularProgressIndicator(
                color: ColorManager.primaryColor,
              ),
            );
          } else {
            return WebViewWidget(
              controller: showController.controller!,
            );
          }
        }),
      ),
    );
  }
}
