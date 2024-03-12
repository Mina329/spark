import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/enums.dart';

import '../../../../../../core/utils/app_router.dart';

class ImagesSection extends StatelessWidget {
  const ImagesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              StringsManager.images,
              style: StylesManager.styleLatoBold20(context),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              '105',
              style: StylesManager.styleLatoBold20(context)
                  .copyWith(color: Colors.grey),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () => Get.toNamed(
                AppRouter.kMediaView,
                arguments: {
                  'mediaType': MediaType.Images,
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
              child: AspectRatio(
                aspectRatio: 1.7,
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: CachedNetworkImageProvider(
                        'https://image.tmdb.org/t/p/original/9faGSFi5jam6pDWGNd0p8JcJgXQ.jpg',
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            itemCount: 5,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
