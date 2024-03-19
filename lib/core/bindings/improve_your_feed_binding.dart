import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:spark/features/auth/data/data_sources/auth_remote_data_source/auth_remote_data_source.dart';
import 'package:spark/features/auth/data/data_sources/auth_remote_data_source/auth_remote_data_source_impl.dart';
import 'package:spark/features/auth/data/repos/auth_repo_impl.dart';
import 'package:spark/features/auth/domain/repos/auth_repo.dart';
import 'package:spark/features/auth/domain/usecases/add_favourite_genres_usecase.dart';
import 'package:spark/features/auth/domain/usecases/set_user_genres_flag_usecase.dart';
import 'package:spark/features/auth/presentation/controllers/improve_your_feed_controllers/improve_your_feed_controller.dart';

class ImproveYourFeedsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirebaseAuth>(
      () => FirebaseAuth.instance,
      fenix: true,
    );

    Get.lazyPut<FirebaseFirestore>(
      () => FirebaseFirestore.instance,
      fenix: true,
    );

    Get.lazyPut<AuthRemoteDataSource?>(
        () => AuthRemoteDataSourceImpl(
              firebaseAuth: Get.find(),
              firestore: Get.find(),
            ),
        fenix: true);

    Get.lazyPut<AuthRepo>(
      () => AuthRepoImpl(
        firebaseAuth: Get.find(),
        authRemoteDataSource: Get.find(),
      ),
      fenix: true,
    );

    Get.lazyPut(
      () => AddFavouriteGenresUsecase(
        authRepo: Get.find(),
      ),
    );
    Get.lazyPut(
      () => SetUserGenresFlagUsecase(
        authRepo: Get.find(),
      ),
    );

    Get.lazyPut(
      () => ImproveYourFeedsController(
        addFavouriteGenresUsecase: Get.find(),
        setUserGenresFlagUsecase: Get.find(),
      ),
    );
  }
}
