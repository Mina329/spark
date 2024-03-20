import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/core/widgets/functions/build_genre_id_values_row.dart';
import 'package:spark/features/home/data/data_sources/static.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';

class MoreInfoColumn extends StatelessWidget {
  const MoreInfoColumn({super.key, required this.movie});
  final MovieMiniResultEntity movie;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildGenreIdValuesRow(
            ids: movie.genres ?? [],
            idToValueMap: idsToGenres,
            context: context,
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 40,
            child: ElevatedButton(
              onPressed: () => Get.toNamed(
                AppRouter.kShowDetailsView,
                arguments: {
                  'showType': ShowType.Movie,
                  'id': movie.id,
                },
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                ),
              ),
              child: Text(
                StringsManager.moreInfo,
                style: StylesManager.styleLatoBold20(context).copyWith(
                  color: ColorManager.genreColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
