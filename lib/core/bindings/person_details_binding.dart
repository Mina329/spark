import 'package:get/get.dart';
import 'package:spark/features/home/presentation/controllers/person_details_controller.dart';

class PersonDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PersonDetailsController());
  }
}
