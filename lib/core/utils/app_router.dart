import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:spark/core/bindings/splash_binding.dart';
import 'package:spark/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:spark/features/splash/presentation/views/splash_view.dart';

class AppRouter {
  static const kSplashView = '/';
  static const kOnboardingView = '/onboarding';

  static List<GetPage<dynamic>>? getPages = [
    GetPage(
      name: kSplashView,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: kOnboardingView,
      page: () => const OnboardingView(),
    ),
  ];
}
