import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:spark/core/widgets/shimmer_container.dart';

class ListsViewShimmer extends StatelessWidget {
  const ListsViewShimmer({super.key});

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
          children: List.generate(
            5,
            (index) => const Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: ShimmerContainer(
                  width: double.infinity,
                  height: 0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
