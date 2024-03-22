import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/data/models/person_result/tv_cast.dart';
import 'package:spark/features/home/data/models/person_result/tv_crew.dart';
import 'package:spark/features/home/domain/entities/tv_show_mini_result_entity.dart';

List<TvShowMiniResultEntity>? parseTvCastAndCrewToTvShowMiniResult(
    List<TvCast>? cast, List<TvCrew>? crew) {
  Map<int, TvShowMiniResultEntity> uniqueTvshows = {};
  for (var show in cast!) {
    if (!uniqueTvshows.containsKey(show.id)) {
      uniqueTvshows[show.id!] = TvShowMiniResultEntity(
        id: show.id!,
        voteAverage: show.voteAverage,
        releaseDate: show.firstAirDate == null || show.firstAirDate!.isEmpty
            ? null
            : DateTime.parse(
                show.firstAirDate!,
              ),
        posterPath: show.posterPath,
        genres: show.genreIds,
        showType: ShowType.TV,
        name: show.name,
        voteCount: show.voteCount,
      );
    }
  }
  for (var show in crew!) {
    if (!uniqueTvshows.containsKey(show.id)) {
      uniqueTvshows[show.id!] = TvShowMiniResultEntity(
        id: show.id!,
        voteAverage: show.voteAverage,
        releaseDate: show.firstAirDate == null || show.firstAirDate!.isEmpty
            ? null
            : DateTime.parse(
                show.firstAirDate!,
              ),
        posterPath: show.posterPath,
        genres: show.genreIds,
        showType: ShowType.TV,
        name: show.name,
        voteCount: show.voteCount,
      );
    }
  }
  return uniqueTvshows.values.toList();
}
