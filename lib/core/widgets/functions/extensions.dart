import 'package:spark/core/widgets/enums.dart';
import 'package:spark/core/widgets/functions/extract_genre_ids.dart';
import 'package:spark/core/widgets/functions/format_time.dart';
import 'package:spark/core/widgets/functions/get_youtube_keys.dart';
import 'package:spark/core/widgets/functions/parse_cast_and_crew_to_person_mini_result_entity.dart';
import 'package:spark/core/widgets/functions/parse_episodes.dart';
import 'package:spark/core/widgets/functions/parse_movie_cast_and_crew_to_movie_mini_result.dart';
import 'package:spark/core/widgets/functions/parse_movie_images_to_image_entity.dart';
import 'package:spark/core/widgets/functions/parse_movie_similar_result_to_movie_mini_result_entity.dart';
import 'package:spark/core/widgets/functions/parse_seasons_to_season_entity.dart';
import 'package:spark/core/widgets/functions/parse_to_review.dart';
import 'package:spark/core/widgets/functions/parse_tv_cast_and_crew_to_tv_show_mini_result.dart';
import 'package:spark/features/home/data/models/movie_mini_result/movie_mini_result.dart';
import 'package:spark/features/home/data/models/movie_result/movie_backdrop.dart';
import 'package:spark/features/home/data/models/movie_result/movie_poster.dart';
import 'package:spark/features/home/data/models/movie_result/movie_result.dart';
import 'package:spark/features/home/data/models/movie_result/movie_reviews_result.dart';
import 'package:spark/features/home/data/models/person_mini_result/person_mini_result.dart';
import 'package:spark/features/home/data/models/person_result/images.dart';
import 'package:spark/features/home/data/models/person_result/person_result.dart';
import 'package:spark/features/home/data/models/season_result/season_result.dart';
import 'package:spark/features/home/data/models/tv_result/tv_result.dart';
import 'package:spark/features/home/data/models/tv_show_mini_result/tv_show_mini_result.dart';
import 'package:spark/features/home/domain/entities/image_entity.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';
import 'package:spark/features/home/domain/entities/person_mini_result_entity.dart';
import 'package:spark/features/home/domain/entities/person_result_entity.dart';
import 'package:spark/features/home/domain/entities/review_entity.dart';
import 'package:spark/features/home/domain/entities/season_result_entity.dart';
import 'package:spark/features/home/domain/entities/show_result_entity.dart';
import 'package:spark/features/home/domain/entities/tv_show_mini_result_entity.dart';

extension TrendingMovieX on MovieMiniResult {
  MovieMiniResultEntity toEntity() {
    return MovieMiniResultEntity(
      id: id!,
      voteAverage: voteAverage,
      releaseDate: releaseDate == null || releaseDate!.isEmpty
          ? null
          : DateTime.parse(
              releaseDate!,
            ),
      posterPath: posterPath,
      genres: genreIds,
      showType: ShowType.Movie,
      name: title,
      voteCount: voteCount,
    );
  }
}

extension TrendingTvShowX on TvShowMiniResult {
  TvShowMiniResultEntity toEntity() {
    return TvShowMiniResultEntity(
      id: id!,
      voteAverage: voteAverage,
      releaseDate: firstAirDate == null || firstAirDate!.isEmpty
          ? null
          : DateTime.parse(
              firstAirDate!,
            ),
      posterPath: posterPath,
      genres: genreIds,
      showType: ShowType.TV,
      name: name,
      voteCount: voteCount,
    );
  }
}

extension TrendingPersonX on PersonMiniResult {
  PersonMiniResultEntity toEntity() {
    return PersonMiniResultEntity(
      id: id!,
      name: name,
      profilePath: profilePath,
      showType: mediaType == 'movie'
          ? ShowType.Movie
          : mediaType == 'tv'
              ? ShowType.TV
              : ShowType.Person,
      role: knownForDepartment,
      mostKnownForName: knownFor != null && knownFor!.isNotEmpty
          ? knownFor![0].name == null
              ? knownFor![0].title ?? ''
              : knownFor![0].name ?? ''
          : '',
      mostKnownForDate: knownFor != null && knownFor!.isNotEmpty
          ? knownFor![0].name == null
              ? knownFor![0].releaseDate == null ||
                      knownFor![0].releaseDate!.isEmpty
                  ? null
                  : DateTime.parse(
                      knownFor![0].releaseDate!,
                    )
              : knownFor![0].firstAirDate == null ||
                      knownFor![0].firstAirDate!.isEmpty
                  ? null
                  : DateTime.parse(
                      knownFor![0].firstAirDate!,
                    )
          : null,
    );
  }
}

