import 'package:flutter/material.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/auth/presentation/views/improve_your_feeds_view/widgets/all_set_button.dart';
import 'package:spark/features/auth/presentation/views/improve_your_feeds_view/widgets/genres_list.dart';
import 'package:spark/features/auth/presentation/views/improve_your_feeds_view/widgets/skip_to_home_widget.dart';

class ImproveYourFeedsViewBody extends StatelessWidget {
  const ImproveYourFeedsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 50,
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SkipToHomeWidget(),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 50,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              StringsManager.improveYourFeed,
              style: StylesManager.styleLatoBold34(context),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              StringsManager.improveYourFeedDescription,
              style: StylesManager.styleLatoRegular18(context),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 50,
          ),
        ),
        const SliverToBoxAdapter(
          child: GenresList(),
        ),
        const SliverFillRemaining(
          hasScrollBody: false,
          child: AllSetButton(),
        )
      ],
    );
  }
}
