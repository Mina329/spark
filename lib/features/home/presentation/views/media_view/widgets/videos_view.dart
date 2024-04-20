import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:spark/core/utils/assets_manager.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/widgets/custom_appbar.dart';
import 'package:spark/features/home/presentation/controllers/media_controllers/media_controller.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideosView extends StatelessWidget {
  const VideosView({super.key});

  @override
  Widget build(BuildContext context) {
    final MediaController mediaController = Get.find<MediaController>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        controller: mediaController.scrollController,
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomAppBar(
              sectionName: StringsManager.videos,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          GetBuilder<MediaController>(
            builder: (mediaController) {
              return AnimationLimiter(
                child: SliverList.builder(
                  itemBuilder: (context, index) =>
                      AnimationConfiguration.staggeredList(
                    position: index,
                    duration: const Duration(milliseconds: 375),
                    child: SlideAnimation(
                      verticalOffset: 50.0,
                      child: FadeInAnimation(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: YoutubePlayer(
                              controller:
                                  mediaController.videosControllers[index],
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
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  itemCount: mediaController.videosControllers.length,
                ),
              );
            },
          ),
          SliverToBoxAdapter(
            child: Obx(() {
              if (mediaController.loadingMore.isTrue) {
                return Center(
                  child: Lottie.asset(
                    Assets.assetsAnimationsMovieLoading,
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.width * 0.5,
                  ),
                );
              } else {
                return const SizedBox.shrink();
              }
            }),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 15,
            ),
          ),
        ],
      ),
    );
  }
}
