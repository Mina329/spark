import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: ColorManager.genreColor,
      ),
      padding: const EdgeInsets.only(right: 22, left: 22, top: 20, bottom: 15),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: CachedNetworkImageProvider(
                  'https://image.tmdb.org/t/p/original/hLLsAvAnVT0cFU7JuuaaItTWXv8.jpg',
                ),
                maxRadius: 25,
                minRadius: 20,
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mina Emil',
                    style: StylesManager.styleLatoBold16(context),
                  ),
                  Text(
                    '@mina329',
                    style: StylesManager.styleLatoRegular14(context)
                        .copyWith(color: ColorManager.primaryColor),
                  ),
                ],
              ),
              const Spacer(),
              Icon(
                FontAwesomeIcons.solidStar,
                color: ColorManager.goldColor,
                size: getResponsiveFontSize(context, fontSize: 16),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                '6/10',
                style: StylesManager.styleLatoBold16(context),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'In pleasing a result, the third entry into the Fantastic Beasts franchise (a franchise that seemingly exists with support but no dedicated fanbase or huge fanfare) is a marked improvement on the dire misstep that was 2018\'s The Crimes of ...',
            style: StylesManager.styleLatoRegular16(context),
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              'Apr 21, 2022',
              style: StylesManager.styleLatoRegular14(context),
            ),
          )
        ],
      ),
    );
  }
}
