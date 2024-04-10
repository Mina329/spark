import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shimmer/shimmer.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/widgets/shimmer_container.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/people_section_shimmer.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/section_shimmer.dart';

class ProfileViewShimmer extends StatelessWidget {
  const ProfileViewShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[800]!,
      highlightColor: Colors.grey[600]!,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  FontAwesomeIcons.gear,
                  color: ColorManager.primaryColor,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ClipOval(
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  color: ColorManager.primaryColor,
                ),
                child: const Icon(
                  FontAwesomeIcons.solidUser,
                  color: Colors.black,
                  size: 50,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const ShimmerContainer(width: 100, height: 25),
            const SizedBox(
              height: 10,
            ),
            const SectionShimmer(),
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
