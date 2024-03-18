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
        onPressed: () async {
          // Create an instance of FirebaseAuth and GoogleSignIn
          final FirebaseAuth auth = FirebaseAuth.instance;
          final GoogleSignIn googleSignIn = GoogleSignIn();

          User? currentUser = auth.currentUser;

          // Check if the user is not null
          if (currentUser != null) {
            // Determine if the user is signed in with Google
            bool isGoogleUser = currentUser.providerData
                .any((userInfo) => userInfo.providerId == 'google.com');

            // Determine if the user is signed in anonymously
            bool isAnonymous = currentUser.isAnonymous;

            if (isGoogleUser) {
              // User is signed in with Google, so sign out from Google
              await googleSignIn.signOut();
              // Then, sign out from Firebase Auth
              await auth.signOut();
              // Navigate to AuthView
              Get.offAllNamed(AppRouter.kAuthView);
            } else if (isAnonymous) {
              // User is signed in anonymously, so delete the anonymous account
              await currentUser.delete();
              // After deletion, you may want to navigate to the AuthView or sign in the user differently
              Get.offAllNamed(AppRouter.kAuthView);
            } else {
              // If signed in with a different provider or email/password, simply sign out from Firebase Auth
              await auth.signOut();
              // Navigate to AuthView
              Get.offAllNamed(AppRouter.kAuthView);
            }
          }
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
