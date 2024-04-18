import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/widgets/functions/build_cover_image.dart';
import 'package:spark/core/widgets/functions/build_cover_overlay.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/now_playing_movies_controller.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/more_info_column.dart';

class HomeTrendingShows extends StatelessWidget {
  const HomeTrendingShows({super.key});

  @override
  Widget build(BuildContext context) {
    final NowPlayingMoviesController nowPlayingMoviesController =
        Get.find<NowPlayingMoviesController>();

    return SizedBox(
      width: double.infinity,
      height: 40 * MediaQuery.of(context).size.width / 27,
      child: GetBuilder<NowPlayingMoviesController>(builder: (context) {
        return PageView.builder(
          itemBuilder: (context, index) {
            return buildShowView(
              nowPlayingMoviesController.movies[index],
              context,
            );
          },
          itemCount: nowPlayingMoviesController.movies.length,
          controller: nowPlayingMoviesController.pageController,
        );
      }),
    );
  }

  Stack buildShowView(MovieMiniResultEntity movie, BuildContext context) {
    return Stack(
      children: [
        buildCoverImage(
            'https://image.tmdb.org/t/p/original/${movie.posterPath}'),
        buildCoverOverlay(context),
        MoreInfoColumn(
          movie: movie,
        ),
      ],
    );
  }
}
