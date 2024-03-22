import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/explore/data/data_source/static.dart';
import 'package:spark/features/explore/presentation/views/widgets/explore_item.dart';

import '../../../../../core/utils/color_manager.dart';

class PeopleSearchSection extends StatelessWidget {
  const PeopleSearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(
              FontAwesomeIcons.peopleGroup,
              color: ColorManager.primaryColor,
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              StringsManager.celebrities,
              style: StylesManager.styleLatoBold20(context),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              peoplesExploreEvents.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 15),
                child: GestureDetector(
                  onTap: () => Get.toNamed(
                    AppRouter.kShowsSectionView,
                    arguments: {
                      'title': peoplesExploreTitles[index],
                      'showType': ShowType.Person
                    },
                    preventDuplicates: false,
                  ),
                  child: ExploreItem(
                    exploreItemTitle: peoplesExploreTitles[index],
                    exploreItemBanners: peoplesExploreEvents[index],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
