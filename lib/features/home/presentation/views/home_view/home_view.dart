import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/movie_trailers_controller.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/now_playing_movies_controller.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/picks_for_you_controller.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/trending_movies_controller.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/trending_people_controller.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/trending_tv_shows_controller.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/home_view_body.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/home_view_shimmer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final nowPlayingMoviesController = Get.find<NowPlayingMoviesController>();
    final trendingMoviesController = Get.find<TrendingMoviesController>();
    final trendingTvShowsController = Get.find<TrendingTvShowsController>();
    final trendingPeopleController = Get.find<TrendingPeopleController>();
    final movieTrailersController = Get.find<MovieTrailersController>();
    final picksForYouController = Get.find<PicksForYouController>();

    return Scaffold(
      body: Obx(
        () {
          if (nowPlayingMoviesController.loading.isTrue ||
              trendingMoviesController.loading.isTrue ||
              trendingTvShowsController.loading.isTrue ||
              trendingPeopleController.loading.isTrue ||
              movieTrailersController.loading.isTrue ||
              picksForYouController.loading.isTrue) {
            return const HomeViewShimmer();
          } else {
            return const HomeViewBody();
          }
        },
      ),
    );
  }
}
