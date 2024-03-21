import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  bool search = false;
  AnimationController? animationController;
  Animation<Offset>? slideAnimation;

  @override
  void onInit() {
    super.onInit();
    _initSearchAnimation();
  }

  void _initSearchAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    slideAnimation = Tween<Offset>(
      begin: const Offset(0, -0.1),
      end: Offset.zero,
    ).animate(
        CurvedAnimation(parent: animationController!, curve: Curves.easeInOut));
  }

  void Function()? toggleSearch() {
    search = !search;
    if (search) {
      animationController?.forward();
    } else {
      animationController?.reverse();
    }
    update();
    return null;
  }

  @override
  void onClose() {
    animationController?.dispose();
    super.onClose();
  }
}
