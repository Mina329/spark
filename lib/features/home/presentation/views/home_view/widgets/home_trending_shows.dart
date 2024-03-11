import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/widgets/functions/build_cover_image.dart';
import 'package:spark/core/widgets/functions/build_cover_overlay.dart';
import 'package:spark/features/home/data/data_sources/dummy_data.dart';
import 'package:spark/features/home/presentation/controllers/home_controller.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/more_info_column.dart';

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
        buildCoverImage(showsImages[index]),
        buildCoverOverlay(context),
        MoreInfoColumn(index: index),
      ],
    );
  }

  
}
