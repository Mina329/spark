import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/features/home/presentation/views/section_view/widgets/section_view_body.dart';

class ShowsSectionView extends StatelessWidget {
  const ShowsSectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SectionViewBody(),
          Positioned(
            top: 40,
            left: 20,
            child: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(
                FontAwesomeIcons.angleLeft,
                color: ColorManager.primaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
