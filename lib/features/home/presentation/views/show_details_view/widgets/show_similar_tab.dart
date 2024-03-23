import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/presentation/controllers/show_details_controllers/show_details_controller.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/show_section.dart';

class ShowSimilarTab extends StatelessWidget {
  const ShowSimilarTab({super.key});

  @override
  Widget build(BuildContext context) {
    final ShowDetailsController showDetailsController =
        Get.find<ShowDetailsController>();
    return showDetailsController.showResultEntity.similarShows != null &&
            showDetailsController.showResultEntity.similarShows!.isNotEmpty
        ? Column(
            children: [
              ShowSection(
                sectionTitle: StringsManager.moreLikeThis,
                showAllOnTap: () => Get.toNamed(
                  AppRouter.kShowsSectionView,
                  arguments: {
                    'title': StringsManager.moreLikeThis,
                    'showType': ShowType.Movie,
                    'sectionType': SectionType.None,
                    'showsList':
                        showDetailsController.showResultEntity.similarShows ??
                            []
                  },
                ),
                items:
                    showDetailsController.showResultEntity.similarShows ?? [],
              ),
              const SizedBox(
                height: 30,
              )
            ],
          )
        : const SizedBox();
  }
}
