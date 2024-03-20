import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_mini_result.freezed.dart';
part 'movie_mini_result.g.dart';

@freezed
class MovieMiniResult with _$MovieMiniResult {
  factory MovieMiniResult({
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
  }) = _MovieMiniResult;

  factory MovieMiniResult.fromJson(Map<String, dynamic> json) =>
      _$MovieMiniResultFromJson(json);
}
