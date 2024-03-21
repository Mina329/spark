import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/movie_trailers_controller.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TrailersListView extends StatelessWidget {
  const TrailersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MovieTrailersController>(
      builder: (movieTrailersController) {
        return movieTrailersController.videosControllers.isEmpty
            ? const SizedBox.shrink()
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      StringsManager.hotTrailers,
                      style: StylesManager.styleLatoBold20(context),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: (MediaQuery.of(context).size.width) * 180 / 374,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: YoutubePlayer(
                              controller: movieTrailersController
                                  .videosControllers[index],
                              showVideoProgressIndicator: true,
                              progressIndicatorColor: ColorManager.primaryColor,
                              bottomActions: [
                                const SizedBox(width: 14.0),
                                CurrentPosition(),
                                const SizedBox(width: 8.0),
                                ProgressBar(
                                  isExpanded: true,
                                  colors: const ProgressBarColors(
                                    playedColor: ColorManager.primaryColor,
                                    handleColor: ColorManager.primaryColor,
                                  ),
                                ),
                                RemainingDuration(),
                                const PlaybackSpeedButton(),
                              ],
                              width: MediaQuery.of(context).size.width - 100,
                            ),
                          ),
                        ),
                        itemCount:
                            movieTrailersController.videosControllers.length,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              );
      },
    );
  }
}
