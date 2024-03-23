import 'package:get/get.dart';
import 'package:spark/features/home/domain/usecases/get_show_details_usecase.dart';
import 'package:spark/features/home/presentation/controllers/show_details_controllers/show_details_controller.dart';

class ShowDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetShowDetailsUsecase>(
      () => GetShowDetailsUsecase(
        homeRepo: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => ShowDetailsController(
        getShowDetailsUsecase: Get.find(),
      ),
    );
  }
}
