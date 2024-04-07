import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:spark/core/utils/assets_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/functions/build_genre_id_values_row.dart';
import 'package:spark/features/explore/domain/entities/search_result_entity.dart';
import 'package:spark/features/home/data/data_sources/static.dart';
import 'package:spark/features/home/presentation/views/section_view/widgets/rating_row.dart';

class SearchResultItem extends StatelessWidget {
  const SearchResultItem({super.key, required this.show});
  final SearchResultEntity show;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.13,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 27 / 40,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: CachedNetworkImage(
                imageUrl:
                    'https://image.tmdb.org/t/p/original/${show.posterPath}',
                placeholder: (context, url) => Center(
                  child: Lottie.asset(Assets.assetsAnimationsMovieLoading),
                ),
                errorWidget: (context, url, error) => Center(
                  child: Image.asset(
                    Assets.assetsImagesTv,
                    height: 80,
                    width: 80,
                  ),
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (show.name != null)
                  Text(
                    show.name ?? '',
                    style: StylesManager.styleLatoRegular18(context),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                if (show.name != null)
                  const SizedBox(
                    height: 2,
                  ),
                if (show.releaseDate != null)
                  Text(
                    show.releaseDate!.year.toString(),
                    style: StylesManager.styleLatoRegular16(context).copyWith(
                      color: Colors.grey,
                    ),
                  ),
                if (show.releaseDate != null)
                  const SizedBox(
                    height: 2,
                  ),
                if (show.personKnownFor != null ||
                    show.personMostKnownForName != null ||
                    show.personMostKnownForDate != null)
                  Text(
                    '${show.personKnownFor != null ? "${show.personKnownFor} , " : ''}${show.personMostKnownForName ?? ""} ${show.personMostKnownForDate != null ? "( ${show.personMostKnownForDate!.year.toString()} )" : ""}',
                    style: StylesManager.styleLatoRegular16(context).copyWith(
                      color: Colors.grey,
                    ),
                  ),
                if (show.personKnownFor != null ||
                    show.personMostKnownForName != null ||
                    show.personMostKnownForDate != null)
                  const SizedBox(
                    height: 2,
                  ),
                if (show.genreIds != null && show.genreIds!.isNotEmpty)
                  buildGenreIdValuesRow(
                    ids: show.genreIds!,
                    idToValueMap: idsToGenres,
                    context: context,
                    textColor: Colors.grey,
                  ),
                if (show.genreIds != null && show.genreIds!.isNotEmpty)
                  const SizedBox(
                    height: 2,
                  ),
                if (show.averageRating != null && show.voteCount != null)
                  RatingRow(
                    averageRating: show.averageRating!.toStringAsFixed(1),
                    ratingCount: show.voteCount.toString(),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
