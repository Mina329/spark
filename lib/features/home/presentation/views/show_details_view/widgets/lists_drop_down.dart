import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/list_button.dart';

class ListsDropDown extends StatelessWidget {
  const ListsDropDown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: PopupMenuButton(
        color: Color.lerp(ColorManager.primaryColor, Colors.black, 0.9),
        offset: Offset.fromDirection(1.25, 40),
        itemBuilder: (context) => [
          PopupMenuItem<String>(
            value: 'List 1',
            child: Text(
              'List 1',
              style: StylesManager.styleLatoRegular18(context),
            ),
          ),
          PopupMenuItem<String>(
            value: 'List 2',
            child: Text(
              'List 2',
              style: StylesManager.styleLatoRegular18(context),
            ),
          ),
        ],
        onSelected: (selected) {
          print(selected);
        },
        child: ListButton(
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                FontAwesomeIcons.plus,
              ),
              Text(
                StringsManager.addToMyList,
                style: StylesManager.styleLatoRegular18(context),
              ),
              const Icon(
                FontAwesomeIcons.angleDown,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
