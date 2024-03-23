import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:spark/core/utils/assets_manager.dart';

Positioned buildCoverImage(String imageUrl) {
  return Positioned(
    top: 0,
    left: 0,
    right: 0,
    bottom: 40,
    child: CachedNetworkImage(
      imageUrl: imageUrl,
      errorWidget: (context, url, error) => Center(
        child: Image.asset(
              Assets.assetsImagesTv,
              height: 80,
              width: 80,
            ),
      ),
      fit: BoxFit.fill,
    ),
  );
}
