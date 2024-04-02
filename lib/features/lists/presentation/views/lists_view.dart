import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/widgets/loading_overlay.dart';
import 'package:spark/features/lists/presentation/controllers/delete_list_controller.dart';
import 'package:spark/features/lists/presentation/views/widgets/lists_view_body.dart';

class ListsView extends StatelessWidget {
  const ListsView({super.key});

  @override
  Widget build(BuildContext context) {
    final DeleteListController deleteListController =
        Get.find<DeleteListController>();
    return Scaffold(
      body: Stack(
        children: [
          const ListsViewBody(),
          Obx(() {
            if (deleteListController.loading.isTrue) {
              return const LoadingOverlay();
            } else {
              return const SizedBox.shrink();
            }
          }),
        ],
      ),
    );
  }
}
