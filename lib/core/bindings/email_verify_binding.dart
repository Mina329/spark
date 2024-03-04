import 'package:get/get.dart';
import 'package:spark/features/auth/presentation/controllers/email_verify_controller.dart';

class EmailVerifyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmailVerifyController());
  }
}
