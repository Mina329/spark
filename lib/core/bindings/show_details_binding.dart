import 'package:get/get.dart';
import 'package:spark/features/home/domain/usecases/get_show_details_usecase.dart';
import 'package:spark/features/home/presentation/controllers/favourite_controller.dart';
import 'package:spark/features/home/presentation/controllers/show_details_controllers/show_details_controller.dart';

class ShowDetailsBinding extends Bindings {
  @override
  void dependencies() {
    final String uniqueTag =
        "${Get.arguments['id'].toString()}_${Get.arguments['showType'].toString()}";
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
      tag: uniqueTag,
    );
    Get.lazyPut(
      () => FavouriteController(
        addFavouriteUsecase: Get.find(),
        deleteFavourritePersonUsecase: Get.find(),
        checkFavourritePersonUsecase: Get.find(),
      ),
      fenix: true,
    );
  }
}
