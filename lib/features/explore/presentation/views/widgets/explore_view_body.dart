import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:spark/core/utils/assets_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/custom_search_field.dart';
import 'package:spark/features/explore/presentation/controllers/get_search_result_controller.dart';
import 'package:spark/features/explore/presentation/views/widgets/movies_search_section.dart';
import 'package:spark/features/explore/presentation/views/widgets/people_search_section.dart';
import 'package:spark/features/explore/presentation/views/widgets/search_result_list.dart';
import 'package:spark/features/explore/presentation/views/widgets/tv_show_search_section.dart';

class ExploreViewBody extends StatelessWidget {
  const ExploreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final getSearchResultController = Get.find<GetSearchResultController>();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          controller: getSearchResultController.scrollController,
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 30,
              ),
            ),
            SliverToBoxAdapter(
              child: Text(
                StringsManager.explore,
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
                StringsManager.exploreDescription,
                style: StylesManager.styleLatoRegular14(context)
                    .copyWith(color: Colors.grey),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            const SliverAppBar(
              flexibleSpace: PreferredSize(
                preferredSize: Size.fromHeight(kToolbarHeight),
                child: CustomSearchField(),
              ),
              pinned: true,
              floating: true,
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              surfaceTintColor: Colors.transparent,
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverToBoxAdapter(
              child: Obx(
                () => getSearchResultController.defaultWidget.isTrue
                    ? const Column(
                        children: [
                          MoviesSearchSection(),
                          SizedBox(
                            height: 30,
                          ),
                          TvShowSearchSection(),
                          SizedBox(
                            height: 30,
                          ),
                          PeopleSearchSection(),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      )
                    : GetBuilder<GetSearchResultController>(
                        builder: (getSearchResultController) {
                          return SearchResultList(
                            shows: getSearchResultController.shows,
                          );
                        },
                      ),
              ),
            ),
            SliverToBoxAdapter(
              child: Obx(
                () {
                  if (getSearchResultController.paginationLoading.isTrue) {
                    return Center(
                      child: Lottie.asset(
                        Assets.assetsAnimationsMovieLoading,
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.width * 0.5,
                      ),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
