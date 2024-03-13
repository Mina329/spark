import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: const BoxDecoration(
            color: ColorManager.primaryColor,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            FontAwesomeIcons.solidUser,
            color: Colors.black,
            size: 50,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Mina Emil',
          style: StylesManager.styleLatoBold25(context),
        )
      ],
    );
  }
}
