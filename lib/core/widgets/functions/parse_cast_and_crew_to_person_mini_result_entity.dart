import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/data/models/movie_result/movie_cast.dart';
import 'package:spark/features/home/data/models/movie_result/movie_credits.dart';
import 'package:spark/features/home/data/models/movie_result/movie_crew.dart';
import 'package:spark/features/home/data/models/tv_result/tv_cast.dart';
import 'package:spark/features/home/domain/entities/person_mini_result_entity.dart';

import '../../../features/home/data/models/tv_result/tv_credits.dart';
import '../../../features/home/data/models/tv_result/tv_crew.dart';

List<PersonMiniResultEntity>? parseMovieCastAndCrewToPersonMiniResultEntity(
    MovieCredits? credits) {
  Map<int, PersonMiniResultEntity> castAndCrew = {};
  if (credits != null) {
    for (MovieCast person in credits.movieCast ?? []) {
      if (!castAndCrew.containsKey(person.id)) {
        castAndCrew[person.id!] = PersonMiniResultEntity(
          id: person.id!,
          name: person.name,
          profilePath: person.profilePath,
          showType: ShowType.Person,
          role: person.knownForDepartment,
          mostKnownForName: null,
          mostKnownForDate: null,
        );
      }
    }
    for (MovieCrew person in credits.movieCrew ?? []) {
      if (!castAndCrew.containsKey(person.id)) {
        castAndCrew[person.id!] = PersonMiniResultEntity(
          id: person.id!,
          name: person.name,
          profilePath: person.profilePath,
          showType: ShowType.Person,
          role: person.knownForDepartment,
          mostKnownForName: null,
          mostKnownForDate: null,
        );
      }
    }
  }
  return castAndCrew.values.toList();
}

List<PersonMiniResultEntity>? parseTvCastAndCrewToPersonMiniResultEntity(
    TvCredits? credits) {
  Map<int, PersonMiniResultEntity> castAndCrew = {};
  if (credits != null) {
    for (TvCast person in credits.tvCast ?? []) {
      if (!castAndCrew.containsKey(person.id)) {
        castAndCrew[person.id!] = PersonMiniResultEntity(
          id: person.id!,
          name: person.name,
          profilePath: person.profilePath,
          showType: ShowType.Person,
          role: person.knownForDepartment,
          mostKnownForName: null,
          mostKnownForDate: null,
        );
      }
    }
    for (TvCrew person in credits.tvCrew ?? []) {
      if (!castAndCrew.containsKey(person.id)) {
        castAndCrew[person.id!] = PersonMiniResultEntity(
          id: person.id!,
          name: person.name,
          profilePath: person.profilePath,
          showType: ShowType.Person,
          role: person.knownForDepartment,
          mostKnownForName: null,
          mostKnownForDate: null,
        );
      }
    }
  }
  return castAndCrew.values.toList();
}
