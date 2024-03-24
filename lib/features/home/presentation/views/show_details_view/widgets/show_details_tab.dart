import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/home/presentation/controllers/show_details_controllers/show_details_controller.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/images_section.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/seasons_guide_list_view.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/videos_section.dart';

class ShowDetailsTab extends StatelessWidget {
  const ShowDetailsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final ShowDetailsController showDetailsController = Get.find<
            ShowDetailsController>(
        tag:
            "${Get.arguments['id'].toString()}_${Get.arguments['showType'].toString()}");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (showDetailsController.showResultEntity?.seasons != null &&
            showDetailsController.showResultEntity!.seasons!.isNotEmpty)
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                StringsManager.seasonsGuide,
                style: StylesManager.styleLatoBold20(context),
              ),
              const SizedBox(
                height: 10,
              ),
              SeasonsGuideListView(
                seasons: showDetailsController.showResultEntity?.seasons ?? [],
                id: showDetailsController.showResultEntity!.id,
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        if (showDetailsController.showResultEntity?.imagesBackdrop != null &&
            showDetailsController.showResultEntity!.imagesBackdrop!.isNotEmpty)
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ImagesSection(
                images: showDetailsController.showResultEntity!.imagesBackdrop!,
                title: StringsManager.backdrops,
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        if (showDetailsController.showResultEntity?.imagesPosters != null &&
            showDetailsController.showResultEntity!.imagesPosters!.isNotEmpty)
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ImagesSection(
                images: showDetailsController.showResultEntity!.imagesPosters!,
                title: StringsManager.posters,
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        if (showDetailsController.videosControllers.isNotEmpty)
          const VideosSection(),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
