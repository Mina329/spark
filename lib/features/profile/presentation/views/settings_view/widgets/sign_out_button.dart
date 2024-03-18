import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';

class SignOutButton extends StatelessWidget {
  const SignOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          FirebaseAuth.instance.signOut();
          GoogleSignIn googleSignIn = GoogleSignIn();
          googleSignIn.signOut();
          Get.offAllNamed(AppRouter.kAuthView);
        },
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
