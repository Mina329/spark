import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:spark/core/utils/assets_manager.dart';
import 'package:spark/core/utils/color_manager.dart';

class ListsCoverWidget extends StatelessWidget {
  const ListsCoverWidget({
    super.key,
    required this.widgetWidth,
    required this.banners,
  });
  final double widgetWidth;
  final List<String?> banners;
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
                      border: Border.all(
                        color: ColorManager.primaryColor,
                      ),
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://image.tmdb.org/t/p/w342/${banners[index]}',
                      errorWidget: (context, url, error) => Center(
                        child: Image.asset(
                          Assets.assetsImagesTv,
                          height: 80,
                          width: 80,
                        ),
                      ),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
          ).reversed.toList(),
        ),
      ),
    );
  }
}
