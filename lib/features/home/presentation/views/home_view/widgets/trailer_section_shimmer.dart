import 'package:flutter/material.dart';
import 'package:spark/core/widgets/shimmer_container.dart';

class TrailerSectionShimmer extends StatelessWidget {
  const TrailerSectionShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: (MediaQuery.of(context).size.width) * 180 / 374,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(right: 15),
            child: ShimmerContainer(
              width: MediaQuery.of(context).size.width - 100,
              height: (MediaQuery.of(context).size.width) * 180 / 374,
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
