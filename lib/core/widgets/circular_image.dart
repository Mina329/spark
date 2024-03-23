import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:spark/core/utils/assets_manager.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.width * 0.3,
      child: ClipOval(
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          placeholder: (context, url) => Center(
            child: Lottie.asset(Assets.assetsAnimationsMovieLoading),
          ),
          errorWidget: (context, url, error) => Center(
            child: Image.asset(
              Assets.assetsImagesTv,
              height: 80,
              width: 80,
            ),
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
