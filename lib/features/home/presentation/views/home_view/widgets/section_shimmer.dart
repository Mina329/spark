import 'package:flutter/material.dart';
import 'package:spark/core/widgets/shimmer_container.dart';

class SectionShimmer extends StatelessWidget {
  const SectionShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Row(
            children: [
              ShimmerContainer(width: 110, height: 20),
              Spacer(),
              ShimmerContainer(width: 60, height: 20),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.3 / 0.6,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.only(right: 15),
                child: AspectRatio(
                  aspectRatio: 27 / 40,
                  child: ShimmerContainer(
                    width: 50,
                    height: 20,
                  ),
                ),
              ),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
