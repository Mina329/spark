import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/presentation/controllers/show_details_controllers/show_details_controller.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/review_card.dart';

class ShowReviewsTab extends StatelessWidget {
  const ShowReviewsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final ShowDetailsController showDetailsController =
        Get.find<ShowDetailsController>();
    return showDetailsController.showResultEntity.review != null &&
            showDetailsController.showResultEntity.review!.isNotEmpty
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    StringsManager.reviews,
                    style: StylesManager.styleLatoBold20(context),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    showDetailsController.showResultEntity.review?.length
                            .toString() ??
                        '',
                    style: StylesManager.styleLatoBold20(context)
                        .copyWith(color: Colors.grey),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => Get.toNamed(
                      AppRouter.kMediaView,
                      arguments: {
                        'mediaType': MediaType.Reviews,
                      },
                    ),
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
              Column(
                children: List.generate(
                  showDetailsController.showResultEntity.review!.length > 5
                      ? 5
                      : showDetailsController.showResultEntity.review!.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: ReviewCard(
                      reviewEntity:
                          showDetailsController.showResultEntity.review![index],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          )
        : const SizedBox();
  }
}
