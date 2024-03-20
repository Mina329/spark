import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/data/data_sources/dummy_data.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/show_card.dart';

class ShowSimilarTab extends StatelessWidget {
  const ShowSimilarTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              StringsManager.moreLikeThis,
              style: StylesManager.styleLatoBold20(context),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () => Get.toNamed(
                AppRouter.kShowsSectionView,
                arguments: {
                  'title': StringsManager.moreLikeThis,
                  'showType': ShowType.Movie
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
        SizedBox(
          height: MediaQuery.of(context).size.width * 0.3 / 0.6,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(right: 15),
              child: ShowCard(
                show: MovieMiniResultEntity(id: 123),
                showType: ShowType.Movie,
              ),
            ),
            itemCount: showsImages.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
