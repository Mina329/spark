import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:spark/features/home/data/data_sources/dummy_data.dart';

class ShowImage extends StatelessWidget {
  const ShowImage({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 27 / 40,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: CachedNetworkImageProvider(
              showsImages[index],
            ),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
