import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spark/core/utils/api_service.dart';
import 'package:spark/core/widgets/functions/extensions.dart';
import 'package:spark/features/auth/data/models/genre_model.dart';
import 'package:spark/features/home/data/data_sources/home_remote_data_source/home_remote_data_source.dart';
import 'package:spark/features/home/data/models/movie_mini_result/movie_mini_result.dart';
import 'package:spark/features/home/data/models/movie_trailer/movie_trailer.dart';
import 'package:spark/features/home/data/models/person_mini_result/person_mini_result.dart';
import 'package:spark/features/home/data/models/person_result/person_result.dart';
import 'package:spark/features/home/data/models/tv_show_mini_result/tv_show_mini_result.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';
import 'package:spark/features/home/domain/entities/person_mini_result_entity.dart';
import 'package:spark/features/home/domain/entities/person_result_entity.dart';
import 'package:spark/features/home/domain/entities/tv_show_mini_result_entity.dart';

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firebaseFirestore;

  HomeRemoteDataSourceImpl(
      {required this.firebaseAuth,
      required this.firebaseFirestore,
      required this.apiService});
  @override
  Future<List<MovieMiniResultEntity>> getTredingMovies(int page) async {
    var data =
        await apiService.get(endPoint: '/trending/movie/week?page=$page');
    List<MovieMiniResultEntity> items = [];
    for (var item in data['results']) {
      items.add(MovieMiniResult.fromJson(item).toEntity());
    }
    return items;
  }

  @override
  Future<List<TvShowMiniResultEntity>> getTredingTvShows(int page) async {
    var data = await apiService.get(endPoint: '/trending/tv/week?page=$page');
    List<TvShowMiniResultEntity> items = [];
    for (var item in data['results']) {
      items.add(TvShowMiniResult.fromJson(item).toEntity());
    }
    return items;
  }

  @override
  Future<List<MovieMiniResultEntity>> getNowPlayingMovies(int page) async {
    var data = await apiService.get(endPoint: '/movie/now_playing?page=$page');
    List<MovieMiniResultEntity> items = [];
    for (var item in data['results']) {
      items.add(MovieMiniResult.fromJson(item).toEntity());
    }
    return items;
  }

  @override
  Future<List<String>> getNowPlayingMoviesTrailers(
      List<MovieMiniResultEntity> movies) async {
    List<String> youttubeKeys = [];
    for (var movie in movies) {
      var data = await apiService.get(endPoint: '/movie/${movie.id}/videos');
      for (var item in data['results']) {
        MovieTrailer res = MovieTrailer.fromJson(item);
        if (res.type == 'Trailer' && res.site == 'YouTube') {
          youttubeKeys.add(res.key!);
          break;
        }
      }
    }
    return youttubeKeys;
  }

  @override
  Future<List<PersonMiniResultEntity>> getTredingPeople(int page) async {
    var data =
        await apiService.get(endPoint: '/trending/person/week?page=$page');
    List<PersonMiniResultEntity> items = [];
    for (var item in data['results']) {
      items.add(PersonMiniResult.fromJson(item).toEntity());
    }
    return items;
  }

  @override
  Future<List> getPicksForYou() async {
    List<GenreModel> genres = firebaseAuth.currentUser!.isAnonymous
        ? []
        : await getUserFavouriteGenres();
    List<MovieMiniResultEntity> movies = [];
    List<TvShowMiniResultEntity> tvShows = [];
    List result = [];
    (List<String>, List<String>) categorizedGenres =
        getCategorizedGenres(genres);

    String genresParameterMovies =
        categorizedGenres.$1.map((id) => id.toString()).join('%7C');
    var moviesData = await apiService.get(
        endPoint:
            '/discover/movie?include_adult=false&include_video=false&language=en-US&page=1&sort_by=vote_average.desc&vote_count.gte=10000${categorizedGenres.$1.isEmpty ? "" : "&with_genres=$genresParameterMovies"}');
    for (var item in moviesData['results']) {
      movies.add(MovieMiniResult.fromJson(item).toEntity());
    }

    String genresParameterTvShow =
        categorizedGenres.$2.map((id) => id.toString()).join('%7C');
    var tvShowsData = await apiService.get(
        endPoint:
            '/discover/tv?include_adult=false&include_null_first_air_dates=false&language=en-US&page=1&sort_by=vote_average.desc&vote_count.gte=10000${categorizedGenres.$2.isEmpty ? "" : "&with_genres=$genresParameterTvShow"}');
    for (var item in tvShowsData['results']) {
      tvShows.add(TvShowMiniResult.fromJson(item).toEntity());
    }

    result.addAll(movies);
    result.addAll(tvShows);
    result.shuffle();

    return result;
  }

  Future<List<GenreModel>> getUserFavouriteGenres() async {
    List<GenreModel> genres = [];
    QuerySnapshot querySnapshot = await firebaseFirestore
        .collection('users')
        .doc(firebaseAuth.currentUser!.uid)
        .collection('genres')
        .get();
    for (var doc in querySnapshot.docs) {
      GenreModel genre =
          GenreModel.fromJson(doc.data() as Map<String, dynamic>);
      genres.add(genre);
    }
    return genres;
  }

  (List<String>, List<String>) getCategorizedGenres(List<GenreModel> genres) {
    List<String> moviesGenres = [];
    List<String> tvShowGenres = [];
    for (var genre in genres) {
      if (genre.type == GenreModelType.Movie) {
        moviesGenres.add(genre.id);
      } else if (genre.type == GenreModelType.TV_Show) {
        tvShowGenres.add(genre.id);
      } else if (genre.type == GenreModelType.Both) {
        moviesGenres.add(genre.id);
        tvShowGenres.add(genre.id);
      }
    }
    return (moviesGenres, tvShowGenres);
  }

  @override
  Future<PersonResultEntity> getPersonDetails(int id) async {
    var data = await apiService.get(
        endPoint:
            '/person/$id?append_to_response=movie_credits%2Ctv_credits%2Cimages&language=en-US');
    PersonResultEntity person = PersonResult.fromJson(data).toEntity();
    return person;
  }

  @override
  Future<void> addFavouritePerson(PersonResultEntity person) async {
    await firebaseFirestore
        .collection('users')
        .doc(firebaseAuth.currentUser!.uid)
        .collection('favourite_people')
        .doc(person.id.toString())
        .set(person.toJson());
  }

  @override
  Future<void> deleteFavouritePerson(int id) async {
    await firebaseFirestore
        .collection('users')
        .doc(firebaseAuth.currentUser!.uid)
        .collection('favourite_people')
        .doc(id.toString())
        .delete();
  }

  @override
  Future<bool> checkFavouritePerson(int id) async {
    final doc = await firebaseFirestore
        .collection('users')
        .doc(firebaseAuth.currentUser!.uid)
        .collection('favourite_people')
        .doc(id.toString())
        .get();
    return doc.exists;
  }
}
