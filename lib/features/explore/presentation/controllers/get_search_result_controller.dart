import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/explore/domain/entities/search_result_entity.dart';
import 'package:spark/features/explore/domain/usecases/get_search_result_usecase.dart';

class GetSearchResultController extends GetxController {
  GetSearchResultController({required this.getSearchResultUsecase});

  List<SearchResultEntity> shows = [];
  TextEditingController? controller;
  final GetSearchResultUsecase getSearchResultUsecase;
  late final ScrollController scrollController;
  RxBool defaultWidget = true.obs;
  int page = 1;
  String savedQuery = '';
  RxBool showSuffixIcon = false.obs;
  RxBool paginationLoading = false.obs;
  bool error = false;

  @override
  void onInit() {
    super.onInit();
    scrollController = ScrollController()..addListener(_onScroll);
    controller = TextEditingController();
  }

  void getSearchResult() async {
    var result = await getSearchResultUsecase.execute((page, savedQuery));
    result.fold(
      (failure) {
        Get.snackbar(
          StringsManager.operationFailed,
          failure.message,
          backgroundColor: Colors.red.withOpacity(0.5),
        );
        error = true;
      },
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
    defaultWidget.value = false;
    getSearchResult();
  }

  void onChangedTextField(String? value) {
    savedQuery = value ?? '';
    if (value != null && value.isNotEmpty) {
      showSuffixIcon.value = true;
      searchFirstQuery(value);
    } else {
      showSuffixIcon.value = false;
      defaultWidget.value = true;
    }
  }

  void _onScroll() {
    if (!paginationLoading.value &&
        scrollController.position.pixels >=
            scrollController.position.maxScrollExtent &&
        savedQuery.isNotEmpty) {
      if (paginationLoading.value) return;
      paginationLoading.value = true;
      getSearchResult();
      paginationLoading.value = false;
    }
  }
}
