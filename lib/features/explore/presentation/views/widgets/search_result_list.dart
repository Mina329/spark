import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/explore/presentation/views/widgets/search_result_item.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        10,
        (index) => Column(
          children: [
            InkWell(
              onTap: () => Get.toNamed(AppRouter.kShowDetailsView, arguments: {
                'id': 123,
                'showType': ShowType.Movie,
              }),
              borderRadius: BorderRadius.circular(5),
              child: const SearchResultItem(),
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
