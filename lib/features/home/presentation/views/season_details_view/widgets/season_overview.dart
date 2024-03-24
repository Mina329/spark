import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/home/presentation/controllers/season_details_controllers.dart/season_details_controller.dart';

class SeasonOverview extends StatelessWidget {
  const SeasonOverview({super.key});

  @override
  Widget build(BuildContext context) {
    final SeasonDetailsController seasonDetailsController =
        Get.find<SeasonDetailsController>();
    return (seasonDetailsController.seasonResultEntity?.seasonOverview !=
                null &&
            seasonDetailsController
                .seasonResultEntity!.seasonOverview!.isNotEmpty)
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                StringsManager.overview,
                style: StylesManager.styleLatoBold20(context),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  ExpandableText(
                    seasonDetailsController
                            .seasonResultEntity?.seasonOverview ??
                        '',
                    expandText: 'show more',
                    collapseText: 'show less',
                    expandOnTextTap: true,
                    collapseOnTextTap: true,
                    style: StylesManager.styleLatoRegular16(context)
                        .copyWith(color: Colors.grey),
                    animation: true,
                    maxLines: 5,
                    linkColor: ColorManager.primaryColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          )
        : const SizedBox();
  }
}
