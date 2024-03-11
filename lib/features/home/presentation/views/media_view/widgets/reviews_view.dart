import 'package:flutter/material.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/widgets/custom_appbar.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/review_card.dart';

class ReviewsView extends StatelessWidget {
  const ReviewsView({super.key});

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
              sectionName: StringsManager.reviews,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          SliverList.builder(
            itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: ReviewCard(),
            ),
            itemCount: 10,
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
