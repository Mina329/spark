import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/assets_manager.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/core/widgets/lists_cover_widget.dart';
import 'package:spark/features/lists/domain/entities/list_entity.dart';
import 'package:spark/features/lists/presentation/controllers/get_user_lists_controller.dart';

class ListsItem extends StatelessWidget {
  const ListsItem({
    super.key,
    required this.listEntity,
    required this.index,
  });
  final ListEntity listEntity;
  final int index;
  @override
  Widget build(BuildContext context) {
    final GetUserListsController getUserListsController =
        Get.find<GetUserListsController>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        listEntity.shows != null && listEntity.shows!.isNotEmpty
            ? GestureDetector(
                onTap: () => Get.toNamed(
                  AppRouter.kShowsSectionView,
                  arguments: {
                    'title': listEntity.title,
                    'showType': ShowType.Movies_TV,
                    'sectionType': SectionType.None,
                    'showsList': listEntity.shows
                  },
                  preventDuplicates: false,
                ),
                child: ListsCoverWidget(
                  widgetWidth: MediaQuery.of(context).size.width - 40,
                  banners: getUserListsController.banners[index],
                ),
              )
            : AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: ColorManager.primaryColor,
                    ),
                  ),
                  width: MediaQuery.of(context).size.width - 40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        Assets.assetsImagesAddMovie,
                        width: MediaQuery.of(context).size.width / 3,
                      ),
                      Text(
                        StringsManager.addSomeShowsToTheList,
                        style: StylesManager.styleLatoBold20(context),
                      )
                    ],
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
              listEntity.title ?? '',
              style: StylesManager.styleLatoBold20(context),
            ),
            Text(
              listEntity.shows != null && listEntity.shows!.isNotEmpty
                  ? '${listEntity.shows!.length} Shows'
                  : '',
              style: StylesManager.styleLatoRegular16(context)
                  .copyWith(color: Colors.grey),
            ),
          ],
        )
      ],
    );
  }
}
