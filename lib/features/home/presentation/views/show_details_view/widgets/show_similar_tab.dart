import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/home/presentation/controllers/show_details_controllers/show_details_controller.dart';
import 'package:spark/features/home/presentation/views/home_view/widgets/show_card.dart';

class ShowSimilarTab extends StatelessWidget {
  const ShowSimilarTab({super.key});

  @override
  Widget build(BuildContext context) {
    final ShowDetailsController showDetailsController =
        Get.find<ShowDetailsController>(tag: "${Get.arguments['id'].toString()}_${Get.arguments['showType'].toString()}");
    return showDetailsController.showResultEntity?.similarShows != null &&
            showDetailsController.showResultEntity!.similarShows!.isNotEmpty
        ? Column(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Text(
                        StringsManager.moreLikeThis,
                        style: StylesManager.styleLatoBold20(context),
                      ),
                      const Spacer(),
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
                          show: showDetailsController
                                  .showResultEntity?.similarShows?[index] ??
                              [],
                        ),
                      ),
                      itemCount: showDetailsController
                              .showResultEntity?.similarShows?.length ??
                          0,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              )
            ],
          )
        : const SizedBox();
  }
}
