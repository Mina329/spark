import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:spark/core/widgets/loading_overlay.dart';
import 'package:spark/features/home/presentation/controllers/favourite_controller.dart';
import 'package:spark/features/home/presentation/controllers/show_details_controllers/show_details_controller.dart';
import 'package:spark/features/home/presentation/views/person_details_view/widgets/person_details_view_shimmer.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/show_details_view_body.dart';

class ShowDetailsView extends StatelessWidget {
  const ShowDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final ShowDetailsController showDetailsController =
        Get.find<ShowDetailsController>();
    final FavouriteController favouriteController =
        Get.find<FavouriteController>();

    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () {
              if (showDetailsController.loading.isTrue ||
                  favouriteController.checkLoading.isTrue) {
                return const PersonDetailsViewShimmer();
              } else {
                return const ShowDetailsViewBody();
              }
            },
          ),
          Obx(() {
            if (favouriteController.loading.isTrue) {
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
