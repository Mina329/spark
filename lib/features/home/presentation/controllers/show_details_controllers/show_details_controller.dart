import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/domain/entities/show_result_entity.dart';
import 'package:spark/features/home/domain/usecases/get_show_details_usecase.dart';
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
  final GetShowDetailsUsecase getShowDetailsUsecase;
  ShowResultEntity? showResultEntity;
  List<YoutubePlayerController> videosControllers = [];
  RxBool loading = true.obs;
  bool error = false;
  ShowType? showType;
  int? id;
  ShowDetailsController({required this.getShowDetailsUsecase});
  @override
  void onInit() async {
    super.onInit();
    id = Get.arguments['id'];
    showType = Get.arguments['showType'];
    await getShowDetails(id!, showType!);
    _initVideos();
  }

  void _initVideos() {
    for (var videoUrl
        in showResultEntity?.youtubeKeys?.take(10).toList() ?? []) {
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

  get getYoutubeKeysCount {
    return showResultEntity?.youtubeKeys?.length ?? 0;
  }

  Future getShowDetails(int id, ShowType showType) async {
    var result = await getShowDetailsUsecase.execute((id, showType));
    result.fold(
      (failure) {
        Get.snackbar(
          StringsManager.operationFailed,
          failure.message,
          backgroundColor: Colors.red.withOpacity(0.5),
        );
        if (error == true) return;
        error = true;
      },
      (showDetails) {
        showResultEntity = showDetails;
        update();
      },
    );
    loading.value = false;
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
