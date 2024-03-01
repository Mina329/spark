import 'package:get/get.dart';
import 'package:spark/features/splash/presentation/controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
