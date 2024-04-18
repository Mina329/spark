import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:spark/core/utils/assets_manager.dart';
import 'package:spark/core/utils/color_manager.dart';

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
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(
              color: ColorManager.primaryColor,
            ),
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
