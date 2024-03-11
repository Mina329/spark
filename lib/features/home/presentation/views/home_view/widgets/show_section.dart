import 'package:flutter/material.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/home/data/data_sources/dummy_data.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/show_card.dart';

class ShowSection extends StatelessWidget {
  const ShowSection({
    super.key,
    required this.sectionTitle,
    this.showAllOnTap,
  });
  final String sectionTitle;
  final void Function()? showAllOnTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Text(
              sectionTitle,
              style: StylesManager.styleLatoBold16(context),
            ),
            const Spacer(),
            GestureDetector(
              onTap: showAllOnTap,
              child: Text(
                StringsManager.showAll,
                style: StylesManager.styleLatoRegular16(context)
                    .copyWith(color: ColorManager.primaryColor),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width * 0.3 / 0.6,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(right: 15),
              child: ShowCard(
                imageUrl: showsImages[index],
                showYear: showsYear[index],
                showRating: showsRating[index],
              ),
            ),
            itemCount: showsImages.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
