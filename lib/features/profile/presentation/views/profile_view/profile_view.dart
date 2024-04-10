import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/features/profile/presentation/controllers/profile_view_controllers/favourite_celebrities_controller.dart';
import 'package:spark/features/profile/presentation/controllers/profile_view_controllers/favourite_movies_controller.dart';
import 'package:spark/features/profile/presentation/controllers/profile_view_controllers/favourite_tv_shows_controller.dart';
import 'package:spark/features/profile/presentation/controllers/profile_view_controllers/user_info_controller.dart';
import 'package:spark/features/profile/presentation/views/profile_view/widgets/profile_view_body.dart';
import 'package:spark/features/profile/presentation/views/profile_view/widgets/profile_view_shimmer.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final UserInfoController userInfoController =
        Get.find<UserInfoController>();
    final FavouriteTvShowsController favouriteTvShowsController =
        Get.find<FavouriteTvShowsController>();
    final FavouriteMoviesController favouriteMoviesController =
        Get.find<FavouriteMoviesController>();
    final FavouriteCelebritiesController favouriteCelebritiesController =
        Get.find<FavouriteCelebritiesController>();
    return Scaffold(
      body: Obx(() {
        if (userInfoController.loading.isTrue ||
            favouriteTvShowsController.loading.isTrue ||
            favouriteMoviesController.loading.isTrue ||
            favouriteCelebritiesController.loading.isTrue) {
          return const ProfileViewShimmer();
        } else {
          return const ProfileViewBody();
        }
      }),
    );
  }
}
