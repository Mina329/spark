import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ShowImage extends StatelessWidget {
  const ShowImage({
    super.key,
    required this.index, required this.images,
  });
  final int index;
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 27 / 40,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: CachedNetworkImageProvider(
              images[index],
            ),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
