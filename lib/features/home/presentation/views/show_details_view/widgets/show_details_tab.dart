import 'package:flutter/material.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/images_section.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/seasons_guide_list_view.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/videos_section.dart';

class ShowDetailsTab extends StatelessWidget {
  const ShowDetailsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          StringsManager.seasonsGuide,
          style: StylesManager.styleLatoBold16(context),
        ),
        const SizedBox(
          height: 15,
        ),
        const SeasonsGuideListView(),
        const SizedBox(
          height: 15,
        ),
        const ImagesSection(),
        const SizedBox(
          height: 15,
        ),
        const VideosSection(),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
