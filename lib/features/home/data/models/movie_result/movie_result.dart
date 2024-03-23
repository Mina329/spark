import 'package:freezed_annotation/freezed_annotation.dart';

import 'belongs_to_collection.dart';
import 'genre.dart';
import 'movie_credits.dart';
import 'movie_images.dart';
import 'movie_reviews.dart';
import 'movie_similar.dart';
import 'movie_videos.dart';
import 'production_company.dart';
import 'production_country.dart';
import 'spoken_language.dart';

part 'movie_result.freezed.dart';
part 'movie_result.g.dart';

@freezed
class MovieResult with _$MovieResult {
	factory MovieResult({
		bool? adult,
		@JsonKey(name: 'backdrop_path') String? backdropPath,
		@JsonKey(name: 'belongs_to_collection') BelongsToCollection? belongsToCollection,
		int? budget,
		List<Genre>? genres,
		String? homepage,
		int? id,
		@JsonKey(name: 'imdb_id') String? imdbId,
		@JsonKey(name: 'original_language') String? originalLanguage,
		@JsonKey(name: 'original_title') String? originalTitle,
		String? overview,
		double? popularity,
		@JsonKey(name: 'poster_path') String? posterPath,
		@JsonKey(name: 'production_companies') List<ProductionCompany>? productionCompanies,
		@JsonKey(name: 'production_countries') List<ProductionCountry>? productionCountries,
		@JsonKey(name: 'release_date') String? releaseDate,
		int? revenue,
		int? runtime,
		@JsonKey(name: 'spoken_languages') List<SpokenLanguage>? spokenLanguages,
		String? status,
		String? tagline,
		String? title,
		bool? video,
		@JsonKey(name: 'vote_average') double? voteAverage,
		@JsonKey(name: 'vote_count') int? voteCount,
		@JsonKey(name: 'credits') MovieCredits? movieCredits,
		@JsonKey(name: 'images') MovieImages? movieImages,
		@JsonKey(name: 'videos') MovieVideos? movieVideos,
		@JsonKey(name: 'reviews') MovieReviews? movieReviews,
		@JsonKey(name: 'similar') MovieSimilar? movieSimilar,
	}) = _MovieResult;

	factory MovieResult.fromJson(Map<String, dynamic> json) => _$MovieResultFromJson(json);
}