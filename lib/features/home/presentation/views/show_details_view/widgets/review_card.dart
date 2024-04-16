import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:spark/core/utils/assets_manager.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/home/domain/entities/review_entity.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key, required this.reviewEntity});
  final ReviewEntity reviewEntity;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Theme.of(context).brightness == Brightness.light
            ? Colors.white
            : ColorManager.genreColor,
        border: Border.all(
          color: ColorManager.primaryColor,
        ),
      ),
      padding: const EdgeInsets.only(right: 22, left: 22, top: 20, bottom: 15),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: ClipOval(
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://image.tmdb.org/t/p/original/${reviewEntity.userProfile}',
                    placeholder: (context, url) => Center(
                      child: Lottie.asset(Assets.assetsAnimationsMovieLoading),
                    ),
                    errorWidget: (context, url, error) => Center(
                      child: Image.asset(
                        Assets.assetsImagesTv,
                        height: 40,
                        width: 40,
                      ),
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    reviewEntity.userName == null ||
                            reviewEntity.userName!.isEmpty
                        ? StringsManager.anonymous
                        : reviewEntity.userName!,
                    style: StylesManager.styleLatoBold20(context),
                  ),
                  Text(
                    reviewEntity.userMail != null
                        ? '@${reviewEntity.userMail}'
                        : '',
                    style: StylesManager.styleLatoRegular14(context)
                        .copyWith(color: ColorManager.primaryColor),
                  ),
                ],
              ),
              const Spacer(),
              if (reviewEntity.voteAverage != null)
                Icon(
                  FontAwesomeIcons.solidStar,
                  color: ColorManager.goldColor,
                  size: getResponsiveFontSize(context, fontSize: 16),
                ),
              const SizedBox(
                width: 5,
              ),
              Text(
                reviewEntity.voteAverage != null
                    ? '${reviewEntity.voteAverage!.toInt()}/10'
                    : '',
                style: StylesManager.styleLatoBold20(context),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ExpandableText(
            reviewEntity.reviewContent ?? '',
            expandText: 'show more',
            collapseText: 'show less',
            expandOnTextTap: true,
            collapseOnTextTap: true,
            style: StylesManager.styleLatoRegular16(context),
            animation: true,
            maxLines: 5,
            linkColor: ColorManager.primaryColor,
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              reviewEntity.reviewDate != null
                  ? DateFormat("MMM dd, yyyy").format(reviewEntity.reviewDate!)
                  : '',
              style: StylesManager.styleLatoRegular14(context),
            ),
          )
        ],
      ),
    );
  }
}
