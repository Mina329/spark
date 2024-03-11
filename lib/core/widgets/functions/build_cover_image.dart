import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Positioned buildCoverImage(String imageUrl) {
  return Positioned(
    top: 0,
    left: 0,
    right: 0,
    bottom: 40,
    child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: CachedNetworkImageProvider(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
