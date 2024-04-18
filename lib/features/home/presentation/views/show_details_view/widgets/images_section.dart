import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/assets_manager.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/core/widgets/functions/show_full_screen_image.dart';
import 'package:spark/features/home/domain/entities/image_entity.dart';

import '../../../../../../core/utils/app_router.dart';

class ImagesSection extends StatelessWidget {
  const ImagesSection({
    super.key,
    required this.images,
    required this.title,
  });
  final List<ImageEntity> images;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: StylesManager.styleLatoBold20(context),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              '${images.length}',
              style: StylesManager.styleLatoBold20(context).copyWith(
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colors.grey[800]
                      : Colors.grey),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () => Get.toNamed(
                AppRouter.kMediaView,
                arguments: {
                  'mediaType': MediaType.Images,
                  'mediaList': images,
                },
              ),
              child: Text(
                StringsManager.showAll,
                style: StylesManager.styleLatoRegular16(context)
                    .copyWith(color: ColorManager.primaryColor),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
          child: ListView.builder(
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(right: 15),
              child: GestureDetector(
                onTap: () => showFullScreenImage(context, images[index]),
                child: AspectRatio(
                  aspectRatio: images[index].aspectRatio!,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://image.tmdb.org/t/p/w342/${images[index].filePath}',
                      placeholder: (context, url) => FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Icon(
                          FontAwesomeIcons.film,
                          color: Colors.grey,
                          size: getResponsiveFontSize(context, fontSize: 60),
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
                ),
              ),
            ),
            itemCount: images.length > 10 ? 10 : images.length,
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }
}
