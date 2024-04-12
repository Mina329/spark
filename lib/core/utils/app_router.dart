import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:spark/core/bindings/auth_binding.dart';
import 'package:spark/core/bindings/email_verify_binding.dart';
import 'package:spark/core/bindings/forget_password_binding.dart';
import 'package:spark/core/bindings/improve_your_feed_binding.dart';
import 'package:spark/core/bindings/main_binding.dart';
import 'package:spark/core/bindings/media_binding.dart';
import 'package:spark/core/bindings/onboarding_binding.dart';
import 'package:spark/core/bindings/person_details_binding.dart';
import 'package:spark/core/bindings/season_details_binding.dart';
import 'package:spark/core/bindings/section_binding.dart';
import 'package:spark/core/bindings/settings_binding.dart';
import 'package:spark/core/bindings/show_bimding.dart';
import 'package:spark/core/bindings/show_details_binding.dart';
import 'package:spark/core/bindings/splash_binding.dart';
import 'package:spark/features/auth/presentation/views/auth_view/auth_view.dart';
import 'package:spark/features/auth/presentation/views/email_verify_view/email_verify_view.dart';
import 'package:spark/features/auth/presentation/views/forget_password_view/forget_password_view.dart';
import 'package:spark/features/auth/presentation/views/improve_your_feeds_view/improve_your_feeds_view.dart';
import 'package:spark/features/home/presentation/views/media_view/media_view.dart';
import 'package:spark/features/home/presentation/views/person_details_view/person_details_view.dart';
import 'package:spark/features/home/presentation/views/season_details_view/season_details_view.dart';
import 'package:spark/features/home/presentation/views/section_view/section_view.dart';
import 'package:spark/features/home/presentation/views/show_details_view/show_details_view.dart';
import 'package:spark/features/home/presentation/views/show_view/show_view.dart';
import 'package:spark/features/main/presentation/view/main_view.dart';
import 'package:spark/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:spark/features/profile/presentation/views/settings_view/settings_view.dart';
import 'package:spark/features/splash/presentation/views/splash_view.dart';

class AppRouter {
  static const kSplashView = '/';
  static const kOnboardingView = '/onboarding';
  static const kAuthView = '/auth';
  static const kForgetPasswordView = '/forgetpassword';
  static const kEmailVerifyView = '/emailverify';
  static const kImproveYourFeedsView = '/improveyourfeeds';
  static const kMainView = '/main';
  static const kShowsSectionView = '/showssection';
  static const kShowDetailsView = '/showdetails';
  static const kPersonDetailsView = '/persondetails';
  static const kMediaView = '/media';
  static const kSettingsView = '/settings';
  static const kSeasonDetailsView = '/seasondetails';
  static const kShowView = '/show';

  static List<GetPage<dynamic>>? getPages = [
    GetPage(
      name: kSplashView,
      page: () => const SplashView(),
      binding: SplashBinding(),
      transition: Transition.fadeIn,
      curve: Curves.easeInOut,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: kOnboardingView,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
      transition: Transition.fadeIn,
      curve: Curves.easeInOut,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: kAuthView,
      page: () => const AuthView(),
      binding: AuthBinding(),
      transition: Transition.fadeIn,
      curve: Curves.easeInOut,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: kForgetPasswordView,
      page: () => const ForgetPasswordView(),
      binding: ForgetPasswordBinding(),
      transition: Transition.fadeIn,
      curve: Curves.easeInOut,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: kEmailVerifyView,
      page: () => const EmailVerifyView(),
      binding: EmailVerifyBinding(),
      transition: Transition.fadeIn,
      curve: Curves.easeInOut,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: kImproveYourFeedsView,
      page: () => const ImproveYourFeedsView(),
      binding: ImproveYourFeedsBinding(),
      transition: Transition.fadeIn,
      curve: Curves.easeInOut,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: kMainView,
      page: () => const MainView(),
      binding: MainBinding(),
      transition: Transition.fadeIn,
      curve: Curves.easeInOut,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: kShowsSectionView,
      page: () => const ShowsSectionView(),
      binding: SectionBinding(),
      preventDuplicates: false,
      transition: Transition.fadeIn,
      curve: Curves.easeInOut,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: kShowDetailsView,
      page: () => const ShowDetailsView(),
      binding: ShowDetailsBinding(),
      preventDuplicates: false,
      transition: Transition.fadeIn,
      curve: Curves.easeInOut,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: kPersonDetailsView,
      page: () => const PersonDetailsView(),
      binding: PersonDetailsBinding(),
      transition: Transition.fadeIn,
      curve: Curves.easeInOut,
      transitionDuration: const Duration(milliseconds: 500),
      preventDuplicates: false,
    ),
    GetPage(
      name: kMediaView,
      page: () => const MediaView(),
      binding: MediaBinding(),
      transition: Transition.fadeIn,
      curve: Curves.easeInOut,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: kSettingsView,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
      transition: Transition.fadeIn,
      curve: Curves.easeInOut,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: kSeasonDetailsView,
      page: () => const SeasonDetailsView(),
      transition: Transition.fadeIn,
      curve: Curves.easeInOut,
      transitionDuration: const Duration(milliseconds: 500),
      binding: SeasonDetailsBinding(),
    ),
    GetPage(
      name: kShowView,
      page: () => const ShowView(),
      transition: Transition.fadeIn,
      curve: Curves.easeInOut,
      transitionDuration: const Duration(milliseconds: 500),
      binding: ShowBinding(),
    ),
  ];
}
