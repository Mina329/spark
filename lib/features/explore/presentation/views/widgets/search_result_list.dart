import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/explore/domain/entities/search_result_entity.dart';
import 'package:spark/features/explore/presentation/views/widgets/search_result_item.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({super.key, required this.shows});
  final List<SearchResultEntity> shows;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        shows.length,
        (index) => Column(
          children: [
            InkWell(
              onTap: () => Get.toNamed(
                shows[index].showType != ShowType.Person
                    ? AppRouter.kShowDetailsView
                    : AppRouter.kPersonDetailsView,
                arguments: {
                  'id': shows[index].id,
                  'showType': shows[index].showType,
                },
                preventDuplicates: false,
              ),
              borderRadius: BorderRadius.circular(5),
              child: SearchResultItem(
                show: shows[index],
              ),
            ),
            const Divider(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
