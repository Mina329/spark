import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/presentation/views/media_view/widgets/images_view.dart';
import 'package:spark/features/home/presentation/views/media_view/widgets/reviews_view.dart';
import 'package:spark/features/home/presentation/views/media_view/widgets/videos_view.dart';

class MediaViewBody extends StatelessWidget {
  const MediaViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    final MediaType type = Get.arguments['mediaType'];
    return type == MediaType.Images
        ? const ImagesView()
        : type == MediaType.Videos
            ? const VideosView()
            : const ReviewsView();
  }
}
