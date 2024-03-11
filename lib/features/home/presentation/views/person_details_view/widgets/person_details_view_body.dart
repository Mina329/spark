import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/home/presentation/controllers/person_details_controller.dart';
import 'package:spark/features/home/presentation/views/person_details_view/widgets/custom_person_tab_bar.dart';
import 'package:spark/features/home/presentation/views/person_details_view/widgets/person_image_title.dart';

class PersonDetailsViewBody extends StatelessWidget {
  const PersonDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: PersonImageTitle(),
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
                  child: const CustomPersonTabBar(),
                ),
              ),
              const Divider(),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: GetBuilder<PersonDetailsController>(
            builder: (personDetailsController) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: personDetailsController
                  .tabsWidgets[personDetailsController.index],
            ),
          ),
        )
      ],
    );
  }
}
