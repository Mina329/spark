import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:spark/core/utils/assets_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/widgets/custom_appbar.dart';
import 'package:spark/core/widgets/functions/show_full_screen_image.dart';
import 'package:spark/features/home/presentation/controllers/media_controllers/media_controller.dart';

class ImagesView extends StatelessWidget {
  const ImagesView({
    super.key,
  });

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
              sectionName: StringsManager.images,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          SliverToBoxAdapter(
            child: GetBuilder<MediaController>(
              builder: (mediaController) {
                return AnimationLimiter(
                  child: Wrap(
                    spacing: 5,
                    runSpacing: 5,
                    children: AnimationConfiguration.toStaggeredList(
                      duration: const Duration(milliseconds: 375),
                      childAnimationBuilder: (widget) => SlideAnimation(
                        verticalOffset: 50.0,
                        child: FadeInAnimation(
                          child: widget,
                        ),
                      ),
                      children: List.generate(
                        mediaController.mediaList.length,
                        (index) => GestureDetector(
                          onTap: () => showFullScreenImage(
                              context, mediaController.mediaList[index]),
                          child: SizedBox(
                            width:
                                (MediaQuery.of(context).size.width - 40 - 10) /
                                    2,
                            child: AspectRatio(
                              aspectRatio:
                                  mediaController.mediaList[index].aspectRatio >
                                          1
                                      ? 1.7
                                      : 0.667,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: CachedNetworkImage(
                                  imageUrl:
                                      'https://image.tmdb.org/t/p/w342/${mediaController.mediaList[index].filePath}',
                                  errorWidget: (context, url, error) => Center(
                                    child: Image.asset(
                                      Assets.assetsImagesTv,
                                      height: 80,
                                      width: 80,
                                    ),
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
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
