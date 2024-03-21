import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';
import 'package:spark/features/home/domain/usecases/get_now_playing_movies_trailer_usecase.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MovieTrailersController extends GetxController {
  final GetNowPlayingMoviesTrailersUsecase getNowPlayingMoviesTrailersUsecase;

  RxBool loading = false.obs;
  List<String> youtubeKeys = [];
  List<YoutubePlayerController> videosControllers = [];

  MovieTrailersController({required this.getNowPlayingMoviesTrailersUsecase});

  Future getTrendingMoviesTrailers(List<MovieMiniResultEntity> movies) async {
    loading.value = true;

    var result = await getNowPlayingMoviesTrailersUsecase.execute(movies);
    result.fold(
      (failure) => Get.snackbar(
        StringsManager.operationFailed,
        failure.message,
        backgroundColor: Colors.red.withOpacity(0.5),
      ),
      (keys) {
        youtubeKeys.addAll(keys);
        _initTrailersVideos();
        update();
      },
    );
    loading.value = false;
  }

  void _initTrailersVideos() {
    for (var videoUrl in youtubeKeys) {
      videosControllers.add(
        YoutubePlayerController(
          initialVideoId: videoUrl,
          flags: const YoutubePlayerFlags(
            autoPlay: false,
            mute: false,
            disableDragSeek: true,
          ),
        ),
      );
    }
  }

  @override
  void onClose() {
    for (var video in videosControllers) {
      video.dispose();
    }
    super.onClose();
  }
}
