import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/custom_home_appbar.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/home_trending_shows.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/people_of_the_week_widget.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/show_section.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/trailers_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 50,
          ),
        ),
        const SliverToBoxAdapter(
          child: CustomHomeAppBar(),
        ),
        const SliverToBoxAdapter(
          child: HomeTrendingShows(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              StringsManager.featuredToday,
              style: StylesManager.styleLatoBold34(context),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 30,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ShowSection(
              sectionTitle: StringsManager.trendingMovies,
              showAllOnTap: () => Get.toNamed(
                AppRouter.kShowsSectionView,
                arguments: {
                  'title': StringsManager.trendingMovies,
                  'showType': ShowType.Movie
                },
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 30,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ShowSection(
              sectionTitle: StringsManager.trendingTvShows,
              showAllOnTap: () => Get.toNamed(
                AppRouter.kShowsSectionView,
                arguments: {
                  'title': StringsManager.trendingTvShows,
                  'showType': ShowType.TV
                },
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 30,
          ),
        ),
        const SliverToBoxAdapter(
          child: TrailersListView(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 30,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ShowSection(
              sectionTitle: StringsManager.picksForYour,
              showAllOnTap: () => Get.toNamed(
                AppRouter.kShowsSectionView,
                arguments: {
                  'title': StringsManager.picksForYour,
                  'showType': ShowType.Movie
                },
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 30,
          ),
        ),
        const SliverToBoxAdapter(
          child: PeopleOfTheWeekWidget(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 30,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ShowSection(
              sectionTitle: StringsManager.fromYourLists,
              showAllOnTap: () => Get.toNamed(
                AppRouter.kShowsSectionView,
                arguments: {
                  'title': StringsManager.fromYourLists,
                  'showType': ShowType.Movie
                },
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 30,
          ),
        ),
      ],
    );
  }
}
