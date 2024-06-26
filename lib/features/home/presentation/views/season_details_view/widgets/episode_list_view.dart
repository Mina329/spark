import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/custom_empty_widget.dart';
import 'package:spark/features/home/presentation/controllers/season_details_controllers.dart/season_details_controller.dart';
import 'package:spark/features/home/presentation/views/season_details_view/widgets/episode_item.dart';

class EpisodeListView extends StatelessWidget {
  const EpisodeListView({super.key});

  @override
  Widget build(BuildContext context) {
    final SeasonDetailsController seasonDetailsController =
        Get.find<SeasonDetailsController>();
    return seasonDetailsController.seasonResultEntity?.episodes != null &&
            seasonDetailsController.seasonResultEntity!.episodes!.isNotEmpty
        ? AnimationLimiter(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(milliseconds: 375),
                  childAnimationBuilder: (widget) => SlideAnimation(
                    verticalOffset: 50.0,
                    child: FadeInAnimation(
                      child: widget,
                    ),
                  ),
                  children: [
                    Text(
                      StringsManager.episodesGuide,
                      style: StylesManager.styleLatoBold20(context),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ...List.generate(
                      seasonDetailsController
                          .seasonResultEntity!.episodes!.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: EpisodeItem(
                          episode: seasonDetailsController
                              .seasonResultEntity!.episodes![index],
                          episodeNumber: index + 1,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                )),
          )
        : const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: CustomEmptyWidget(),
          );
  }
}
