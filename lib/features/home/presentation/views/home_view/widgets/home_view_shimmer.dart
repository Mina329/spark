import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:spark/core/widgets/shimmer_container.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/custom_home_appbar.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/people_section_shimmer.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/section_shimmer.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/trailer_section_shimmer.dart';

class HomeViewShimmer extends StatelessWidget {
  const HomeViewShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Theme.of(context).brightness == Brightness.light
          ? Colors.grey[400]!
          : Colors.grey[800]!,
      highlightColor: Theme.of(context).brightness == Brightness.light
          ? Colors.grey[300]!
          : Colors.grey[600]!,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const CustomHomeAppBar(),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ShimmerContainer(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.5,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const SectionShimmer(),
            const SizedBox(
              height: 30,
            ),
            const SectionShimmer(),
            const SizedBox(
              height: 30,
            ),
            const TrailerSectionShimmer(),
            const SizedBox(
              height: 30,
            ),
            const SectionShimmer(),
            const SizedBox(
              height: 30,
            ),
            const PeopleSectionShimmer(),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
