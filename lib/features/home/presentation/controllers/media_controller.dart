import 'package:get/get.dart';
import 'package:spark/features/home/data/data_sources/dummy_data.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MediaController extends GetxController {
  List<YoutubePlayerController> videosControllers = [];
  @override
  void onInit() {
    super.onInit();
    _initVideos();
  }

  void _initVideos() {
    for (var videoUrl in trailers) {
      videosControllers.add(
        YoutubePlayerController(
          initialVideoId: videoUrl,
          flags: const YoutubePlayerFlags(
            autoPlay: false,
            mute: false,
            disableDragSeek: true,
            showLiveFullscreenButton: false,
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
