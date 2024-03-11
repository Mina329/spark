import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/home/presentation/controllers/show_details_controller.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/add_to_list_widget.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/custom_tab_bar.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/show_image_title.dart';

class ShowDetailsViewBody extends StatelessWidget {
  const ShowDetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: ShowImageTitle(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        const SliverToBoxAdapter(
          child: AddToListWidget(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: SizedBox(
                  height: getResponsiveFontSize(context, fontSize: 25),
                  child: const CustomTabBar(),
                ),
              ),
              const Divider(),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: GetBuilder<ShowDetailsController>(
            builder: (showDetailsController) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: showDetailsController
                  .tabsWidgets[showDetailsController.index],
            ),
          ),
        )
      ],
    );
  }
}
