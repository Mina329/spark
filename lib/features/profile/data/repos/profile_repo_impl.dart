import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/errors/firebase_auth_failure.dart';
import 'package:spark/features/home/domain/entities/person_mini_result_entity.dart';
import 'package:spark/features/lists/domain/entities/show_mini_result_entity.dart';
import 'package:spark/features/profile/data/data_sources/profile_remote_data_source/profile_remote_data_source.dart';
import 'package:spark/features/profile/domain/entities/user_info_entity.dart';
import 'package:spark/features/profile/domain/repos/profile_repo.dart';

class ProfileRepoImpl extends ProfileRepo {
  final ProfileRemoteDataSource profileRemoteDataSource;

  ProfileRepoImpl({required this.profileRemoteDataSource});
  @override
  Future<Either<Failure, UserInfoEntity>> getUserInfo() async {
    try {
      UserInfoEntity result = await profileRemoteDataSource.getUserInfo();
      return right(result);
    } on FirebaseAuthException catch (e) {
      return left(
        FirebaseAuthFailure.fromFirebaseAuthException(e),
      );
    } catch (e) {
      return left(
        Failure(
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<ShowMiniResultEntity>>>
      getUserFavouriteMovies() async {
    try {
      var result = await profileRemoteDataSource.getUserFavouriteMovies();
      return right(result);
    } on FirebaseAuthException catch (e) {
      return left(
        FirebaseAuthFailure.fromFirebaseAuthException(e),
      );
    } catch (e) {
      return left(
        Failure(
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<ShowMiniResultEntity>>>
      getUserFavouriteTvShows() async {
    try {
      var result = await profileRemoteDataSource.getUserFavouriteTvShows();
      return right(result);
    } on FirebaseAuthException catch (e) {
      return left(
        FirebaseAuthFailure.fromFirebaseAuthException(e),
      );
    } catch (e) {
      return left(
        Failure(
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<PersonMiniResultEntity>>>
      getUserFavouriteCelebrities() async {
    try {
      var result = await profileRemoteDataSource.getUserFavouriteCelebrities();
      return right(result);
    } on FirebaseAuthException catch (e) {
      return left(
        FirebaseAuthFailure.fromFirebaseAuthException(e),
      );
    } catch (e) {
      return left(
        Failure(
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, void>> changeUserName(String name) async {
    try {
      var result = await profileRemoteDataSource.changeUserName(name);
      return right(result);
    } on FirebaseAuthException catch (e) {
      return left(
        FirebaseAuthFailure.fromFirebaseAuthException(e),
      );
    } catch (e) {
      return left(
        Failure(
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, void>> signOut() async {
    try {
      var result = await profileRemoteDataSource.signOut();
      return right(result);
    } on FirebaseAuthException catch (e) {
      return left(
        FirebaseAuthFailure.fromFirebaseAuthException(e),
      );
    } catch (e) {
      return left(
        Failure(
          message: e.toString(),
        ),
      );
    }
  }
}
