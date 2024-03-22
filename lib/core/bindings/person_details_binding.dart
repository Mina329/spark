import 'package:get/get.dart';
import 'package:spark/features/home/domain/usecases/get_person_details_usecase.dart';
import 'package:spark/features/home/presentation/controllers/person_details_controller/get_person_details_controller.dart';
import 'package:spark/features/home/presentation/controllers/person_details_controller/person_details_controller.dart';

class PersonDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetPersonDetailsUsecase>(
      () => GetPersonDetailsUsecase(
        homeRepo: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => PersonDetailsController(),
      fenix: true,
    );
    Get.lazyPut(
      () => GetPersonDetailsController(
        getPersonDetailsUsecase: Get.find(),
      ),
      fenix: true,
    );
  }
}
