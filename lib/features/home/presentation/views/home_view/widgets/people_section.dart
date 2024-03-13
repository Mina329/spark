import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/people_list_view.dart';

class PeopleSection extends StatelessWidget {
  const PeopleSection({super.key, required this.sectionTitle});
  final String sectionTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text(
                sectionTitle,
                style: StylesManager.styleLatoBold20(context),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => Get.toNamed(
                  AppRouter.kShowsSectionView,
                  arguments: {
                    'title': sectionTitle,
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
        ],
      ),
    );
  }
}
