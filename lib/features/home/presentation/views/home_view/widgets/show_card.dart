import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/assets_manager.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';

class ShowCard extends StatelessWidget {
  const ShowCard({
    super.key,
    required this.show,
  });
  final dynamic show;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(5),
      onTap: () => Get.toNamed(
        AppRouter.kShowDetailsView,
        arguments: {
          'id': show.id,
          'showType': show.showType,
        },
        preventDuplicates: false,
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.3,
        ),
        child: AspectRatio(
          aspectRatio: 0.6,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 27 / 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: CachedNetworkImage(
                    imageUrl: show.posterPath != null
                        ? 'https://image.tmdb.org/t/p/w342/${show.posterPath}'
                        : '',
                    placeholder: (context, url) => FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Icon(
                        FontAwesomeIcons.film,
                        color: Colors.grey,
                        size: getResponsiveFontSize(context, fontSize: 60),
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
                height: 5,
              ),
              Flexible(
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Text(
                      show.releaseDate == null
                          ? ''
                          : show.releaseDate.year.toString(),
                      style: StylesManager.styleLatoRegular14(context),
                    ),
                    const Spacer(),
                    Text(
                      show.voteAverage?.toStringAsFixed(1) ?? '',
                      style: StylesManager.styleLatoRegular14(context),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Icon(
                      FontAwesomeIcons.solidStar,
                      color: ColorManager.goldColor,
                      size: getResponsiveFontSize(context, fontSize: 15),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
