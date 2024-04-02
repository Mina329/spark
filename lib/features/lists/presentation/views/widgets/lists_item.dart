import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/assets_manager.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/core/widgets/lists_cover_widget.dart';
import 'package:spark/features/lists/presentation/controllers/delete_list_controller.dart';
import 'package:spark/features/lists/presentation/controllers/get_user_lists_controller.dart';

class ListsItem extends StatelessWidget {
  const ListsItem({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    final GetUserListsController getUserListsController =
        Get.find<GetUserListsController>();
    final DeleteListController deleteListController =
        Get.find<DeleteListController>();
    return Stack(
      children: [
        GestureDetector(
          onTap: getUserListsController.lists[index].shows != null &&
                  getUserListsController.lists[index].shows!.isNotEmpty
              ? () => Get.toNamed(
                    AppRouter.kShowsSectionView,
                    arguments: {
                      'title': getUserListsController.lists[index].title,
                      'showType': ShowType.Movies_TV,
                      'sectionType': SectionType.None,
                      'showsList': getUserListsController.lists[index].shows
                    },
                    preventDuplicates: false,
                  )
              : null,
          child: Container(
            decoration: BoxDecoration(
              color: Color.lerp(ColorManager.primaryColor, Colors.black, 0.6),
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getUserListsController.lists[index].shows != null &&
                        getUserListsController.lists[index].shows!.isNotEmpty
                    ? ListsCoverWidget(
                        widgetWidth: MediaQuery.of(context).size.width * 0.5,
                        banners: getUserListsController.banners[index],
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
                          width: MediaQuery.of(context).size.width * 0.5,
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
                      getUserListsController.lists[index].title ?? '',
                      style: StylesManager.styleLatoBold20(context),
                    ),
                    Text(
                      getUserListsController.lists[index].shows != null &&
                              getUserListsController
                                  .lists[index].shows!.isNotEmpty
                          ? '${getUserListsController.lists[index].shows!.length} Shows'
                          : '',
                      style: StylesManager.styleLatoRegular16(context)
                          .copyWith(color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 10,
          right: 5,
          child: PopupMenuButton(
            color: Color.lerp(ColorManager.primaryColor, Colors.black, 0.9),
            offset: Offset.fromDirection(1.25, 10),
            itemBuilder: (context) => [
              PopupMenuItem<String>(
                value: 'delete',
                child: Text(
                  StringsManager.delete,
                  style: StylesManager.styleLatoRegular18(context),
                ),
              ),
            ],
            onSelected: (selected) {
              if (selected == 'delete') {
                deleteListController
                    .deleteList(getUserListsController.lists[index].id);
              }
            },
            child: const Icon(
              FontAwesomeIcons.ellipsisVertical,
            ),
          ),
        )
      ],
    );
  }
}
