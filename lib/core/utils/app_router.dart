import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:spark/core/bindings/auth_binding.dart';
import 'package:spark/core/bindings/forget_password_binding.dart';
import 'package:spark/core/bindings/onboarding_binding.dart';
import 'package:spark/core/bindings/splash_binding.dart';
import 'package:spark/features/auth/presentation/views/auth_view/auth_view.dart';
import 'package:spark/features/auth/presentation/views/forget_password_view/forget_password_view.dart';
import 'package:spark/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:spark/features/splash/presentation/views/splash_view.dart';

class AppRouter {
  static const kSplashView = '/';
  static const kOnboardingView = '/onboarding';
  static const kAuthView = '/auth';
  static const kForgetPasswordView = '/forgetpassword';

  static List<GetPage<dynamic>>? getPages = [
    GetPage(
      name: kSplashView,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: kOnboardingView,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: kAuthView,
      page: () => const AuthView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: kForgetPasswordView,
      page: () => const ForgetPasswordView(),
      binding: ForgetPasswordBinding(),
    ),
  ];
}
