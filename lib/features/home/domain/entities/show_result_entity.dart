import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/domain/entities/image_entity.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';
import 'package:spark/features/home/domain/entities/person_mini_result_entity.dart';
import 'package:spark/features/home/domain/entities/review_entity.dart';
import 'package:spark/features/home/domain/entities/season_entity.dart';
import 'package:spark/features/home/domain/entities/tv_show_mini_result_entity.dart';

class ShowResultEntity {
  final int id;
  final String? name;
  final String? posterUrl;
  final double? voteAverage;
  final double? popularity;
  final List<int>? genreIds;
  final DateTime? releaseDate;
  final String? overview;
  final String? duration;
  final ShowType? showType;
  final List<PersonMiniResultEntity>? castAndCrew;
  final List<ImageEntity>? imagesBackdrop;
  final List<ImageEntity>? imagesPosters;
  final List<SeasonEntity>? seasons;
  final List<String>? youtubeKeys;
  final List<ReviewEntity>? review;
  final List<dynamic>? similarShows;
  final int? totalReviewsNumber;
  ShowResultEntity({
    required this.id,
    required this.name,
    required this.posterUrl,
    required this.voteAverage,
    required this.popularity,
    required this.genreIds,
    required this.overview,
    required this.castAndCrew,
    required this.seasons,
    required this.youtubeKeys,
    required this.review,
    required this.similarShows,
    required this.imagesBackdrop,
    required this.imagesPosters,
    required this.releaseDate,
    required this.duration,
    required this.showType,
    required this.totalReviewsNumber,
  });
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'posterUrl': posterUrl,
      'voteAverage': voteAverage,
      'popularity': popularity,
      'genreIds': genreIds,
      'releaseDate': releaseDate?.toIso8601String(),
      'overview': overview,
      'duration': duration,
      'showType': showType?.toString().split('.').last,
      'castAndCrew': castAndCrew?.map((x) => x.toJson()).toList(),
      'imagesBackdrop': imagesBackdrop?.map((x) => x.toJson()).toList(),
      'imagesPosters': imagesPosters?.map((x) => x.toJson()).toList(),
      'seasons': seasons?.map((x) => x.toJson()).toList(),
      'youtubeKeys': youtubeKeys,
      'review': review?.map((x) => x.toJson()).toList(),
      'similarShows': _serializeSimilarShows(),
      'totalReviewsNumber': totalReviewsNumber
    };
  }

  List<Map<String, dynamic>?>? _serializeSimilarShows() {
    if (similarShows == null) return null;

    return similarShows!.map((show) {
      if (showType == ShowType.Movie && show is MovieMiniResultEntity) {
        return show.toJson();
      } else if (showType == ShowType.TV && show is TvShowMiniResultEntity) {
        return show.toJson();
      }
      return null;
    }).toList();
  }

  factory ShowResultEntity.fromJson(Map<String, dynamic> json) {
    var showType = json['showType'] != null
        ? ShowType.values.firstWhere(
            (e) => e.toString().split('.').last == json['showType'],
          )
        : null;

    return ShowResultEntity(
      id: json['id'],
      name: json['name'],
      posterUrl: json['posterUrl'],
      voteAverage: json['voteAverage']?.toDouble(),
      popularity: json['popularity']?.toDouble(),
      genreIds: List<int>.from(json['genreIds'] ?? []),
      releaseDate: json['releaseDate'] != null
          ? DateTime.parse(json['releaseDate'])
          : null,
      overview: json['overview'],
      duration: json['duration'],
      showType: showType,
      castAndCrew: (json['castAndCrew'] as List<dynamic>?)
          ?.map((x) => PersonMiniResultEntity.fromJson(x))
          .toList(),
      imagesBackdrop: (json['imagesBackdrop'] as List<dynamic>?)
          ?.map((x) => ImageEntity.fromJson(x))
          .toList(),
      imagesPosters: (json['imagesPosters'] as List<dynamic>?)
          ?.map((x) => ImageEntity.fromJson(x))
          .toList(),
      seasons: (json['seasons'] as List<dynamic>?)
          ?.map((x) => SeasonEntity.fromJson(x))
          .toList(),
      youtubeKeys: List<String>.from(json['youtubeKeys']),
      review: (json['review'] as List<dynamic>?)
          ?.map((x) => ReviewEntity.fromJson(x))
          .toList(),
      similarShows: _deserializeSimilarShows(json['similarShows'], showType),
      totalReviewsNumber: json['totalReviewsNumber'],
    );
  }

  static List<dynamic>? _deserializeSimilarShows(
      List<dynamic>? similarShowsJson, ShowType? showType) {
    if (similarShowsJson == null) return null;

    return similarShowsJson.map((showJson) {
      if (showType == ShowType.Movie) {
        return MovieMiniResultEntity.fromJson(showJson);
      } else if (showType == ShowType.TV) {
        return TvShowMiniResultEntity.fromJson(showJson);
      }
      return null;
    }).toList();
  }
}
