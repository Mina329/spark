import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/explore/presentation/controllers/explore_view_controller.dart';
import 'package:spark/features/explore/presentation/views/widgets/explore_genre_item.dart';
import 'package:spark/features/explore/presentation/views/widgets/explore_item.dart';

import '../../../../../core/utils/app_router.dart';

class TvShowSearchSection extends StatelessWidget {
  const TvShowSearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    final exploreViewController = Get.find<ExploreViewController>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(
              FontAwesomeIcons.tv,
              color: ColorManager.primaryColor,
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              StringsManager.tvShows,
              style: StylesManager.styleLatoBold20(context),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              exploreViewController.tvShowsExploreBanners.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 15),
                child: GestureDetector(
                  onTap: () => Get.toNamed(
                    AppRouter.kShowsSectionView,
                    arguments: {
                      'title':
                          exploreViewController.tvShowsExploreTitles[index],
                      'showType': ShowType.TV,
                      'sectionType': exploreViewController
                          .tvShowsExploreSectionTypes[index],
                      'showsList': exploreViewController.tvShowsExplore[index]
                    },
                    preventDuplicates: false,
                  ),
                  child: ExploreItem(
                    exploreItemTitle:
                        exploreViewController.tvShowsExploreTitles[index],
                    exploreItemBanners:
                        exploreViewController.tvShowsExploreBanners[index],
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              exploreViewController.tvShowsGenres.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 10),
                child: GestureDetector(
                  onTap: () => Get.toNamed(
                    AppRouter.kShowsSectionView,
                    arguments: {
                      'title': exploreViewController.tvShowsGenres[index].name,
                      'showType': ShowType.TV,
                      'sectionType': SectionType.TvShowsCategory,
                      'showsList': [],
                      'category': exploreViewController.tvShowsGenres[index].id
                    },
                    preventDuplicates: false,
                  ),
                  child: ExploreGenreItem(
                    name: exploreViewController.tvShowsGenres[index].name,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
