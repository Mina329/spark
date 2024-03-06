import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spark/core/utils/styles_manager.dart';

class ShowCard extends StatelessWidget {
  const ShowCard({
    super.key,
    required this.imageUrl,
    required this.showYear,
    required this.showRating,
  });
  final String imageUrl;
  final String showYear;
  final String showRating;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.3,
      ),
      child: AspectRatio(
        aspectRatio: 0.7,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 0.84,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(
                      imageUrl,
                    ),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    showYear,
                    style: StylesManager.styleLatoRegular14(context),
                  ),
                ),
                const Spacer(),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    showRating,
                    style: StylesManager.styleLatoRegular14(context),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Icon(
                    FontAwesomeIcons.solidStar,
                    color: const Color(0xFFFFD700),
                    size: getResponsiveFontSize(context, fontSize: 15),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
