import 'package:flutter/material.dart';
import 'package:spark/core/widgets/custom_appbar.dart';
import 'package:spark/features/home/data/data_sources/dummy_data.dart';
import 'package:spark/features/home/presentation/views/section_view/widgets/custom_show_list_view_item.dart';

class ShowsSection extends StatelessWidget {
  const ShowsSection({
    super.key,
    required this.sectionName,
  });

  final String sectionName;

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
          SliverToBoxAdapter(
            child: CustomAppBar(sectionName: sectionName),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Column(
                children: [
                  CustomShowListViewItem(
                    index: index,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  if (index != showsImages.length - 1) const Divider(),
                  if (index != showsImages.length - 1)
                    const SizedBox(
                      height: 10,
                    ),
                ],
              ),
              childCount: showsImages.length,
            ),
          ),
        ],
      ),
    );
  }
}
