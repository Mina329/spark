import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:spark/features/explore/presentation/views/widgets/explore_section_shimmer.dart';

class ExploreDefaultViewShimmer extends StatelessWidget {
  const ExploreDefaultViewShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Theme.of(context).brightness == Brightness.light
          ? Colors.grey[400]!
          : Colors.grey[800]!,
      highlightColor: Theme.of(context).brightness == Brightness.light
          ? Colors.grey[300]!
          : Colors.grey[600]!,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExploreSectionShimmer(),
          SizedBox(
            height: 30,
          ),
          ExploreSectionShimmer(),
          SizedBox(
            height: 30,
          ),
          ExploreSectionShimmer(),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
