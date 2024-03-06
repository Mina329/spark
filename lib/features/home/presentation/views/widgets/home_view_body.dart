import 'package:flutter/material.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/home/presentation/views/widgets/custom_home_appbar.dart';
import 'package:spark/features/home/presentation/views/widgets/home_trending_shows.dart';
import 'package:spark/features/home/presentation/views/widgets/people_of_the_week_widget.dart';
import 'package:spark/features/home/presentation/views/widgets/show_section.dart';
import 'package:spark/features/home/presentation/views/widgets/trailers_list_view.dart';

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
          child: ShowSection(
            sectionTitle: StringsManager.trendingMovies,
            showAllOnTap: () {},
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 30,
          ),
        ),
        SliverToBoxAdapter(
          child: ShowSection(
            sectionTitle: StringsManager.trendingTvShows,
            showAllOnTap: () {},
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
          child: ShowSection(
            sectionTitle: StringsManager.picksForYour,
            showAllOnTap: () {},
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
          child: ShowSection(
            sectionTitle: StringsManager.fromYourLists,
            showAllOnTap: () {},
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
