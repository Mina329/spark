import 'package:get/get.dart';
import 'package:spark/features/profile/domain/usecases/change_user_name_usecase.dart';
import 'package:spark/features/profile/domain/usecases/sign_out_usecase.dart';
import 'package:spark/features/profile/presentation/controllers/settings_view_controller/change_user_name_controller.dart';
import 'package:spark/features/profile/presentation/controllers/settings_view_controller/sign_out_controller.dart';

class SettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChangeUserNameUsecase>(
      () => ChangeUserNameUsecase(
        profileRepo: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<SignOutUsecase>(
      () => SignOutUsecase(
        profileRepo: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<ChangeUserNameController>(
      () => ChangeUserNameController(
        changeUserNameUsecase: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<SignOutController>(
      () => SignOutController(
        signOutUsecase: Get.find(),
      ),
      fenix: true,
    );
  }
}