extension PersonResultX on PersonResult {
  PersonResultEntity toEntity() {
    return PersonResultEntity(
      id: id!,
      name: name,
      role: knownForDepartment,
      biography: biography,
      birthLocation: placeOfBirth,
      birthDate: birthday == null || birthday!.isEmpty
          ? null
          : DateTime.parse(
              birthday!,
            ),
      deathDate: deathday == null || deathday!.isEmpty
          ? null
          : DateTime.parse(
              deathday!,
            ),
      images: images?.toEntity(),
      relatedMovies: parseMovieCastAndCrewToMovieMiniResult(
        movieCredits?.movieCast,
        movieCredits?.movieCrew,
      ),
      relatedTvShows: parseTvCastAndCrewToTvShowMiniResult(
        tvCredits?.tvCast,
        tvCredits?.tvCrew,
      ),
      profileUrl: profilePath,
    );
  }
}

extension ImagesX on Images {
  List<ImageEntity> toEntity() {
    List<ImageEntity> images = [];
    for (var image in profiles!) {
      images.add(
        ImageEntity(
          aspectRatio: image.aspectRatio,
          filePath: image.filePath,
        ),
      );
    }
    return images;
  }
}

extension MovieResultX on MovieResult {
  ShowResultEntity toEntity() {
    return ShowResultEntity(
      id: id!,
      name: title,
      posterUrl: posterPath,
      voteAverage: voteAverage,
      popularity: popularity,
      genreIds: extractGenreIds(genres),
      overview: overview,
      castAndCrew: parseMovieCastAndCrewToPersonMiniResultEntity(movieCredits),
      imagesBackdrop:
          parseMovieImagesToImageEntity(movieImages?.movieBackdrops),
      imagesPosters: parseMovieImagesToImageEntity(movieImages?.moviePosters),
      seasons: null,
      youtubeKeys: getYoutubeKeys(movieVideos?.movieVideosResults),
      review: parseToReview(movieReviews?.movieReviewsResults),
      similarShows: parseMovieSimilarResultToMovieMiniResultEntity(
          movieSimilar?.movieSimilarResults),
      releaseDate: releaseDate == null || releaseDate!.isEmpty
          ? null
          : DateTime.parse(
              releaseDate!,
            ),
      duration: formatTime(runtime ?? 0),
      showType: ShowType.Movie,
      totalReviewsNumber: movieReviews?.totalResults,
    );
  }
}

extension TVResultX on TvResult {
  ShowResultEntity toEntity() {
    return ShowResultEntity(
      id: id!,
      name: name,
      posterUrl: posterPath,
      voteAverage: voteAverage,
      popularity: popularity,
      genreIds: extractGenreIds(genres),
      overview: overview,
      castAndCrew: parseTvCastAndCrewToPersonMiniResultEntity(tvCredits),
      imagesBackdrop: parseMovieImagesToImageEntity(tvImages?.tvBackdrops),
      imagesPosters: parseMovieImagesToImageEntity(tvImages?.tvPosters),
      seasons: parseSeasonsToSeasonEntity(seasons ?? []),
      youtubeKeys: getYoutubeKeys(tvVideos?.tvVideosResults),
      review: parseToReview(tvReviews?.tvReviewsResults),
      similarShows:
          parseTvimilarResultToTvMiniResultEntity(tvSimilar?.tvSimilarResults),
      releaseDate: firstAirDate == null || firstAirDate!.isEmpty
          ? null
          : DateTime.parse(
              firstAirDate!,
            ),
      duration: '${numberOfEpisodes ?? 0} eps',
      showType: ShowType.TV,
      totalReviewsNumber: tvReviews?.totalResults,
    );
  }
}

extension SeasonResultX on SeasonResult {
  SeasonResultEntity toEntity(int showId) {
    return SeasonResultEntity(
      showId: showId,
      posterUrl: posterPath,
      seasonName: name,
      seasonDate: DateTime.tryParse(airDate ?? ''),
      seasonEpisodeNumber: episodes?.length.toString(),
      seasonVoteAverage: voteAverage,
      seasonOverview: overview,
      episodes: parseEpisodes(episodes ?? []),
    );
  }
}

extension MovieBackdropX on MovieBackdrop {
  ImageEntity toEntity() {
    return ImageEntity(
      aspectRatio: aspectRatio,
      filePath: filePath,
    );
  }
}

extension MoviePosterX on MoviePoster {
  ImageEntity toEntity() {
    return ImageEntity(
      aspectRatio: aspectRatio,
      filePath: filePath,
    );
  }
}

extension MovieReviewsResultX on MovieReviewsResult {
  ReviewEntity toEntity() {
    return ReviewEntity(
      id: id ?? '',
      userName: authorDetails?.name,
      voteAverage: authorDetails?.rating?.toDouble(),
      reviewContent: content,
      reviewDate: createdAt,
      userProfile: authorDetails?.avatarPath,
      userMail: authorDetails?.username,
    );
  }
}
