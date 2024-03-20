import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spark/features/home/domain/entities/trending_movie_entity.dart';

part 'trending_movie.freezed.dart';
part 'trending_movie.g.dart';

@freezed
class TrendingMovie with _$TrendingMovie {
  factory TrendingMovie({
    bool? adult,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    int? id,
    String? title,
    @JsonKey(name: 'original_language') String? originalLanguage,
    @JsonKey(name: 'original_title') String? originalTitle,
    String? overview,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'media_type') String? mediaType,
    @JsonKey(name: 'genre_ids') List<int>? genreIds,
    double? popularity,
    @JsonKey(name: 'release_date') String? releaseDate,
    bool? video,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(name: 'vote_count') int? voteCount,
  }) = _TrendingMovie;

  factory TrendingMovie.fromJson(Map<String, dynamic> json) =>
      _$TrendingMovieFromJson(json);
}
