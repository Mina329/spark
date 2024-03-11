import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/core/widgets/functions/build_genre_id_values_row.dart';
import 'package:spark/features/home/data/data_sources/dummy_data.dart';
import 'package:spark/features/home/data/data_sources/static.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/people_list_view.dart';

class ShowOverviewTab extends StatelessWidget {
  const ShowOverviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          StringsManager.overview,
          style: StylesManager.styleLatoBold16(context),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Albus Dumbledore assigns Newt and his allies with a mission related to the rising power of Grindelwald.',
          style: StylesManager.styleLatoRegular16(context)
              .copyWith(color: Colors.grey),
        ),
        const SizedBox(
          height: 10,
        ),
        buildGenreIdValuesRow(
          ids: showsGenresIds[0],
          idToValueMap: idsToGenres,
          context: context,
          textColor: Colors.grey,
          mainAxisAlignment: MainAxisAlignment.start,
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Text(
              StringsManager.castAndCrew,
              style: StylesManager.styleLatoBold16(context),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () => Get.toNamed(
                AppRouter.kShowsSectionView,
                arguments: {
                  'title': StringsManager.castAndCrew,
                  'showType': ShowType.Person
                },
              ),
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
        const PeopleListView(),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
