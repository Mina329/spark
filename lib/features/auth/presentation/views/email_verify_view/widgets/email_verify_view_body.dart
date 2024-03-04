import 'package:flutter/material.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/back_button.dart';
import 'package:spark/features/auth/presentation/views/email_verify_view/widgets/email_verification_send_button.dart';

class EmailVerifyViewBody extends StatelessWidget {
  const EmailVerifyViewBody({super.key});

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
          const Spacer(),
          const EmailVerificationSendButton(),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
