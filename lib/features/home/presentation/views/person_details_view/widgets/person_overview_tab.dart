import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/custom_empty_widget.dart';
import 'package:spark/features/home/presentation/controllers/person_details_controller/get_person_details_controller.dart';

class PersonOverviewTab extends StatelessWidget {
  const PersonOverviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    final GetPersonDetailsController getPersonDetailsController =
        Get.find<GetPersonDetailsController>(
      tag:
          "${Get.arguments['id'].toString()}_${Get.arguments['showType'].toString()}",
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (getPersonDetailsController.personResultEntity?.biography != null &&
            getPersonDetailsController
                .personResultEntity!.biography!.isNotEmpty)
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                StringsManager.biography,
                style: StylesManager.styleLatoBold20(context),
              ),
              const SizedBox(
                height: 10,
              ),
              ExpandableText(
                getPersonDetailsController.personResultEntity?.biography ?? '',
                expandText: 'show more',
                collapseText: 'show less',
                expandOnTextTap: true,
                collapseOnTextTap: true,
                style: StylesManager.styleLatoRegular16(context)
                    .copyWith(color: Colors.grey),
                animation: true,
                maxLines: 5,
                linkColor: ColorManager.primaryColor,
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        if (getPersonDetailsController.personResultEntity?.birthDate != null ||
            getPersonDetailsController.personResultEntity?.birthLocation !=
                null)
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                StringsManager.birth,
                style: StylesManager.styleLatoBold20(context),
              ),
              const SizedBox(
                height: 10,
              ),
              if (getPersonDetailsController.personResultEntity?.birthDate !=
                  null)
                Text(
                  DateFormat('MMMM d, yyyy').format(getPersonDetailsController
                      .personResultEntity!.birthDate!),
                  style: StylesManager.styleLatoRegular16(context)
                      .copyWith(color: Colors.grey),
                ),
              if (getPersonDetailsController
                      .personResultEntity?.birthLocation !=
                  null)
                Text(
                  getPersonDetailsController.personResultEntity!.birthLocation!,
                  style: StylesManager.styleLatoRegular16(context)
                      .copyWith(color: Colors.grey),
                ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        if (getPersonDetailsController.personResultEntity?.deathDate != null)
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                StringsManager.death,
                style: StylesManager.styleLatoBold20(context),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                DateFormat('MMMM d, yyyy').format(
                    getPersonDetailsController.personResultEntity!.deathDate!),
                style: StylesManager.styleLatoRegular16(context)
                    .copyWith(color: Colors.grey),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        if ((getPersonDetailsController.personResultEntity?.biography == null ||
                getPersonDetailsController
                    .personResultEntity!.biography!.isEmpty) &&
            getPersonDetailsController.personResultEntity?.birthDate == null &&
            (getPersonDetailsController.personResultEntity?.birthLocation ==
                    null ||
                getPersonDetailsController
                    .personResultEntity!.birthLocation!.isEmpty) &&
            getPersonDetailsController.personResultEntity?.deathDate == null)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: CustomEmptyWidget(),
          ),
      ],
    );
  }
}
