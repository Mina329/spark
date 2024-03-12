import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/home/data/data_sources/dummy_data.dart';

class ListsItem extends StatelessWidget {
  const ListsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Stack(
              children: List.generate(
                5,
                (index) => Positioned(
                  left: (MediaQuery.of(context).size.width - 40) * 0.25 * index,
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
                        image: DecorationImage(
                          image: CachedNetworkImageProvider(
                            showsImages[index],
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ).reversed.toList(),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'List title',
              style: StylesManager.styleLatoBold20(context),
            ),
            Text(
              '5 Shows',
              style: StylesManager.styleLatoRegular16(context)
                  .copyWith(color: Colors.grey),
            ),
          ],
        )
      ],
    );
  }
}
