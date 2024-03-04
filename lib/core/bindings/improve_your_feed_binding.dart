import 'package:get/get.dart';
import 'package:spark/features/auth/presentation/controllers/improve_your_feed_controller.dart';

class ImproveYourFeedsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ImproveYourFeedsController());
  }
}
