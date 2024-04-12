import 'package:get/get.dart';
import 'package:spark/features/home/presentation/controllers/show_controllers/show_controller.dart';

class ShowBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShowController>(
      () => ShowController(),
      fenix: true,
    );
  }
}
