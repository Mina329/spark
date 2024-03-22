import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/home/domain/entities/person_mini_result_entity.dart';
import 'package:spark/features/home/presentation/views/section_view/widgets/show_image.dart';

class CustomPersonListViewItem extends StatelessWidget {
  const CustomPersonListViewItem({super.key, required this.person});
  final PersonMiniResultEntity person;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(5),
      onTap: () => Get.toNamed(
        AppRouter.kPersonDetailsView,
        arguments: {
          'id': person.id,
        },
        preventDuplicates: false,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.2,
        child: Row(
          children: [
            ShowImage(
              imgUrl: person.profilePath != null
                  ? 'https://image.tmdb.org/t/p/original${person.profilePath}'
                  : '',
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width -
                  40 -
                  10 -
                  (MediaQuery.of(context).size.height * 0.2 * (27 / 40)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    person.name ?? '',
                    style: StylesManager.styleLatoRegular18(context),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    '${person.role == null ? '' : "${person.role},"} ${person.mostKnownForName} ${person.mostKnownForDate == null ? "" : "( ${person.mostKnownForDate!.year.toString()} )"}',
                    style: StylesManager.styleLatoRegular16(context).copyWith(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
