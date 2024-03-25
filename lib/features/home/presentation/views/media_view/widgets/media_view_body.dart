import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/presentation/controllers/media_controllers/media_controller.dart';
import 'package:spark/features/home/presentation/views/media_view/widgets/images_view.dart';
import 'package:spark/features/home/presentation/views/media_view/widgets/reviews_view.dart';
import 'package:spark/features/home/presentation/views/media_view/widgets/videos_view.dart';
import 'package:spark/features/home/presentation/views/person_details_view/widgets/person_details_view_shimmer.dart';

class MediaViewBody extends StatelessWidget {
  const MediaViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MediaController>(
      builder: (mediaController) {
        if (mediaController.mediaType == MediaType.Images) {
          return const ImagesView();
        } else if (mediaController.mediaType == MediaType.Reviews) {
          return const ReviewsView();
        } else if (mediaController.mediaType == MediaType.Videos) {
          return const VideosView();
        } else {
          return const PersonDetailsViewShimmer();
        }
      },
    );
  }
}
