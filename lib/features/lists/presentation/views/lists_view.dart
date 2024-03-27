import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/home_view_shimmer.dart';
import 'package:spark/features/lists/presentation/controllers/get_user_lists_controller.dart';
import 'package:spark/features/lists/presentation/views/widgets/lists_view_body.dart';

class ListsView extends StatelessWidget {
  const ListsView({super.key});

  @override
  Widget build(BuildContext context) {
    final GetUserListsController getUserListsController =
        Get.find<GetUserListsController>();
    return Scaffold(
      body: Obx(
        () {
          if (getUserListsController.loading.isTrue) {
            return const HomeViewShimmer();
          } else {
            return const ListsViewBody();
          }
        },
      ),
    );
  }
}
