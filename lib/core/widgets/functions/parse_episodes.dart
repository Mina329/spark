import 'package:spark/features/home/data/models/season_result/episode.dart';
import 'package:spark/features/home/domain/entities/episode_entity.dart';

List<EpisodeEntity>? parseEpisodes(List<Episode> episodes) {
  List<EpisodeEntity>? episodeList = [];
  for (Episode episode in episodes) {
    episodeList.add(
      EpisodeEntity(
        episodePosterUrl: episode.stillPath,
        episodeTitle: episode.name,
        episodeReleaseDate: DateTime.tryParse(episode.airDate ?? ''),
        episodeVoteAverage: episode.voteAverage,
        episodeVoteCount: episode.voteCount,
      ),
    );
  }
  return episodeList;
}
