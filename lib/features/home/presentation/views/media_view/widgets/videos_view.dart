import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/custom_appbar.dart';
import 'package:spark/features/home/presentation/controllers/media_controller.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideosView extends StatelessWidget {
  const VideosView({super.key});

  @override
  Widget build(BuildContext context) {
    final MediaController mediaController = Get.find<MediaController>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
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
          SliverList.builder(
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: YoutubePlayer(
                      controller: mediaController.videosControllers[index],
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
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Trailer of the Movie',
                    style: StylesManager.styleLatoBold16(context),
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            itemCount: mediaController.videosControllers.length,
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
        ],
      ),
    );
  }
}
