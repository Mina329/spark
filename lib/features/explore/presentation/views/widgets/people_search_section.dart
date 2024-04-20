import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/explore/presentation/controllers/explore_view_controller.dart';
import 'package:spark/features/explore/presentation/views/widgets/explore_item.dart';

import '../../../../../core/utils/color_manager.dart';

class PeopleSearchSection extends StatelessWidget {
  const PeopleSearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    final exploreViewController = Get.find<ExploreViewController>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              FontAwesomeIcons.peopleGroup,
              color: ColorManager.primaryColor,
              size: getResponsiveFontSize(context, fontSize: 24),
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
          child: AnimationLimiter(
            child: Row(
                children: AnimationConfiguration.toStaggeredList(
              duration: const Duration(milliseconds: 375),
              childAnimationBuilder: (widget) => SlideAnimation(
                horizontalOffset: 50.0,
                child: FadeInAnimation(
                  child: widget,
                ),
              ),
              children: List.generate(
                exploreViewController.peoplesExploreBanners.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: GestureDetector(
                    onTap: () => Get.toNamed(
                      AppRouter.kShowsSectionView,
                      arguments: {
                        'title':
                            exploreViewController.peoplesExploreTitles[index],
                        'showType': ShowType.Person,
                        'sectionType': exploreViewController
                            .peoplesExploreSectionTypes[index],
                        'showsList':
                            exploreViewController.peoplesExplore[index],
                      },
                      preventDuplicates: false,
                    ),
                    child: ExploreItem(
                      exploreItemTitle:
                          exploreViewController.peoplesExploreTitles[index],
                      exploreItemBanners:
                          exploreViewController.peoplesExploreBanners[index],
                    ),
                  ),
                ),
              ),
            )),
          ),
        ),
      ],
    );
  }
}
