import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/features/home/presentation/controllers/season_details_controllers.dart/season_details_controller.dart';
import 'package:spark/features/home/presentation/views/person_details_view/widgets/person_details_view_shimmer.dart';
import 'package:spark/features/home/presentation/views/season_details_view/widgets/season_details_view_body.dart';

class SeasonDetailsView extends StatelessWidget {
  const SeasonDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final SeasonDetailsController seasonDetailsController =
        Get.find<SeasonDetailsController>();

    return Scaffold(
      body: Obx(
        () {
          if (seasonDetailsController.loading.isTrue) {
            return const PersonDetailsViewShimmer();
          } else {
            return const SeasonDetailsViewBody();
          }
        },
      ),
    );
  }
}
