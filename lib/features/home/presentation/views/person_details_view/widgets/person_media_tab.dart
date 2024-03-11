import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/show_section.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/images_section.dart';

class PersonMediaTab extends StatelessWidget {
  const PersonMediaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ImagesSection(),
        const SizedBox(
          height: 15,
        ),
        ShowSection(
          sectionTitle: StringsManager.relatedMovies,
          showAllOnTap: () => Get.toNamed(
            AppRouter.kShowsSectionView,
            arguments: {
              'title': StringsManager.relatedMovies,
              'showType': ShowType.Movie
            },
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        ShowSection(
          sectionTitle: StringsManager.relatedTvShows,
          showAllOnTap: () => Get.toNamed(
            AppRouter.kShowsSectionView,
            arguments: {
              'title': StringsManager.relatedTvShows,
              'showType': ShowType.TV
            },
          ),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
