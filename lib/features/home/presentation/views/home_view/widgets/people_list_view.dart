import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/circular_image.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/domain/entities/person_mini_result_entity.dart';

class PeopleListView extends StatelessWidget {
  const PeopleListView({
    super.key,
    required this.people,
  });
  final List<PersonMiniResultEntity> people;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.3 + 30,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 15),
          child: InkWell(
            borderRadius: BorderRadius.circular(5),
            onTap: () => Get.toNamed(
              AppRouter.kPersonDetailsView,
              arguments: {
                'id': people[index].id,
                'showType': ShowType.Person,
              },
              preventDuplicates: false,
            ),
            child: Column(
              children: [
                CircularImage(
                    imageUrl:
                        'https://image.tmdb.org/t/p/original${people[index].profilePath}'),
                const SizedBox(
                  height: 10,
                ),
                Flexible(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      people[index].name ?? '',
                      style: StylesManager.styleLatoSemiBold16(context),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        itemCount: people.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
