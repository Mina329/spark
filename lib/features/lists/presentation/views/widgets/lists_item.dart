import 'package:flutter/material.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/lists_cover_widget.dart';
import 'package:spark/features/home/data/data_sources/dummy_data.dart';

class ListsItem extends StatelessWidget {
  const ListsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListsCoverWidget(
          widgetWidth: MediaQuery.of(context).size.width - 40,
          banners: showsImages,
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'List title',
              style: StylesManager.styleLatoBold20(context),
            ),
            Text(
              '5 Shows',
              style: StylesManager.styleLatoRegular16(context)
                  .copyWith(color: Colors.grey),
            ),
          ],
        )
      ],
    );
  }
}
