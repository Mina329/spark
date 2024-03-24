import 'package:get/get.dart';
import 'package:spark/features/home/domain/usecases/get_season_details_usecase.dart';
import 'package:spark/features/home/presentation/controllers/season_details_controllers.dart/season_details_controller.dart';

class SeasonDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetSeasonDetailsUsecase>(
      () => GetSeasonDetailsUsecase(
        homeRepo: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => SeasonDetailsController(
        getSeasonDetailsUsecase: Get.find(),
      ),
    );
  }
}
