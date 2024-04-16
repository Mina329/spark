import 'package:flutter/material.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/lists_cover_widget.dart';

class ExploreItem extends StatelessWidget {
  const ExploreItem(
      {super.key,
      required this.exploreItemTitle,
      required this.exploreItemBanners});
  final String exploreItemTitle;
  final List<String> exploreItemBanners;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.light
            ? Colors.white
            : Colors.grey[800],
        borderRadius: BorderRadius.circular(5),
        border: Theme.of(context).brightness == Brightness.light
            ? Border.all(color: ColorManager.primaryColor)
            : null,
      ),
      width: MediaQuery.of(context).size.width * 0.7,
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 10),
      child: Column(
        children: [
          SizedBox(
            height: (MediaQuery.of(context).size.width * 0.7 - 30) * 9 / 16,
            child: ListsCoverWidget(
              widgetWidth: MediaQuery.of(context).size.width * 0.7 - 100,
              banners: exploreItemBanners,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            exploreItemTitle,
            style: StylesManager.styleLatoBold20(context),
          )
        ],
      ),
    );
  }
}
