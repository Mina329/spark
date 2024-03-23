import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/core/widgets/functions/build_genre_id_values_row.dart';
import 'package:spark/features/home/data/data_sources/static.dart';
import 'package:spark/features/home/presentation/controllers/show_details_controllers/show_details_controller.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/people_list_view.dart';

class ShowOverviewTab extends StatelessWidget {
  const ShowOverviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    final ShowDetailsController showDetailsController =
        Get.find<ShowDetailsController>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (showDetailsController.showResultEntity.overview != null ||
            (showDetailsController.showResultEntity.genreIds != null &&
                showDetailsController.showResultEntity.genreIds!.isNotEmpty))
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                StringsManager.overview,
                style: StylesManager.styleLatoBold20(context),
              ),
              if (showDetailsController.showResultEntity.overview != null)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    ExpandableText(
                      showDetailsController.showResultEntity.overview ?? '',
                      expandText: 'show more',
                      collapseText: 'show less',
                      expandOnTextTap: true,
                      collapseOnTextTap: true,
                      style: StylesManager.styleLatoRegular16(context)
                          .copyWith(color: Colors.grey),
                      animation: true,
                      maxLines: 5,
                      linkColor: ColorManager.primaryColor,
                    ),
                  ],
                ),
              if (showDetailsController.showResultEntity.genreIds != null &&
                  showDetailsController.showResultEntity.genreIds!.isNotEmpty)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    buildGenreIdValuesRow(
                      ids: showDetailsController.showResultEntity.genreIds!,
                      idToValueMap: idsToGenres,
                      context: context,
                      textColor: Colors.grey,
                    ),
                  ],
                ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        if (showDetailsController.showResultEntity.castAndCrew != null &&
            showDetailsController.showResultEntity.castAndCrew!.isNotEmpty)
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    StringsManager.castAndCrew,
                    style: StylesManager.styleLatoBold20(context),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(
                        AppRouter.kShowsSectionView,
                        arguments: {
                          'title': StringsManager.castAndCrew,
                          'showType': ShowType.Person,
                          'sectionType': SectionType.None,
                          'showsList':
                              showDetailsController.showResultEntity.castAndCrew
                        },
                      );
                    },
                    child: Text(
                      StringsManager.showAll,
                      style: StylesManager.styleLatoRegular16(context)
                          .copyWith(color: ColorManager.primaryColor),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              PeopleListView(
                people: showDetailsController.showResultEntity.castAndCrew
                        ?.take(20)
                        .toList() ??
                    [],
              ),
            ],
          ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
