import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/show_card.dart';

class ShowSection extends StatelessWidget {
  const ShowSection({
    super.key,
    required this.sectionTitle,
    this.showAllOnTap,
    required this.items,
  });
  final String sectionTitle;
  final void Function()? showAllOnTap;
  final List<dynamic> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Text(
              sectionTitle,
              style: StylesManager.styleLatoBold20(context),
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
          child: AnimationLimiter(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) =>
                  AnimationConfiguration.staggeredList(
                position: index,
                duration: const Duration(milliseconds: 375),
                child: SlideAnimation(
                  horizontalOffset: 50.0,
                  child: FadeInAnimation(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: ShowCard(
                        show: items[index],
                      ),
                    ),
                  ),
                ),
              ),
              itemCount: items.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
      ],
    );
  }
}
