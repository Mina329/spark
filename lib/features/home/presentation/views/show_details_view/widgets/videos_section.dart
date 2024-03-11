import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/presentation/controllers/show_details_controller.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideosSection extends StatelessWidget {
  const VideosSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ShowDetailsController showDetailsController =
        Get.find<ShowDetailsController>();
    return Column(
      children: [
        Row(
          children: [
            Text(
              StringsManager.videos,
              style: StylesManager.styleLatoBold16(context),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              '9',
              style: StylesManager.styleLatoBold16(context)
                  .copyWith(color: Colors.grey),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () => Get.toNamed(
                AppRouter.kMediaView,
                arguments: {
                  'mediaType': MediaType.Videos,
                },
              ),
              child: Text(
                StringsManager.showAll,
                style: StylesManager.styleLatoRegular16(context)
                    .copyWith(color: ColorManager.primaryColor),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Column(
                children: [
                  Flexible(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: YoutubePlayer(
                        controller:
                            showDetailsController.videosControllers[index],
                        showVideoProgressIndicator: true,
                        progressIndicatorColor: ColorManager.primaryColor,
                        width: MediaQuery.of(context).size.width - 100,
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
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Trailer of the Movie',
                    style: StylesManager.styleLatoRegular14(context),
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            itemCount: showDetailsController.videosControllers.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
