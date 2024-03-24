import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:spark/core/utils/assets_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/home/presentation/views/section_view/widgets/rating_row.dart';

class EpisodeItem extends StatelessWidget {
  const EpisodeItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {},
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
                      'https://image.tmdb.org/t/p/original/9ySQwesIgS804Au9vbWk9tUOp9p.jpg',
                  placeholder: (context, url) => Center(
                    child: Lottie.asset(Assets.assetsAnimationsMovieLoading),
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      "Days Gone Bye",
                      style: StylesManager.styleLatoRegular18(context),
                      maxLines: 2,
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
                      "2010-10-31",
                      style: StylesManager.styleLatoRegular16(context).copyWith(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
                const RatingRow(
                  averageRating: '8.7',
                  ratingCount: '3952',
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
