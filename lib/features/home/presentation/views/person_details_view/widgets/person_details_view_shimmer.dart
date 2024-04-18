import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shimmer/shimmer.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/shimmer_container.dart';

class PersonDetailsViewShimmer extends StatelessWidget {
  const PersonDetailsViewShimmer({super.key});

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    FontAwesomeIcons.angleLeft,
                    color: Colors.black,
                    size: getResponsiveFontSize(context, fontSize: 24),
                  ),
                  Icon(
                    FontAwesomeIcons.solidHeart,
                    color: Colors.black,
                    size: getResponsiveFontSize(context, fontSize: 24),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ShimmerContainer(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.45,
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: ShimmerContainer(
                  height: 25,
                  width: 150,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Center(
                child: ShimmerContainer(
                  height: 20,
                  width: 70,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ShimmerContainer(
                      height: 25,
                      width: 100,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ShimmerContainer(
                      height: 25,
                      width: 80,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ShimmerContainer(
                      height: 25,
                      width: 130,
                    ),
                  ],
                ),
              ),
              const Divider(),
              const ShimmerContainer(
                height: 25,
                width: 130,
              ),
              const SizedBox(
                height: 10,
              ),
              const ShimmerContainer(
                height: 122,
                width: double.infinity,
              ),
              const SizedBox(
                height: 20,
              ),
              const ShimmerContainer(
                height: 25,
                width: 130,
              ),
              const SizedBox(
                height: 10,
              ),
              const ShimmerContainer(
                height: 100,
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
