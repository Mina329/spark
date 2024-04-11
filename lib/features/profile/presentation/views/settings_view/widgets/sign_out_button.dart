import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/profile/presentation/controllers/settings_view_controller/sign_out_controller.dart';

class SignOutButton extends StatelessWidget {
  const SignOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final signOutController = Get.find<SignOutController>();
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        onPressed: signOutController.signOutUser,
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(
            Colors.red,
          ),
          overlayColor: MaterialStatePropertyAll(
            Color.lerp(Colors.red, Colors.white, 0.3),
          ),
        ),
        child: Text(
          StringsManager.signOut,
          style: StylesManager.styleLatoBold20(context)
              .copyWith(color: Colors.black),
        ),
      ),
    );
  }
}
