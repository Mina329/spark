import 'package:get/get.dart';
import 'package:spark/features/home/presentation/controllers/section_controller/section_controllers.dart';

class SectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.create<SectionController>(
      () => SectionController(),
    );
  }
}
