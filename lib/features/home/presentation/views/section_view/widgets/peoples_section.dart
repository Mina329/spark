import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:spark/core/utils/assets_manager.dart';
import 'package:spark/core/widgets/custom_appbar.dart';
import 'package:spark/features/home/domain/entities/person_mini_result_entity.dart';
import 'package:spark/features/home/presentation/controllers/section_controllers/section_controllers.dart';
import 'package:spark/features/home/presentation/views/section_view/widgets/custom_person_list_view_item.dart';

class PeoplesSection extends StatelessWidget {
  const PeoplesSection({
    super.key,
    required this.sectionName,
    required this.peoples,
  });

  final String sectionName;
  final List<dynamic> peoples;
  @override
  Widget build(BuildContext context) {
    final SectionController sectionController = Get.find<SectionController>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        controller: sectionController.scrollController,
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomAppBar(sectionName: sectionName),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Column(
                children: [
                  CustomPersonListViewItem(
                    person: peoples[index] as PersonMiniResultEntity,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  if (index != peoples.length - 1) const Divider(),
                  if (index != peoples.length - 1)
                    const SizedBox(
                      height: 10,
                    ),
                ],
              ),
              childCount: peoples.length,
            ),
          ),
          SliverToBoxAdapter(
            child: Obx(
              () {
                if (sectionController.loadingMore.isTrue) {
                  return Center(
                    child: Lottie.asset(Assets.assetsAnimationsMovieLoading),
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
