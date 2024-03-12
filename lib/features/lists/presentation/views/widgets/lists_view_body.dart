import 'package:flutter/material.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/lists/presentation/views/widgets/create_new_list_button.dart';
import 'package:spark/features/lists/presentation/views/widgets/lists_item.dart';

class ListsViewBody extends StatelessWidget {
  const ListsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
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
                  style: StylesManager.styleLatoRegular14(context)
                      .copyWith(color: Colors.grey),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 10,
                ),
              ),
              SliverList.builder(
                itemBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: ListsItem(),
                ),
                itemCount: 5,
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
