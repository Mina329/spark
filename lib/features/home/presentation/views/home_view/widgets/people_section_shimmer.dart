import 'package:flutter/material.dart';
import 'package:spark/core/widgets/shimmer_container.dart';

class PeopleSectionShimmer extends StatelessWidget {
  const PeopleSectionShimmer({
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
            height: MediaQuery.of(context).size.width * 0.3 + 30,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.width * 0.3,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const ShimmerContainer(width: 80, height: 20)
                  ],
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
