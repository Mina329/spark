import 'package:flutter/material.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/home/domain/entities/person_mini_result_entity.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/people_list_view.dart';

class PeopleSection extends StatelessWidget {
  final String sectionTitle;
  final List<PersonMiniResultEntity> people;
  final Function()? showAllOnTap;
  const PeopleSection(
      {super.key,
      required this.sectionTitle,
      required this.people,
      required this.showAllOnTap});
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
                onTap: () => showAllOnTap,
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
            people: people,
          ),
        ],
      ),
    );
  }
}
