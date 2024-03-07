import 'package:get/get.dart';
import 'package:spark/features/home/presentation/controllers/home_controller.dart';
import 'package:spark/features/main/presentation/controllers/bottom_navigation_bar_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavigationBarController());
    Get.lazyPut(() => HomeController());
  }
}
