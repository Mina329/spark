import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spark/core/utils/styles_manager.dart';

Positioned buildCoverImage(String imageUrl) {
  return Positioned(
    top: 0,
    left: 0,
    right: 0,
    bottom: 40,
    child: CachedNetworkImage(
      imageUrl: imageUrl,
      errorWidget: (context, url, error) => Center(
        child: Icon(
          FontAwesomeIcons.circleExclamation,
          color: Colors.red,
          size: getResponsiveFontSize(
            context,
            fontSize: 50,
          ),
        ),
      ),
      fit: BoxFit.fill,
    ),
  );
}
