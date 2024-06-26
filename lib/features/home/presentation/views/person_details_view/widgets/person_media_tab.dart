import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/widgets/custom_empty_widget.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/presentation/controllers/person_details_controller/get_person_details_controller.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/show_section.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/images_section.dart';

class PersonMediaTab extends StatelessWidget {
  const PersonMediaTab({super.key});

  @override
  Widget build(BuildContext context) {
    final GetPersonDetailsController getPersonDetailsController =
        Get.find<GetPersonDetailsController>(
      tag:
          "${Get.arguments['id'].toString()}_${Get.arguments['showType'].toString()}",
    );
    return Column(
      children: [
        if (getPersonDetailsController.personResultEntity?.images != null &&
            getPersonDetailsController.personResultEntity!.images!.isNotEmpty)
          Column(
            children: [
              ImagesSection(
                images: getPersonDetailsController.personResultEntity!.images!,
                title: StringsManager.images,
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        if (getPersonDetailsController.personResultEntity?.relatedMovies !=
                null &&
            getPersonDetailsController
                .personResultEntity!.relatedMovies!.isNotEmpty)
          Column(
            children: [
              ShowSection(
                sectionTitle: StringsManager.relatedMovies,
                showAllOnTap: () => Get.toNamed(
                  AppRouter.kShowsSectionView,
                  arguments: {
                    'title': StringsManager.relatedMovies,
                    'showType': ShowType.Movie,
                    'sectionType': SectionType.None,
                    'showsList': getPersonDetailsController
                        .personResultEntity?.relatedMovies!
                  },
                  preventDuplicates: false,
                ),
                items: getPersonDetailsController
                            .personResultEntity!.relatedMovies!.length >
                        20
                    ? getPersonDetailsController
                        .personResultEntity!.relatedMovies!
                        .take(20)
                        .toList()
                    : getPersonDetailsController
                        .personResultEntity!.relatedMovies!,
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        if (getPersonDetailsController.personResultEntity?.relatedTvShows !=
                null &&
            getPersonDetailsController
                .personResultEntity!.relatedTvShows!.isNotEmpty)
          Column(
            children: [
              ShowSection(
                sectionTitle: StringsManager.relatedTvShows,
                showAllOnTap: () => Get.toNamed(
                  AppRouter.kShowsSectionView,
                  arguments: {
                    'title': StringsManager.relatedTvShows,
                    'showType': ShowType.TV,
                    'sectionType': SectionType.None,
                    'showsList': getPersonDetailsController
                        .personResultEntity?.relatedTvShows!
                  },
                  preventDuplicates: false,
                ),
                items: getPersonDetailsController
                            .personResultEntity!.relatedTvShows!.length >
                        20
                    ? getPersonDetailsController
                        .personResultEntity!.relatedTvShows!
                        .take(20)
                        .toList()
                    : getPersonDetailsController
                        .personResultEntity!.relatedTvShows!,
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        if ((getPersonDetailsController.personResultEntity?.images == null ||
                getPersonDetailsController
                    .personResultEntity!.images!.isEmpty) &&
            (getPersonDetailsController.personResultEntity?.relatedMovies ==
                    null ||
                getPersonDetailsController
                    .personResultEntity!.relatedMovies!.isEmpty) &&
            (getPersonDetailsController.personResultEntity?.relatedTvShows ==
                    null ||
                getPersonDetailsController
                    .personResultEntity!.relatedTvShows!.isEmpty))
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: CustomEmptyWidget(),
          )
      ],
    );
  }
}
