import 'package:get/get.dart';
import 'package:spark/features/home/presentation/controllers/section_controllers/section_controllers.dart';

class SectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SectionController>(
      () => SectionController(),
      fenix: true,
    );
  }
}
