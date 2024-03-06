import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/features/home/data/data_sources/dummy_data.dart';
import 'package:spark/features/home/presentation/controllers/home_controller.dart';
import 'package:spark/features/home/presentation/views/widgets/more_info_column.dart';

class HomeTrendingShows extends StatelessWidget {
  const HomeTrendingShows({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.find<HomeController>();

    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.6,
      child: PageView.builder(
        itemBuilder: (context, index) {
          return buildShowView(index, context);
        },
        itemCount: showsImages.length,
        controller: homeController.pageController,
      ),
    );
  }

  Stack buildShowView(int index, BuildContext context) {
    return Stack(
      children: [
        buildCoverImage(index),
        buildCoverOverlay(context),
        MoreInfoColumn(index: index),
      ],
    );
  }

  Positioned buildCoverOverlay(BuildContext context) {
    return Positioned.fill(
      bottom: 40,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Theme.of(context).scaffoldBackgroundColor.withOpacity(1),
              Theme.of(context).scaffoldBackgroundColor.withOpacity(0),
              Theme.of(context).scaffoldBackgroundColor.withOpacity(0),
              Theme.of(context).scaffoldBackgroundColor.withOpacity(1),
            ],
            stops: const [0.0, 0.1, 0.9, 1.0],
          ),
        ),
        child: Container(),
      ),
    );
  }

  Positioned buildCoverImage(int index) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      bottom: 40,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: CachedNetworkImageProvider(showsImages[index]),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
