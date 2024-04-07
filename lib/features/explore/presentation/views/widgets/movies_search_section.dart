import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/explore/presentation/controllers/explore_view_controller.dart';
import 'package:spark/features/explore/presentation/views/widgets/explore_genre_item.dart';
import 'package:spark/features/explore/presentation/views/widgets/explore_item.dart';

class MoviesSearchSection extends StatelessWidget {
  const MoviesSearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    final exploreViewController = Get.find<ExploreViewController>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(
              FontAwesomeIcons.film,
              color: ColorManager.primaryColor,
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              StringsManager.movies,
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
              exploreViewController.moviesExploreBanners.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 15),
                child: GestureDetector(
                  onTap: () => Get.toNamed(
                    AppRouter.kShowsSectionView,
                    arguments: {
                      'title': exploreViewController.moviesExploreTitles[index],
                      'showType': ShowType.Movie,
                      'sectionType': exploreViewController
                          .moviesExploreSectionTypes[index],
                      'showsList': exploreViewController.moviesExplore[index]
                    },
                    preventDuplicates: false,
                  ),
                  child: ExploreItem(
                    exploreItemTitle:
                        exploreViewController.moviesExploreTitles[index],
                    exploreItemBanners:
                        exploreViewController.moviesExploreBanners[index],
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
              exploreViewController.moviesGenres.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 10),
                child: GestureDetector(
                  onTap: () => Get.toNamed(
                    AppRouter.kShowsSectionView,
                    arguments: {
                      'title': exploreViewController.moviesGenres[index].name,
                      'showType': ShowType.Movie,
                      'sectionType': SectionType.MoviesCategory,
                      'showsList': [],
                      'category': exploreViewController.moviesGenres[index].id
                    },
                    preventDuplicates: false,
                  ),
                  child: ExploreGenreItem(
                    name: exploreViewController.moviesGenres[index].name,
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
