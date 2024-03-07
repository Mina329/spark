import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/circular_image.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/data/data_sources/dummy_data.dart';

class PeopleOfTheWeekWidget extends StatelessWidget {
  const PeopleOfTheWeekWidget({super.key});

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
                StringsManager.peopleOfTheWeek,
                style: StylesManager.styleLatoBold16(context),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => Get.toNamed(
                  AppRouter.kShowsSectionView,
                  arguments: {
                    'title': StringsManager.peopleOfTheWeek,
                    'showType': ShowType.Person
                  },
                ),
                child: Text(
                  StringsManager.showAll,
                  style: StylesManager.styleLatoRegular16(context)
                      .copyWith(color: ColorManager.primaryColor),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.3 + 30,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Column(
                  children: [
                    CircularImage(index: index),
                    const SizedBox(
                      height: 10,
                    ),
                    Flexible(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          peoplesNames[index],
                          style: StylesManager.styleLatoSemiBold16(context),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              itemCount: showsImages.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
