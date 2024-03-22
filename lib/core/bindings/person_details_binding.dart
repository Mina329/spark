import 'package:get/get.dart';
import 'package:spark/features/home/domain/usecases/add_favourite_person_usecase.dart';
import 'package:spark/features/home/domain/usecases/check_favourite_person_usecase.dart';
import 'package:spark/features/home/domain/usecases/delete_favourite_person_usecase.dart';
import 'package:spark/features/home/domain/usecases/get_person_details_usecase.dart';
import 'package:spark/features/home/presentation/controllers/person_details_controller/favourite_person_controller.dart';
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
    Get.lazyPut<AddFavouritePersonUsecase>(
      () => AddFavouritePersonUsecase(
        homeRepo: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<DeleteFavourritePersonUsecase>(
      () => DeleteFavourritePersonUsecase(
        homeRepo: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<CheckFavouritePersonUsecase>(
      () => CheckFavouritePersonUsecase(
        homeRepo: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => PersonDetailsController(),
      fenix: true,
    );
    Get.create(
      () => GetPersonDetailsController(
        getPersonDetailsUsecase: Get.find(),
      ),
    );
    Get.create(
      () => FavouritePersonController(
        addFavouritePersonUsecase: Get.find(),
        deleteFavourritePersonUsecase: Get.find(),
        checkFavourritePersonUsecase: Get.find(),
      ),
    );
  }
}
