import 'package:flutter/material.dart';
import 'package:spark/core/widgets/shimmer_container.dart';

class ExploreSectionShimmer extends StatelessWidget {
  const ExploreSectionShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ShimmerContainer(width: 100, height: 25),
        const SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              5,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 15),
                child: ShimmerContainer(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
