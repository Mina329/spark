import 'package:flutter/material.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/auth/presentation/views/widgets/register_button.dart';
import 'package:spark/features/auth/presentation/views/widgets/sign_up_form.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          StringsManager.register,
          style: StylesManager.styleLatoBold34(context),
        ),
        const SizedBox(
          height: 50,
        ),
        const SignUpForm(),
        const SizedBox(
          height: 25,
        ),
        const RegisterButton()
      ],
    );
  }
}
