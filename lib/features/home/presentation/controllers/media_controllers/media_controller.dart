import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/domain/usecases/get_reviews_usecase.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MediaController extends GetxController {
  List mediaList = [];
  MediaType? mediaType;
  int itemsPerPageImage = 30;
  int itemsPerPageVideos = 5;
  List<dynamic> allmedia = [];
  ScrollController? scrollController;
  RxBool loadingMore = false.obs;
  final GetReviewsUsecase getReviewsUsecase;
  int page = 2;
  int? showId;
  ShowType? showType;
  MediaController({required this.getReviewsUsecase});
  @override
  void onInit() {
    super.onInit();
    scrollController = ScrollController();
    mediaType = Get.arguments['mediaType'];
    allmedia = Get.arguments['mediaList'];
    if (mediaType == MediaType.Images) {
      scrollController?.addListener(_onImagesScroll);
      mediaList.addAll(allmedia.take(itemsPerPageImage));
      update();
    } else if (mediaType == MediaType.Videos) {
      scrollController?.addListener(_onVideosScroll);
      mediaList.addAll(allmedia.take(itemsPerPageVideos).toList());
      _initVideos(allmedia.take(itemsPerPageVideos).toList());
    } else if (mediaType == MediaType.Reviews) {
      showId = Get.arguments['showId'];
      showType = Get.arguments['showType'];
      scrollController?.addListener(_onReviewsScroll);
      mediaList.addAll(allmedia);
      update();
    }
  }

  void loadMoreImages() {
    if (loadingMore.value) return;
    loadingMore.value = true;
    if (mediaList.length < allmedia.length) {
      int remaining = allmedia.length - mediaList.length;
      int toTake =
          remaining > itemsPerPageImage ? itemsPerPageImage : remaining;
      List<dynamic> moreImages =
          allmedia.skip(mediaList.length).take(toTake).toList();
      mediaList.addAll(moreImages);
      update();
    }
    loadingMore.value = false;
  }

  void _onImagesScroll() {
    if (!loadingMore.value &&
        scrollController!.position.pixels >=
            scrollController!.position.maxScrollExtent) {
      loadMoreImages();
    }
  }

  List<YoutubePlayerController> videosControllers = [];
  @override
  void onClose() {
    for (var video in videosControllers) {
      video.dispose();
    }
    scrollController?.removeListener(_onImagesScroll);
    scrollController?.removeListener(_onVideosScroll);
    scrollController?.removeListener(_onReviewsScroll);
    scrollController?.dispose();
    super.onClose();
  }

  void _initVideos(List<dynamic> keys) {
    for (var videoUrl in keys) {
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

  void loadMoreVideos() {
    if (loadingMore.value) return;
    loadingMore.value = true;
    if (mediaList.length < allmedia.length) {
      int remaining = allmedia.length - mediaList.length;
      int toTake =
          remaining > itemsPerPageVideos ? itemsPerPageVideos : remaining;
      List<dynamic> moreVideos =
          allmedia.skip(mediaList.length).take(toTake).toList();
      mediaList.addAll(moreVideos);
      _initVideos(moreVideos);
      update();
    }
    loadingMore.value = false;
  }

  void _onVideosScroll() {
    if (!loadingMore.value &&
        scrollController!.position.pixels >=
            scrollController!.position.maxScrollExtent) {
      loadMoreVideos();
    }
  }

  void _onReviewsScroll() {
    if (!loadingMore.value &&
        scrollController!.position.pixels >=
            scrollController!.position.maxScrollExtent) {
      loadMoreReviews();
    }
  }

  void loadMoreReviews() async {
    if (loadingMore.value) return;
    loadingMore.value = true;
    var result = await getReviewsUsecase.execute((page, showId!, showType!));
    result.fold(
      (failure) => Get.snackbar(
        StringsManager.operationFailed,
        failure.message,
        backgroundColor: Colors.red.withOpacity(0.5),
      ),
      (reviewsList) {
        mediaList.addAll(reviewsList);
        page++;
        update();
      },
    );
    loadingMore.value = false;
  }
}
