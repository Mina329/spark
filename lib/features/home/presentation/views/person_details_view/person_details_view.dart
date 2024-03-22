import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/features/home/presentation/controllers/person_details_controller/get_person_details_controller.dart';
import 'package:spark/features/home/presentation/views/person_details_view/widgets/person_details_view_body.dart';

class PersonDetailsView extends StatelessWidget {
  const PersonDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final GetPersonDetailsController getPersonDetailsController =
        Get.find<GetPersonDetailsController>();
    return Scaffold(
      body: Obx(
        () {
          if (getPersonDetailsController.loading.isTrue) {
            return const SizedBox.shrink();
          } else {
            return const PersonDetailsViewBody();
          }
        },
      ),
    );
  }
}
