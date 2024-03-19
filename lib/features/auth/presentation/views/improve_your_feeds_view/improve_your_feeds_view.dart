import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/widgets/loading_overlay.dart';
import 'package:spark/features/auth/presentation/controllers/improve_your_feed_controllers/improve_your_feed_controller.dart';
import 'package:spark/features/auth/presentation/views/improve_your_feeds_view/widgets/improve_your_feed_view.dart';

class ImproveYourFeedsView extends StatelessWidget {
  const ImproveYourFeedsView({super.key});

  @override
  Widget build(BuildContext context) {
    final ImproveYourFeedsController improveYourFeedsController =
        Get.find<ImproveYourFeedsController>();
    return Scaffold(
      body: Stack(
        children: [
          const ImproveYourFeedsViewBody(),
          Obx(() {
            if (improveYourFeedsController.loading.isTrue) {
              return const LoadingOverlay();
            } else {
              return const SizedBox.shrink();
            }
          }),
        ],
      ),
    );
  }
}
