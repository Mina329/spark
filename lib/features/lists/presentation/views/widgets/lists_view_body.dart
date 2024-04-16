import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/custom_empty_widget.dart';
import 'package:spark/core/widgets/custom_error_widget.dart';
import 'package:spark/features/lists/presentation/controllers/get_user_lists_controller.dart';
import 'package:spark/features/lists/presentation/views/widgets/create_new_list_button.dart';
import 'package:spark/features/lists/presentation/views/widgets/lists_item.dart';
import 'package:spark/features/lists/presentation/views/widgets/lists_view_shimmer.dart';

class ListsViewBody extends StatelessWidget {
  const ListsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final GetUserListsController getUserListsController =
        Get.find<GetUserListsController>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 70,
                ),
              ),
              SliverToBoxAdapter(
                child: Text(
                  StringsManager.lists,
                  style: StylesManager.styleLatoBold34(context),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 10,
                ),
              ),
              SliverToBoxAdapter(
                child: Text(
                  StringsManager.listsDescription,
                  style: StylesManager.styleLatoRegular14(context).copyWith(
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colors.grey[800]
                          : Colors.grey),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 10,
                ),
              ),
              Obx(
                () {
                  if (getUserListsController.loading.isTrue) {
                    return const SliverToBoxAdapter(
                      child: ListsViewShimmer(),
                    );
                  } else {
                    if (getUserListsController.error) {
                      return const SliverFillRemaining(
                        fillOverscroll: false,
                        hasScrollBody: false,
                        child: Center(
                          child: CustomErrorWidget(),
                        ),
                      );
                    } else {
                      if (getUserListsController.lists.isEmpty) {
                        return const SliverFillRemaining(
                          hasScrollBody: false,
                          fillOverscroll: false,
                          child: Center(
                            child: CustomEmptyWidget(),
                          ),
                        );
                      } else {
                        return SliverList.builder(
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: ListsItem(
                              index: index,
                            ),
                          ),
                          itemCount: getUserListsController.lists.length,
                        );
                      }
                    }
                  }
                },
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 70,
                ),
              ),
            ],
          ),
          const Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: CreateNewListButton(),
          ),
        ],
      ),
    );
  }
}
