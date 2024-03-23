import 'package:spark/features/home/data/models/tv_result/season.dart';
import 'package:spark/features/home/domain/entities/season_entity.dart';

List<SeasonEntity>? parseSeasonsToSeasonEntity(List<Season> seasonsList) {
  List<SeasonEntity> seasons = [];
  for (Season season in seasonsList) {
    if (season.seasonNumber == 0) {
      continue;
    }
    seasons.add(
      SeasonEntity(
        seasonPoster: season.posterPath,
        seasonNumber: season.seasonNumber,
        id: season.id!,
      ),
    );
  }
  return seasons;
}
