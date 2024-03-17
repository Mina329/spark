import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:spark/features/auth/data/repos/auth_repo_impl.dart';
import 'package:spark/features/auth/domain/repos/auth_repo.dart';
import 'package:spark/features/auth/domain/usecases/sign_up_with_email_and_password_usecase.dart';
import 'package:spark/features/auth/presentation/controllers/auth_controllers/auth_controller.dart';
import 'package:spark/features/auth/presentation/controllers/auth_controllers/sign_up_with_email_and_password_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirebaseAuth>(() => FirebaseAuth.instance, fenix: true);

    Get.lazyPut<AuthRepo>(
      () => AuthRepoImpl(firebaseAuth: Get.find()),
      fenix: true,
    );

    Get.lazyPut<SignUpWithEmailAndPasswordUsecase>(
      () => SignUpWithEmailAndPasswordUsecase(authRepo: Get.find()),
      fenix: true,
    );

    // Register controllers
    Get.lazyPut(() => AuthController(), fenix: true);
    Get.lazyPut(
      () => SignUpWithEmailAndPasswordController(usecase: Get.find()),
      fenix: true,
    );
  }
}
