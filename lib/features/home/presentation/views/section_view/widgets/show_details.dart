import 'package:flutter/material.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/functions/build_genre_id_values_row.dart';
import 'package:spark/features/home/data/data_sources/static.dart';
import 'package:spark/features/home/presentation/views/section_view/widgets/rating_row.dart';

class ShowDetails extends StatelessWidget {
  const ShowDetails({
    super.key,
    this.show,
  });
  final dynamic show;
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
          if (show.name != null)
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  show.name,
                  style: StylesManager.styleLatoRegular18(context),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          if (show.releaseDate != null)
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  show.releaseDate.year.toString(),
                  style: StylesManager.styleLatoRegular16(context).copyWith(
                    color: Theme.of(context).brightness == Brightness.light
                        ? Colors.grey[800]
                        : Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          if (show.genres != null && show.genres.isNotEmpty)
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildGenreIdValuesRow(
                  ids: show.genres ?? [],
                  idToValueMap: idsToGenres,
                  context: context,
                  textColor: Theme.of(context).brightness == Brightness.light
                      ? Colors.grey[800]
                      : Colors.grey,
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          if (show.voteAverage != null && show.voteCount != null)
            RatingRow(
              averageRating: show.voteAverage.toStringAsFixed(1),
              ratingCount: show.voteCount.toString(),
            ),
        ],
      ),
    );
  }
}
