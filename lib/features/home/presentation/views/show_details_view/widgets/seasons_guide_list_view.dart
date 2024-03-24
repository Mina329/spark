import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/home/domain/entities/season_entity.dart';
import 'package:spark/features/home/presentation/views/section_view/widgets/show_image.dart';

class SeasonsGuideListView extends StatelessWidget {
  const SeasonsGuideListView({
    super.key,
    required this.seasons,
    required this.id,
  });
  final List<SeasonEntity> seasons;
  final int id;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 15),
          child: InkWell(
            borderRadius: BorderRadius.circular(5),
            onTap: () => Get.toNamed(
              AppRouter.kSeasonDetailsView,
              arguments: {
                'id': id,
                'seasonNumber': seasons[index].seasonNumber,
              },
              preventDuplicates: false,
            ),
            child: Column(
              children: [
                Flexible(
                  child: ShowImage(
                    imgUrl:
                        'https://image.tmdb.org/t/p/original${seasons[index].seasonPoster}',
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Season ${seasons[index].seasonNumber}',
                  style: StylesManager.styleLatoRegular14(context),
                )
              ],
            ),
          ),
        ),
        itemCount: seasons.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
