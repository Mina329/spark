import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/assets_manager.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/domain/entities/episode_entity.dart';
import 'package:spark/features/home/presentation/views/section_view/widgets/rating_row.dart';

class EpisodeItem extends StatelessWidget {
  const EpisodeItem({
    super.key,
    required this.episode,
    required this.episodeNumber,
  });
  final EpisodeEntity episode;
  final int episodeNumber;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        final String url =
            'https://vidsrc.to/embed/tv/${Get.arguments['id']}/${Get.arguments['seasonNumber']}/$episodeNumber';
        Get.offNamed(
          AppRouter.kShowView,
          arguments: {
            'url': url,
            'id': Get.arguments['id'],
            'showType': ShowType.TV
          },
        );
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.11,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 300 / 180,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  imageUrl:
                      'https://image.tmdb.org/t/p/w342/${episode.episodePosterUrl}',
                  placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(
                        color: ColorManager.primaryColor,
                      ),
                    ),
                  errorWidget: (context, url, error) => Center(
                    child: Image.asset(
                      Assets.assetsImagesTv,
                      height: 80,
                      width: 80,
                    ),
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        episode.episodeTitle != null
                            ? '$episodeNumber. ${episode.episodeTitle}'
                            : '',
                        style: StylesManager.styleLatoRegular18(context),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        episode.episodeReleaseDate == null
                            ? ''
                            : DateFormat('MMMM d, yyyy')
                                .format(episode.episodeReleaseDate!),
                        style:
                            StylesManager.styleLatoRegular16(context).copyWith(
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? Colors.grey[800]
                                  : Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                  RatingRow(
                    averageRating: episode.episodeVoteAverage != null
                        ? episode.episodeVoteAverage!.toStringAsFixed(1)
                        : '',
                    ratingCount: episode.episodeVoteCount != null
                        ? episode.episodeVoteCount.toString()
                        : '',
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
