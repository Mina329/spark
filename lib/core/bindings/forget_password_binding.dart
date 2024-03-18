import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:spark/features/auth/data/repos/auth_repo_impl.dart';
import 'package:spark/features/auth/domain/repos/auth_repo.dart';
import 'package:spark/features/auth/domain/usecases/forget_password_usecase.dart';
import 'package:spark/features/auth/presentation/controllers/forget_password_controllers/forget_password_controller.dart';

class ForgetPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirebaseAuth>(() => FirebaseAuth.instance, fenix: true);

    Get.lazyPut<AuthRepo>(
      () => AuthRepoImpl(
        firebaseAuth: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<ForgetPasswordUsecase>(
      () => ForgetPasswordUsecase(
        authRepo: Get.find(),
      ),
      fenix: true,
    );

    Get.lazyPut(
      () => ForgetPasswordController(
        forgetPasswordUsecase: Get.find(),
      ),
    );
  }
}
