import 'package:flutter/material.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/auth/presentation/views/auth_view/widgets/login_button.dart';
import 'package:spark/features/auth/presentation/views/auth_view/widgets/sign_in_form.dart';

class SignInWidget extends StatelessWidget {
  const SignInWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          StringsManager.welcome,
          style: StylesManager.styleLatoBold34(context),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          StringsManager.pleaseSignIn,
          style: StylesManager.styleLatoRegular18(context),
        ),
        const SizedBox(
          height: 50,
        ),
        const SignInForm(),
        const SizedBox(
          height: 25,
        ),
        const LoginButton()
      ],
    );
  }
}
