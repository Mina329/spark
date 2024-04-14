import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/widgets/custom_empty_widget.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/people_section.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/show_section.dart';
import 'package:spark/features/profile/presentation/controllers/profile_view_controllers/favourite_celebrities_controller.dart';
import 'package:spark/features/profile/presentation/controllers/profile_view_controllers/favourite_movies_controller.dart';
import 'package:spark/features/profile/presentation/controllers/profile_view_controllers/favourite_tv_shows_controller.dart';
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
            child: GetBuilder<FavouriteMoviesController>(
              builder: (favouriteMoviesController) {
                if (favouriteMoviesController.favouriteMovies.isEmpty) {
                  return const SizedBox.shrink();
                } else {
                  return Column(
                    children: [
                      ShowSection(
                        sectionTitle: StringsManager.favouriteMovies,
                        showAllOnTap: () => Get.toNamed(
                          AppRouter.kShowsSectionView,
                          arguments: {
                            'title': StringsManager.favouriteMovies,
                            'showType': ShowType.Movie,
                            'sectionType': SectionType.None,
                            'showsList':
                                favouriteMoviesController.favouriteMovies
                          },
                          preventDuplicates: false,
                        ),
                        items: favouriteMoviesController.favouriteMovies
                            .take(10)
                            .toList(),
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  );
                }
              },
            ),
          ),
          SliverToBoxAdapter(
            child: GetBuilder<FavouriteTvShowsController>(
                builder: (favouriteTvShowsController) {
              if (favouriteTvShowsController.favouriteTvShows.isEmpty) {
                return const SizedBox.shrink();
              } else {
                return Column(
                  children: [
                    ShowSection(
                      sectionTitle: StringsManager.favouriteTvShows,
                      showAllOnTap: () => Get.toNamed(
                        AppRouter.kShowsSectionView,
                        arguments: {
                          'title': StringsManager.favouriteTvShows,
                          'showType': ShowType.TV,
                          'sectionType': SectionType.None,
                          'showsList':
                              favouriteTvShowsController.favouriteTvShows
                        },
                        preventDuplicates: false,
                      ),
                      items: favouriteTvShowsController.favouriteTvShows
                          .take(10)
                          .toList(),
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                );
              }
            }),
          ),
          SliverToBoxAdapter(
            child: GetBuilder<FavouriteCelebritiesController>(
                builder: (favouriteCelebritiesController) {
              if (favouriteCelebritiesController.favouriteCelebrities.isEmpty) {
                return const SizedBox.shrink();
              } else {
                return PeopleSection(
                  sectionTitle: StringsManager.favouriteCelebrities,
                  people: favouriteCelebritiesController.favouriteCelebrities
                      .take(10)
                      .toList(),
                  showAllOnTap: () => Get.toNamed(
                    AppRouter.kShowsSectionView,
                    arguments: {
                      'title': StringsManager.favouriteCelebrities,
                      'showType': ShowType.Person,
                      'sectionType': SectionType.None,
                      'showsList':
                          favouriteCelebritiesController.favouriteCelebrities,
                    },
                    preventDuplicates: false,
                  ),
                );
              }
            }),
          ),
          GetBuilder<FavouriteMoviesController>(
              builder: (favouriteMoviesController) {
            return GetBuilder<FavouriteTvShowsController>(
                builder: (favouriteTvShowsController) {
              return GetBuilder<FavouriteCelebritiesController>(
                builder: (favouriteCelebritiesController) {
                  if (favouriteMoviesController.favouriteMovies.isEmpty &&
                      favouriteTvShowsController.favouriteTvShows.isEmpty &&
                      favouriteCelebritiesController
                          .favouriteCelebrities.isEmpty) {
                    return const SliverFillRemaining(
                      fillOverscroll: false,
                      hasScrollBody: false,
                      child: CustomEmptyWidget(),
                    );
                  } else {
                    return const SliverToBoxAdapter();
                  }
                },
              );
            });
          }),
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
