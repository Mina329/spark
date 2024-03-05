import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/explore/presentation/views/explore_view.dart';
import 'package:spark/features/home/presentation/views/home_view.dart';
import 'package:spark/features/lists/presentation/views/lists_view.dart';
import 'package:spark/features/main/presentation/controllers/bottom_navigation_bar_controller.dart';
import 'package:spark/features/profile/presentation/views/profile_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBarController bottomNavigationBarController =
        Get.find<BottomNavigationBarController>();
    return PersistentTabView(
      context,
      controller: bottomNavigationBarController.controller,
      screens: _buildScreens(),
      items: _buildNavBarsItems(context),
      confineInSafeArea: true,
      backgroundColor: ColorManager.darkScaffoldColor,
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style6,
    );
  }

  List<PersistentBottomNavBarItem> _buildNavBarsItems(BuildContext context) {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(FontAwesomeIcons.house),
        title: StringsManager.home,
        activeColorPrimary: ColorManager.primaryColor,
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(FontAwesomeIcons.list),
        title: StringsManager.lists,
        activeColorPrimary: ColorManager.primaryColor,
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(FontAwesomeIcons.circlePlay),
        title: StringsManager.explore,
        activeColorPrimary: ColorManager.primaryColor,
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(FontAwesomeIcons.user),
        title: StringsManager.profile,
        activeColorPrimary: ColorManager.primaryColor,
        inactiveColorPrimary: Colors.white,
      ),
    ];
  }

  List<Widget> _buildScreens() {
    return [
      const HomeView(),
      const ListsView(),
      const ExploreView(),
      const ProfileView(),
    ];
  }
}
