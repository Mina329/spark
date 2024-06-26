import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/custom_error_widget.dart';
import 'package:spark/features/home/presentation/controllers/season_details_controllers.dart/season_details_controller.dart';
import 'package:spark/features/home/presentation/views/season_details_view/widgets/season_details_view_body.dart';
import 'package:spark/features/home/presentation/views/season_details_view/widgets/season_view_shimmer.dart';

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
            return const SeasonViewShimmer();
          } else {
            return seasonDetailsController.error
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 30, horizontal: 30),
                        child: IconButton(
                          onPressed: () => Get.back(),
                          icon: Icon(
                            FontAwesomeIcons.angleLeft,
                            size: getResponsiveFontSize(context, fontSize: 24),
                          ),
                          color: ColorManager.primaryColor,
                        ),
                      ),
                      const Spacer(),
                      const CustomErrorWidget(),
                      const Spacer(),
                      const SizedBox(
                        height: 24,
                        width: 24,
                      )
                    ],
                  )
                : const SeasonDetailsViewBody();
          }
        },
      ),
    );
  }
}
