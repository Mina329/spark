import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ListsCoverWidget extends StatelessWidget {
  const ListsCoverWidget({
    super.key,
    required this.widgetWidth,
    required this.banners,
  });
  final double widgetWidth;
  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Stack(
          children: List.generate(
            banners.length,
            (index) => Positioned(
              left: (widgetWidth) * 0.25 * index,
              top: 0,
              bottom: 0,
              child: AspectRatio(
                aspectRatio: 27 / 40,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 5,
                      ),
                    ],
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(
                        banners[index],
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          ).reversed.toList(),
        ),
      ),
    );
  }
}
