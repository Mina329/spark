import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/features/home/presentation/views/section_view/widgets/show_details.dart';
import 'package:spark/features/home/presentation/views/section_view/widgets/show_image.dart';

class CustomShowListViewItem extends StatelessWidget {
  const CustomShowListViewItem({
    super.key,
    required this.show,
  });
  final dynamic show;
  final index = 0;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(5),
      onTap: () => Get.toNamed(
        AppRouter.kShowDetailsView,
        arguments: {
          'id': show.id,
          'showType': show.showType,
        },
        preventDuplicates: false,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.2,
        child: Row(
          children: [
            ShowImage(
              imgUrl: show.posterPath != null
                  ? 'https://image.tmdb.org/t/p/w342/${show.posterPath}'
                  : '',
            ),
            const SizedBox(
              width: 10,
            ),
            ShowDetails(
              show: show,
            ),
          ],
        ),
      ),
    );
  }
}
