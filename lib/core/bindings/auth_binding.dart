import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:spark/features/auth/data/data_sources/auth_remote_data_source/auth_remote_data_source.dart';
import 'package:spark/features/auth/data/data_sources/auth_remote_data_source/auth_remote_data_source_impl.dart';
import 'package:spark/features/auth/data/repos/auth_repo_impl.dart';
import 'package:spark/features/auth/domain/repos/auth_repo.dart';
import 'package:spark/features/auth/domain/usecases/get_user_genres_usecase.dart';
import 'package:spark/features/auth/domain/usecases/log_in_anonymously_usecase.dart';
import 'package:spark/features/auth/domain/usecases/log_in_with_email_and_password_usecase.dart';
import 'package:spark/features/auth/domain/usecases/log_in_with_facebook_usecase.dart';
import 'package:spark/features/auth/domain/usecases/log_in_with_google_usecase.dart';
import 'package:spark/features/auth/domain/usecases/sign_up_with_email_and_password_usecase.dart';
import 'package:spark/features/auth/presentation/controllers/auth_controllers/auth_controller.dart';
import 'package:spark/features/auth/presentation/controllers/auth_controllers/log_in_anonymously_controller.dart';
import 'package:spark/features/auth/presentation/controllers/auth_controllers/log_in_user_with_email_and_password_controller.dart';
import 'package:spark/features/auth/presentation/controllers/auth_controllers/log_in_with_facebook_controller.dart';
import 'package:spark/features/auth/presentation/controllers/auth_controllers/log_in_with_google_controller.dart';
import 'package:spark/features/auth/presentation/controllers/auth_controllers/sign_up_with_email_and_password_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirebaseAuth>(() => FirebaseAuth.instance, fenix: true);
    Get.lazyPut<FirebaseFirestore>(() => FirebaseFirestore.instance,
        fenix: true);

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

    Get.lazyPut<SignUpWithEmailAndPasswordUsecase>(
      () => SignUpWithEmailAndPasswordUsecase(authRepo: Get.find()),
      fenix: true,
    );

    Get.lazyPut<LogInWithEmailAndPasswordUsecase>(
      () => LogInWithEmailAndPasswordUsecase(authRepo: Get.find()),
      fenix: true,
    );

    Get.lazyPut<LogInWithGoogleUsecase>(
      () => LogInWithGoogleUsecase(authRepo: Get.find()),
      fenix: true,
    );

    Get.lazyPut<LogInAnonymouslyUsecase>(
      () => LogInAnonymouslyUsecase(authRepo: Get.find()),
      fenix: true,
    );

    Get.lazyPut<LogInWithFacebookUsecase>(
      () => LogInWithFacebookUsecase(authRepo: Get.find()),
      fenix: true,
    );
    Get.lazyPut<GetUserGenreUsecase>(
      () => GetUserGenreUsecase(authRepo: Get.find()),
      fenix: true,
    );
    // Register controllers

    Get.lazyPut(() => AuthController(), fenix: true);
    Get.lazyPut(
      () => SignUpWithEmailAndPasswordController(usecase: Get.find()),
      fenix: true,
    );
    Get.lazyPut(
      () => LogInUserWithEmailAndPasswordController(
        usecase: Get.find(),
        getUserGenreUsecase: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => LogInWithGoogleController(
        logInWithGoogleUsecase: Get.find(),
        getUserGenreUsecase: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => LogInAnonymouslyController(logInAnonymouslyUsecase: Get.find()),
      fenix: true,
    );
    Get.lazyPut(
      () => LogInWithFacebookController(
        logInWithFacebookUsecase: Get.find(),
        getUserGenreUsecase: Get.find(),
      ),
      fenix: true,
    );
  }
}
