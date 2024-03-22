import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/functions/build_genre_id_values_row.dart';
import 'package:spark/features/home/data/data_sources/dummy_data.dart';
import 'package:spark/features/home/data/data_sources/static.dart';
import 'package:spark/features/home/presentation/views/section_view/widgets/rating_row.dart';

class SearchResultItem extends StatelessWidget {
  const SearchResultItem({super.key});

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
                image: const DecorationImage(
                  image: CachedNetworkImageProvider(
                    'https://image.tmdb.org/t/p/original/ztkUQFLlC19CCMYHW9o1zWhJRNq.jpg',
                  ),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                showsTitle[0],
                style: StylesManager.styleLatoRegular18(context),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                showsYear[0],
                style: StylesManager.styleLatoRegular16(context).copyWith(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              buildGenreIdValuesRow(
                ids: showsGenresIds[0],
                idToValueMap: idsToGenres,
                context: context,
                textColor: Colors.grey,
              ),
              const SizedBox(
                height: 2,
              ),
              const RatingRow(
                averageRating: '0',
                ratingCount: '0',
              ),
            ],
          )
        ],
      ),
    );
  }
}
