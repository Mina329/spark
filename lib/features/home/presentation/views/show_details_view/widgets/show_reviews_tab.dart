import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/custom_empty_widget.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/presentation/controllers/show_details_controllers/show_details_controller.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/review_card.dart';

class ShowReviewsTab extends StatelessWidget {
  const ShowReviewsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final ShowDetailsController showDetailsController = Get.find<
            ShowDetailsController>(
        tag:
            "${Get.arguments['id'].toString()}_${Get.arguments['showType'].toString()}");
    return showDetailsController.showResultEntity?.review != null &&
            showDetailsController.showResultEntity!.review!.isNotEmpty
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
                    showDetailsController.showResultEntity?.totalReviewsNumber
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
                        'mediaList':
                            showDetailsController.showResultEntity!.review!,
                        'showId': showDetailsController.showResultEntity!.id,
                        'showType':
                            showDetailsController.showResultEntity!.showType,
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
              AnimationLimiter(
                child: Column(
                    children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(milliseconds: 375),
                  childAnimationBuilder: (widget) => SlideAnimation(
                    verticalOffset: 50.0,
                    child: FadeInAnimation(
                      child: widget,
                    ),
                  ),
                  children: List.generate(
                    showDetailsController.showResultEntity!.review!.length > 5
                        ? 5
                        : showDetailsController
                            .showResultEntity!.review!.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: ReviewCard(
                        reviewEntity: showDetailsController
                            .showResultEntity!.review![index],
                      ),
                    ),
                  ),
                )),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          )
        : const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: CustomEmptyWidget(),
          );
  }
}
