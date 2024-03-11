import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/home/data/data_sources/dummy_data.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/show_details_tab.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/show_overview_tab.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/show_reviews_tab.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/show_similar_tab.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ShowDetailsController extends GetxController {
  int index = 0;
  final List<String> tabs = [
    StringsManager.overview,
    StringsManager.details,
    StringsManager.reviews,
    StringsManager.similar,
  ];
  final List<Widget> tabsWidgets = [
    const ShowOverviewTab(),
    const ShowDetailsTab(),
    const ShowReviewsTab(),
    const ShowSimilarTab(),
  ];
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

  void changeTabs(int newIndex) {
    index = newIndex;
    update();
  }

  @override
  void onClose() {
    for (var video in videosControllers) {
      video.dispose();
    }
    super.onClose();
  }
}
