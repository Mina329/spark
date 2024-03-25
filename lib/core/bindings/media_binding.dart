import 'package:get/get.dart';
import 'package:spark/features/home/domain/usecases/get_reviews_usecase.dart';
import 'package:spark/features/home/presentation/controllers/media_controllers/media_controller.dart';

class MediaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetReviewsUsecase>(
      () => GetReviewsUsecase(
        homeRepo: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => MediaController(
        getReviewsUsecase: Get.find(),
      ),
    );
  }
}
