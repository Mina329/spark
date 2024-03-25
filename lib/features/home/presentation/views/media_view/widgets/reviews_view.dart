import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:spark/core/utils/assets_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/widgets/custom_appbar.dart';
import 'package:spark/features/home/presentation/controllers/media_controllers/media_controller.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/review_card.dart';

class ReviewsView extends StatelessWidget {
  const ReviewsView({super.key});

  @override
  Widget build(BuildContext context) {
    final MediaController mediaController = Get.find<MediaController>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        controller: mediaController.scrollController,
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomAppBar(
              sectionName: StringsManager.reviews,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          GetBuilder<MediaController>(
            builder: (mediaController) {
              return SliverList.builder(
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: ReviewCard(
                    reviewEntity: mediaController.mediaList[index],
                  ),
                ),
                itemCount: mediaController.mediaList.length,
              );
            },
          ),
          SliverToBoxAdapter(
            child: Obx(() {
              if (mediaController.loadingMore.isTrue) {
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
            }),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 15,
            ),
          ),
        ],
      ),
    );
  }
}
