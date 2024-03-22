import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/data/models/movie_mini_result/movie_mini_result.dart';
import 'package:spark/features/home/data/models/person_mini_result/person_mini_result.dart';
import 'package:spark/features/home/data/models/tv_show_mini_result/tv_show_mini_result.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';
import 'package:spark/features/home/domain/entities/person_mini_result_entity.dart';
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
      showType: mediaType == 'movie'
          ? ShowType.Movie
          : mediaType == 'tv'
              ? ShowType.TV
              : ShowType.Person,
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
      showType: mediaType == 'movie'
          ? ShowType.Movie
          : mediaType == 'tv'
              ? ShowType.TV
              : ShowType.Person,
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
