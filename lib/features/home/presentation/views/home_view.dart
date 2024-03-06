import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/features/home/presentation/controllers/home_controller.dart';
import 'package:spark/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => HomeController());
    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}
