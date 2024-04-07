import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/explore/domain/entities/search_result_entity.dart';
import 'package:spark/features/explore/domain/usecases/get_search_result_usecase.dart';

class GetSearchResultController extends GetxController {
  List<SearchResultEntity> shows = [];
  TextEditingController? controller;
  final GetSearchResultUsecase getSearchResultUsecase;
  RxBool defaultWidget = true.obs;
  GetSearchResultController({required this.getSearchResultUsecase});
  int page = 1;
  String savedQuery = '';
  RxBool showSuffixIcon = false.obs;
  @override
  void onInit() {
    super.onInit();
    controller = TextEditingController();
  }

  void getSearchResult() async {
    var result = await getSearchResultUsecase.execute((page, savedQuery));
    result.fold(
      (failure) => Get.snackbar(
        StringsManager.operationFailed,
        failure.message,
        backgroundColor: Colors.red.withOpacity(0.5),
      ),
      (showsList) {
        page++;
        shows.addAll(showsList);
        update();
      },
    );
  }

  void searchFirstQuery(String query) {
    page = 1;
    shows = [];
    savedQuery = query;
    defaultWidget.value = false;
    getSearchResult();
  }

  void onChangedTextField(String? value) {
    if (value != null && value.isNotEmpty) {
      showSuffixIcon.value = true;
      searchFirstQuery(value);
    } else {
      showSuffixIcon.value = false;
      defaultWidget.value = true;
    }
  }
}
