import 'package:flutter/material.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/auth/presentation/views/forget_password_view/widgets/back_button.dart';
import 'package:spark/features/auth/presentation/views/forget_password_view/widgets/password_reset_text_form_field.dart';
import 'package:spark/features/auth/presentation/views/forget_password_view/widgets/send_button.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 50,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Back(),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            StringsManager.sendPasswordResendEmail,
            style: StylesManager.styleLatoBold25(context),
          ),
          const SizedBox(
            height: 20,
          ),
          const PasswordResetTextFormField(),
          const Spacer(),
          const SendButton(),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
