import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:spark/features/auth/data/repos/auth_repo_impl.dart';
import 'package:spark/features/auth/domain/repos/auth_repo.dart';
import 'package:spark/features/auth/domain/usecases/log_in_anonymously_usecase.dart';
import 'package:spark/features/onboarding/presentation/controllers/onboarding_controller.dart';

class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirebaseAuth>(() => FirebaseAuth.instance, fenix: true);

    Get.lazyPut<AuthRepo>(
      () => AuthRepoImpl(firebaseAuth: Get.find()),
      fenix: true,
    );

    Get.lazyPut<LogInAnonymouslyUsecase>(
      () => LogInAnonymouslyUsecase(
        authRepo: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => OnboardingController(
        logInAnonymouslyUsecase: Get.find(),
      ),
    );
  }
}
