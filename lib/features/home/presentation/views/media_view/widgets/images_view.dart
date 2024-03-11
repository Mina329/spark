import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/widgets/custom_appbar.dart';

class ImagesView extends StatelessWidget {
  const ImagesView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomAppBar(
              sectionName: StringsManager.images,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.0,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => Get.dialog(
                    Dialog(
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://image.tmdb.org/t/p/original/ApitDfnYDwFNOPfyVuhW5ElWzhe.jpg',
                      ),
                    ),
                    barrierDismissible: true,
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: CachedNetworkImageProvider(
                          'https://image.tmdb.org/t/p/original/ePXuKdXZuJx8hHMNr2yM4jY2L7Z.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                );
              },
              childCount: 11,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
        ],
      ),
    );
  }
}
