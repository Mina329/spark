import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/features/home/data/data_sources/dummy_data.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  bool search = false;
  AnimationController? animationController;
  Animation<Offset>? slideAnimation;

  List<YoutubePlayerController> videosControllers = [];

  @override
  void onInit() {
    super.onInit();
    _initSearchAnimation();
    _initTrailersVideos();
  }

  void _initTrailersVideos() {
    for (var videoUrl in trailers) {
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

  void _initSearchAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    slideAnimation = Tween<Offset>(
      begin: const Offset(0, -0.1),
      end: Offset.zero,
    ).animate(
        CurvedAnimation(parent: animationController!, curve: Curves.easeInOut));
  }

  void Function()? toggleSearch() {
    search = !search;
    if (search) {
      animationController?.forward();
    } else {
      animationController?.reverse();
    }
    update();
    return null;
  }

  @override
  void onClose() {
    animationController?.dispose();
    for (var video in videosControllers) {
      video.dispose();
    }
    super.onClose();
  }
}
