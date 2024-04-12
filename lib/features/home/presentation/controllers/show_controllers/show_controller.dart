import 'dart:async';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ShowController extends GetxController {
  WebViewController? controller;
  RxBool loading = true.obs;

  @override
  void onInit() {
    super.onInit();
    updateOrientationAndStatusBarInShowView();
    intializeWebViewController();
  }

  Future<void> updateOrientationAndStatusBarOnPop() async {
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  void intializeWebViewController() {
    final String url = Get.arguments['url'];
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(
        const Color(0x00000000),
      )
      ..loadRequest(Uri.parse(url))
      ..setNavigationDelegate(NavigationDelegate(
        onNavigationRequest: (request) => NavigationDecision.prevent,
      )).then((value) {
        loading.value = false;
      });
  }

  void updateOrientationAndStatusBarInShowView() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
    ]);
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: []);
  }
}
