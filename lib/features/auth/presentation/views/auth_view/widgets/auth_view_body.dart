import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/auth/presentation/controllers/auth_controller.dart';
import 'package:spark/features/auth/presentation/views/auth_view/widgets/already_have_account_widget.dart';
import 'package:spark/features/auth/presentation/views/auth_view/widgets/continue_as_guest_button.dart';
import 'package:spark/features/auth/presentation/views/auth_view/widgets/custom_login_provider_row.dart';
import 'package:spark/features/auth/presentation/views/auth_view/widgets/dont_have_account_widget.dart';
import 'package:spark/features/auth/presentation/views/auth_view/widgets/sign_in_widget.dart';
import 'package:spark/features/auth/presentation/views/auth_view/widgets/sign_up_widget.dart';

class AuthViewBody extends StatelessWidget {
  const AuthViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          ),
          const SliverToBoxAdapter(
            child: ContinueAsGuestButton(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          ),
          SliverToBoxAdapter(
            child: GetBuilder<AuthController>(
              builder: (authController) {
                return authController.login
                    ? const SignInWidget()
                    : const SignUpWidget();
              },
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
            ),
          ),
          SliverToBoxAdapter(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                StringsManager.orContinueWith,
                style: StylesManager.styleRobotoRegular16(context)
                    .copyWith(color: ColorManager.primaryColor),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomLoginProviderRow(),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: SizedBox(
              height: 100,
              child: GetBuilder<AuthController>(
                builder: (authController) {
                  return Center(
                    child: authController.login
                        ? const DontHaveAccountWidget()
                        : const AlreadyHaveAccountWidget(),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
