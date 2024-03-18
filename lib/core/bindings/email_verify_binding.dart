import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:spark/features/auth/data/repos/auth_repo_impl.dart';
import 'package:spark/features/auth/domain/repos/auth_repo.dart';
import 'package:spark/features/auth/domain/usecases/email_verify_usecase.dart';
import 'package:spark/features/auth/presentation/controllers/email_verify_controllers/email_verify_controller.dart';

class EmailVerifyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirebaseAuth>(() => FirebaseAuth.instance, fenix: true);

    Get.lazyPut<AuthRepo>(
      () => AuthRepoImpl(
        firebaseAuth: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<VerifyEmailUsecase>(
      () => VerifyEmailUsecase(
        authRepo: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => EmailVerifyController(
        verifyEmailUsecase: Get.find(),
      ),
    );
  }
}
