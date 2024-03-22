import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:spark/core/utils/assets_manager.dart';
import 'package:spark/core/widgets/custom_appbar.dart';
import 'package:spark/features/home/presentation/controllers/section_controller/section_controllers.dart';
import 'package:spark/features/home/presentation/views/section_view/widgets/custom_show_list_view_item.dart';

class ShowsSection extends StatelessWidget {
  const ShowsSection({
    super.key,
    required this.sectionName,
    required this.shows,
  });

  final String sectionName;
  final List<dynamic> shows;
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
                  CustomShowListViewItem(
                    show: shows[index],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  if (index != shows.length - 1) const Divider(),
                  if (index != shows.length - 1)
                    const SizedBox(
                      height: 10,
                    ),
                ],
              ),
              childCount: shows.length,
            ),
          ),
          SliverToBoxAdapter(
            child: Obx(
              () {
                if (sectionController.loadingMore.isTrue) {
                  return Center(
                    child: Lottie.asset(
                      Assets.assetsAnimationsMovieLoading,
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.width * 0.5,
                    ),
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
