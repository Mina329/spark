import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spark/features/home/presentation/views/season_details_view/widgets/episode_list_view.dart';
import 'package:spark/features/home/presentation/views/season_details_view/widgets/season_image_title.dart';
import 'package:spark/features/home/presentation/views/season_details_view/widgets/season_overview.dart';

class SeasonDetailsViewBody extends StatelessWidget {
  const SeasonDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SeasonImageTitle(),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SeasonOverview(),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: EpisodeListView(),
          ),
        )
      ],
    );
  }
}


