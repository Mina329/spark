import 'package:flutter/material.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/functions/build_genre_id_values_row.dart';
import 'package:spark/features/home/data/data_sources/dummy_data.dart';
import 'package:spark/features/home/data/data_sources/static.dart';
import 'package:spark/features/home/presentation/views/section_view/widgets/rating_row.dart';

class ShowDetails extends StatelessWidget {
  const ShowDetails({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width -
          40 -
          10 -
          (MediaQuery.of(context).size.height * 0.2 * (27 / 40)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            showsTitle[index],
            style: StylesManager.styleLatoRegular18(context),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            showsYear[index],
            style: StylesManager.styleLatoRegular16(context).copyWith(
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          buildGenreIdValuesRow(
            ids: showsGenresIds[index],
            idToValueMap: idsToGenres,
            context: context,
            textColor: Colors.grey,
            mainAxisAlignment: MainAxisAlignment.start,
          ),
          const SizedBox(
            height: 5,
          ),
          RatingRow(index: index),
        ],
      ),
    );
  }
}
