import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/people_section.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/show_section.dart';
import 'package:spark/features/profile/presentation/views/profile_view/widgets/profile_card.dart';
import 'package:spark/features/profile/presentation/views/profile_view/widgets/settings_button.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          ),
          const SliverToBoxAdapter(
            child: SettingsButton(),
          ),
          const SliverToBoxAdapter(
            child: ProfileCard(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: ShowSection(
              sectionTitle: StringsManager.favouriteMovies,
              showAllOnTap: () => Get.toNamed(
                AppRouter.kShowsSectionView,
                arguments: {
                  'title': StringsManager.favouriteMovies,
                  'showType': ShowType.Movie
                },
              ),
              items: const [],
              showType: ShowType.Movie,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: ShowSection(
              sectionTitle: StringsManager.favouriteTvShows,
              showAllOnTap: () => Get.toNamed(
                AppRouter.kShowsSectionView,
                arguments: {
                  'title': StringsManager.favouriteTvShows,
                  'showType': ShowType.TV
                },
              ),
              items: const [],
              showType: ShowType.Movie,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          const SliverToBoxAdapter(
            child: PeopleSection(
              sectionTitle: StringsManager.favouriteCelebrities,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
        ],
      ),
    );
  }
}
