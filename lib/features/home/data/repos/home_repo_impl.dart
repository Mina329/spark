import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/errors/server_failure.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/data/data_sources/home_remote_data_source/home_remote_data_source.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';
import 'package:spark/features/home/domain/entities/person_mini_result_entity.dart';
import 'package:spark/features/home/domain/entities/person_result_entity.dart';
import 'package:spark/features/home/domain/entities/show_result_entity.dart';
import 'package:spark/features/home/domain/entities/tv_show_mini_result_entity.dart';
import 'package:spark/features/home/domain/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepoImpl({required this.homeRemoteDataSource});
  @override
  Future<Either<Failure, List<MovieMiniResultEntity>>> getTrendingMovies(
      int page) async {
    try {
      var results = await homeRemoteDataSource.getTredingMovies(page);
      return right(results);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(
        Failure(
          message: StringsManager.somethingWentWrong,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<TvShowMiniResultEntity>>> getTrendingTvShows(
      int page) async {
    try {
      var results = await homeRemoteDataSource.getTredingTvShows(page);
      return right(results);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(
        Failure(
          message: StringsManager.somethingWentWrong,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<MovieMiniResultEntity>>> getNowPlayingMovies(
      int page) async {
    try {
      var results = await homeRemoteDataSource.getNowPlayingMovies(page);
      return right(results);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(
        Failure(
          message: StringsManager.somethingWentWrong,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<String>>> getNowPlayingMoviesTrailer(
      List<MovieMiniResultEntity> movies) async {
    try {
      var results =
          await homeRemoteDataSource.getNowPlayingMoviesTrailers(movies);
      return right(results);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(
        Failure(
          message: StringsManager.somethingWentWrong,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<PersonMiniResultEntity>>> getTrendingPeople(
      int page) async {
    try {
      var results = await homeRemoteDataSource.getTredingPeople(page);
      return right(results);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(
        Failure(
          message: StringsManager.somethingWentWrong,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List>> getPicksForYou( int page) async {
    try {
      var results = await homeRemoteDataSource.getPicksForYou(page);
      return right(results);
    } on DioException catch (e) {
      log(e.toString());
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      log(e.toString());
      return left(
        Failure(
          message: StringsManager.somethingWentWrong,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, PersonResultEntity>> getPersonDetails(int id) async {
    try {
      var results = await homeRemoteDataSource.getPersonDetails(id);
      return right(results);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(
        Failure(
          message: StringsManager.somethingWentWrong,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, void>> addFavourite(
      dynamic show, ShowType showType) async {
    try {
      var results = await homeRemoteDataSource.addFavourite(show, showType);
      return right(results);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(
        Failure(
          message: StringsManager.somethingWentWrong,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, void>> deleteFavourite(
      int id, ShowType showType) async {
    try {
      var results = await homeRemoteDataSource.deleteFavourite(id, showType);
      return right(results);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(
        Failure(
          message: StringsManager.somethingWentWrong,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, bool>> checkFavourite(
      int id, ShowType showType) async {
    try {
      var results = await homeRemoteDataSource.checkFavourite(id, showType);
      return right(results);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(
        Failure(
          message: StringsManager.somethingWentWrong,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, ShowResultEntity>> getShowDetails(
      int id, ShowType showType) async {
    try {
      var results = await homeRemoteDataSource.getShowDetails(id, showType);
      return right(results);
    } on DioException catch (e) {
      log(e.toString());
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      log(e.toString());

      return left(
        Failure(
          message: StringsManager.somethingWentWrong,
        ),
      );
    }
  }
}
